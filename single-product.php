<?php
session_start();
error_reporting(0);
include('includes/config.php');

if (isset($_POST['review'])) {
    $userid = $_SESSION['jsmsuid'];
    $review = $_POST['reviewdescription'];
    $reviewtitle = $_POST['reviewtitle'];
    $pid = $_GET['pid'];
    $query = mysqli_query($con, "INSERT INTO tblreview(ProductID, ReviewTitle, Review, UserId) VALUES ('$pid', '$reviewtitle', '$review', '$userid')");
    if ($query) {
        echo "<script>alert('Your review was sent successfully!');</script>";
        echo "<script>window.location.href = 'index.php'</script>";
    } else {
        echo "<script>alert('Something Went Wrong. Please try again');</script>";
    }
}

if (isset($_POST['submit'])) {
    $pid = $_POST['pid'];
    $quantity = $_POST['quantity']; // Ensure this is being captured
    $userid = $_SESSION['jsmsuid'];
    $query = mysqli_query($con, "INSERT INTO orders (UserId, PId, Quantity) VALUES ('$userid', '$pid', '$quantity')");
    if ($query) {
        echo "<script>alert('Jewellery has been added to the cart');</script>";
        echo "<script>window.location.href = 'cart.php';</script>";
    } else {
        echo "<script>alert('Something went wrong.');</script>";
    }
}


if (isset($_POST['wsubmit'])) {
    $wpid = $_POST['wpid'];
    $userid = $_SESSION['jsmsuid'];
    $query = mysqli_query($con, "INSERT INTO wishlist (UserId, ProductId) VALUES ('$userid', '$wpid')");
    if ($query) {
        echo "<script>alert('Jewellery has been added to the wishlist');</script>";
        echo "<script>window.location.href = 'wishlist.php'; </script>";
    } else {
        echo "<script>alert('Something went wrong.');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Jewellery Shop Management System || Single Products</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="stylesheet" media="all" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
		h5{
			margin-left:200px;
		}
	</style>
</head>
<body>
<?php include_once('includes/header.php'); ?>
    <div id="breadcrumbs">
        <div class="container">
            <ul>
                <li><a href="index.php">Home</a></li>
                <li>Product page</li>
            </ul>
        </div>
    </div>

    <div id="body">
        <div class="container">
            <div id="content" class="full">
                <div class="product">
                    <?php
                    $pid = $_GET['pid'];
                    $ret = mysqli_query($con, "SELECT * FROM products WHERE id='$pid'");
                    while ($row = mysqli_fetch_array($ret)) {
                    ?>
                    <div class="image">
                        <img src="admin/productimages/<?php echo $row['productImage1']; ?>" alt="<?php echo $row['productName']; ?>" class="img-responsive" height="100%">
                    </div>
                    <div class="details">
                        <h1><?php echo $row['productName']; ?></h1>
                        <h4>$<?php echo $row['productPrice']; ?></h4>
                        <div class="entry">
                            <p><?php echo $row['productDescription']; ?>.</p>
                            <div class="tabs">
                                <div class="nav">
                                    <ul>
                                        <li class="active"><a href="#desc">Products Info</a></li>
                                        <li><a href="#spec">Products Reviews</a></li>
                                        <li><a href="#ret">View Reviews</a></li>
                                    </ul>
                                </div>
                                <div class="tab-content active" id="desc">
                                    <p><?php echo $row['productDescription']; ?>.</p>
                                    <p>Type of Products: <?php echo $row['type']; ?></p>
                                    <p>Weight of Products: <?php echo $row['productweight']; ?></p>
                                    <p>Gender: <?php echo $row['gender']; ?></p>
                                </div>
                                <!-- Other tabs content -->
                            </div>
                        </div>
                        <div class="actions">
                            <!-- Product Page: Form for adding product to the cart -->
                            <form method="post">
                                <input type="hidden" name="pid" value="<?php echo $row['id']; ?>">
                                <label>Quantity:</label>
                                <select id="quantity" name="quantity" onchange="updateQuantityAndTotalPrice(this)">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select> 
                                <h5>Total Price: <span id="totalPrice">$<?php echo $row['productPrice']; ?></span></h5> <br>
                                <button type="submit" name="submit" class="btn-grey">Add to Cart</button>
                            </form>

                            <script type="text/javascript">
                                function updateQuantityAndTotalPrice(selectElement) {
                                    var quantity = selectElement.value;
                                    var pricePerItem = <?php echo $row['productPrice']; ?>;
                                    var totalPrice = quantity * pricePerItem;
                                    document.getElementById('totalPrice').innerText = "$" + totalPrice.toFixed(2);
                                }
                            </script>
                        </div>
                    </div>
                    <?php } ?>
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
