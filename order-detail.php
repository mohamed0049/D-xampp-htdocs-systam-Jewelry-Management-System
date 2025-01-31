<?php
session_start();
error_reporting(0);
include_once('includes/config.php');
if (strlen($_SESSION['jsmsuid']) == 0) {
    header('location:logout.php');
} else {
    $oid = $_GET['orderid']; // Retrieve order ID from query string
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Jewellery Shop Management System || Order Detail</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="stylesheet" media="all" href="css/style.css">
</head>
<body>
<?php include_once('includes/header.php'); ?>

<div id="breadcrumbs">
    <div class="container">
        <ul>
            <li><a href="Index.php">Home</a></li>
            <li>Order Details</li>
        </ul>
    </div>
</div>

<div id="body">
    <div class="container">
        <div id="content" class="full">
            <div class="cart-table">
                <h3>#<?php echo $oid; ?> Order Details</h3>
                <?php
                $userid = $_SESSION['jsmsuid'];
                $ret = mysqli_query($con, "SELECT OrderTime, Status FROM tblorderaddresses WHERE UserId='$userid' AND Ordernumber='$oid'");
                while ($result = mysqli_fetch_array($ret)) {
                ?>
                <p><b>Order #</b><?php echo $oid; ?></p>
                <p><b>Order Date: </b><?php echo $result['OrderTime']; ?></p>
                <p><b>Order Status: </b><?php echo $result['Status'] ? $result['Status'] : "Not Accepted Yet"; ?></p>
                <?php } ?>
                <table>
                    <tr>
                        <th>Order ID</th>
                        <th class="items">Items</th>
                        <th class="price">Price</th>
                        <th class="qnt">Quantity</th>
                        <th class="total">Total</th>
                        <th>Payment Method</th>
                    </tr>
                    <?php 
                    $query = mysqli_query($con, "SELECT p.id, p.productName, p.shippingCharge, p.productDescription, p.productPrice, p.productImage1, o.Quantity, o.PaymentMethod FROM orders o JOIN products p ON p.id = o.PId WHERE o.UserId = '$userid' AND o.OrderNumber = '$oid'");
                    $totalPrice = 0;
                    $totalShipping = 0;
                    while ($row = mysqli_fetch_array($query)) {
                        $itemTotal = $row['productPrice'] * $row['Quantity'];
                        $totalPrice += $itemTotal;
                        $totalShipping += $row['shippingCharge'];
                    ?>
                    <tr>
                        <td><?php echo $row['OrderNumber']; ?></td>
                        <td class="items">
                            <div class="image">
                                <img src="admin/productimages/<?php echo $row['productImage1']; ?>" height="150" alt="<?php echo htmlspecialchars($row['productName']); ?>">
                            </div>
                            <h3><a href="#"><?php echo $row['productName']; ?></a></h3>
                            <p><?php echo $row['productDescription']; ?></p>
                        </td>
                        <td class="price">$<?php echo number_format($row['productPrice'], 2); ?></td>
                        <td class="qnt"><?php echo $row['Quantity']; ?></td>
                        <td class="total">$<?php echo number_format($itemTotal, 2); ?></td>
                        <td><?php echo $row['PaymentMethod']; ?></td>
                    </tr>
                    <?php } ?>
                </table>
            </div>
            <div class="total-count">
                <h4>Subtotal: $<?php echo number_format($totalPrice, 2); ?></h4>
                <p>+ Delevery: $<?php echo number_format($totalShipping, 2); ?></p>
                <h3>Total to pay: <strong>$<?php echo number_format($totalPrice + $totalShipping, 2); ?></strong></h3>
                <a href="javascript:void(0);" onClick="popUpWindow('cancelorder.php?oid=<?php echo $oid;?>');" title="Cancel this order" style="color:white" class="btn-grey">Cancel this order </a>
            </div>
        </div>
    </div>
</div>

<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+600+',height='+600+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>

<?php include_once('includes/footer.php'); ?>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script>window.jQuery || document.write("<script src='js/jquery-1.11.1.min.js'>\x3C/script>")</script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
</body>
</html>
<?php } // Closing the else block ?>




