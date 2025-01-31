<?php
session_start();
error_reporting(0);
include_once('includes/config.php');
if (strlen($_SESSION['jsmsuid']) == 0) {
    header('location:logout.php');
} else {

    if (isset($_POST['placeorder'])) {
        // Collect address and payment information from form
        $street = $_POST['streename'];
        $area = $_POST['area'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $paymode = $_POST['paymode'];
        $userid = $_SESSION['jsmsuid'];
        $orderno = mt_rand(100000000, 999999999);

        // Update orders to set order details
        $query = "UPDATE orders SET OrderNumber='$orderno', IsOrderPlaced='1', PaymentMethod='$paymode' WHERE UserId='$userid' AND IsOrderPlaced is null;";
        $query .= "INSERT INTO tblorderaddresses(UserId, Ordernumber, Flatnobuldngno, StreetName, Area, Landmark, City, Zipcode, Phone, Email, PaymentMethod) VALUES ('$userid', '$orderno', '$fnaobno', '$street', '$area', '$lndmark', '$city', '$zipcode', '$phone', '$email', '$paymode');";
        $result = mysqli_multi_query($con, $query);

        if ($result) {
            echo '<script>alert("Your order placed successfully. Order number is ' . $orderno . '")</script>';
            echo "<script>window.location.href = 'my-orders.php'</script>";
        }
    }

    // Retrieve cart items
    $userid = $_SESSION['jsmsuid'];
    $query = mysqli_query($con, "SELECT products.id, products.productName, products.shippingCharge, products.productPrice, orders.Quantity FROM orders JOIN products ON products.id = orders.PId WHERE orders.UserId = '$userid' AND orders.IsOrderPlaced IS NULL");
    $num = mysqli_num_rows($query);
    $subtotal = 0;
    $shippingTotal = 0;
    $grandTotal = 0;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Jewellery Shop Management System || Checkout</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="stylesheet" media="all" href="css/style.css">
</head>
<body>
<?php include_once('includes/header.php'); ?>
<div id="breadcrumbs">
    <div class="container">
        <ul>
            <li><a href="dashboard.php">Home</a></li>
            <li>Checkout</li>
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
                        <th class="total">Delivery</th>
                        <th class="qnt">Quantity</th>
                        <th class="total">Total</th>
                    </tr>
					<?php
if ($num > 0) {
    while ($row = mysqli_fetch_array($query)) {
        $itemTotal = $row['productPrice'] * $row['Quantity'];
        $totalWithShipping = $itemTotal + $row['shippingCharge'];
        $subtotal += $itemTotal;
        $shippingTotal += $row['shippingCharge'];
        $grandTotal += $totalWithShipping;
?>
<tr>
    <td class="items">
	<div class="image">
	<tr>
    <td class="items">
    <div class="image">
	<img src="productimages/<?php echo $row1['productImage1'];?>" width="60" height="40" alt="<?php echo $row1['productName']?>">
    </div>
    <h3><a href="#"><?php echo htmlspecialchars($row['productName']); ?></a></h3>
    <p><?php echo htmlspecialchars($row['productDescription']); ?></p>
</td>
<td class="price">$<?php echo number_format($row['productPrice'], 2); ?></td>
<td class="total">$<?php echo number_format($row['shippingCharge'], 2); ?></td>
<td class="qnt"><?php echo (int)$row['Quantity']; ?></td>
<td class="total">$<?php echo number_format($totalWithShipping, 2); ?></td>

</tr>

<?php
    }
} else {
    echo '<tr><td colspan="5" style="text-align:center;">Your Cart is Empty</td></tr>';
}
?>

                </table>
            </div>
			<div class="row">
					<div class="col-lg-6">
                    <div class="section-content">
                        <h5 class="section-content__title">Billing Details</h5>
                    </div>
                    <form action="#" method="post" class="form-box">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-box__single-group">
                                    <label for="form-last-name">Street Name *</label>
                                    <input type="text" name="streename"  class="form-control" required="true">
                                </div>
                            </div>
                            
                          
                            <div class="col-md-12">
                                <div class="form-box__single-group">
                                    <label for="form-address-1">Area</label>
                                    <input type="text" name="area"  class="form-control" >
                                   
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-box__single-group">
                                    <label for="form-phone">*Phone</label>
                                    <input type="text" id="form-phone" class="form-control" name="phone" maxlength="10" pattern="[0-9]+">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-box__single-group">
                                    <label for="form-email">*Email Address</label>
                                    <input type="email" id="form-email" class="form-control" name="email">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-box__single-group">
                                    <label for="form-email">*Payment Method</label>
                                    <select class="form-control" name="paymode" required>
                                    	<option value="Cash on Delivery">Cash on Delivery</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                  
				</div>
            <div class="total-count">
                <h4>Subtotal: $<?php echo $subtotal; ?></h4>
                <p>+ Delivery: $<?php echo $shippingTotal; ?></p>
                <h3>Total to pay: <strong>$<?php echo $grandTotal; ?></strong></h3>
                <form method="post">
                    <button class="btn btn-primary" type="submit" name="placeorder">PLACE ORDER</button>
                </form>
            </div>
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
