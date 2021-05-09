<?php 
    // prepare curl
    $curl = curl_init();

    // set url
    curl_setopt($curl, CURLOPT_URL, "localhost/rest-server-php/products.php?api_key=abcd");

    // return the transfer as string
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

    // $output contains the output string
    $output = curl_exec($curl);

    // close curl
    curl_close($curl);

    $catalog = json_decode($output);

    // var_dump($catalog);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traditional Beds Archive | Atlantic Furniture</title>
    <link rel="stylesheet" href="css/style.css?<?php echo date('Y-m-d H:i:s'); ?>">
</head>
<body>
    
    <header>
        <nav>
            <div class="container">
                <div class="navbar-brand">
                    <a href="#"><img src="img/logo.png" class="logo" alt="logo"></a>
                </div>
                <div class="navbar-nav">
                    <a href="#">All Products</a>
                </div>
            </div>
        </nav>
    </header>

    <div class="wrapper">
        <div class="container">
            <?php foreach($catalog->message as $row): ?>
            <div class="product">
                <div class="product-image"><img src="img/<?= $row->image; ?>"></div>
                <div class="product-description">
                    <div class="name"><?= $row->name; ?></div>
                    <div class="pricing">Rp. <?php echo number_format($row->price); ?></div>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>

    <footer>
        <p>2021 ATLANTIC FURNITURE INC.</p>
    </footer>
    
</body>
</html>