<?php
session_start();
error_reporting(0);
include_once('includes/config.php');
if (strlen($_SESSION['jsmsuid']) == 0) {
    header('location:logout.php');
} else {
    // Code for deleting product from cart
    if (isset($_GET['delid'])) {
        $rid = intval($_GET['delid']);
        $query = mysqli_query($con, "DELETE FROM orders WHERE id='$rid'");
        echo "<script>alert('Data deleted');</script>";
        echo "<script>window.location.href = 'cart.php'</script>";
    }

    $userid = $_SESSION['jsmsuid'];
    $query = mysqli_query($con, "SELECT products.id, products.productName, products.shippingCharge, products.productDescription, products.productPrice, products.productImage1, orders.id AS orderID, orders.Quantity FROM orders JOIN products ON products.id = orders.PId WHERE orders.UserId='$userid' AND orders.IsOrderPlaced IS NULL");
    $num = mysqli_num_rows($query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Jewellery Shop Management System || Cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="stylesheet" media="all" href="css/style.css">
</head>
<body>
    <?php include_once('includes/header.php'); ?>
    <div id="breadcrumbs">
        <div class="container">
            <ul>
                <li><a href="dashboard.php">Home</a></li>
                <li>Cart</li>
            </ul>
        </div>
    </div>

    <div id="body">
        <div class="container">
            <div id="content" class="full">
                <div class="cart-table">
                    <table>
                        <tr>
                            <th class="items">Items</th>
                            <th class="price">Price</th>
                            <th class="qnt">Quantity</th>
                            <th class="delivery">Delivery</th>
                            <th class="total">Total</th>
                            <th class="delete">Delete</th>
                        </tr>
                        <?php 
                        $subtotal = 0;
                        $shippingTotal = 0;
                        $grandTotal = 0;
                        if ($num > 0) {
                            while ($row = mysqli_fetch_array($query)) {
								$itemPrice = $row['productPrice'];
								$itemQuantity = $row['Quantity'];
								$itemTotal = $itemPrice * $itemQuantity;
								$subtotal += $itemTotal;
								$totalWithShipping = $itemTotal + $row['shippingCharge'];
								$shippingTotal += $row['shippingCharge'];
								$grandTotal += $totalWithShipping;
                        ?>
                        <tr>
                            <td class="items">
                                <div class="image">
                                    <img src="admin/productimages/<?php echo $row['productImage1'];?>" height="150" alt="">
                                </div>
                                <h3><a href="#"><?php echo $row['productName'];?></a></h3>
                                <p><?php echo $row['productDescription'];?>.</p>
                            </td>
                            <td class="price">$<?php echo $row['productPrice'];?></td>
                            <td class="qnt"><?php echo $row['Quantity'];?></td>
                            <td class="delivery">$<?php  echo $shipping=$row['shippingCharge'];?></td>
                            <td class="total">$<?php echo $totalWithShipping;?></td>
                            <td class="delete"><a href="cart.php?delid=<?php echo $row['orderID'];?>" class="ico-del" onclick="return confirm('Do you really want to delete?');"></a></td>
                        </tr>
                        <?php } } else { ?>
                        <tr>
                            <td colspan="5" style="text-align:center;color:red;font-size:20px;">Cart is empty</td>
                        </tr>
                        <?php } ?>
                    </table>
                </div>
                <?php if($num > 0) { ?>
                <div class="total-count">
                    <h4>Subtotal: $<?php echo $subtotal;?></h4>
                    <p>+ Delivery: $<?php echo $shippingTotal;?></p>
                    <h3>Total to pay: <strong>$<?php echo $grandTotal;?></strong></h3>
                    <a href="checkout.php" class="btn-grey">Finalize and pay</a>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>

    <?php include_once('includes/footer.php'); ?>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
<?php } ?>
