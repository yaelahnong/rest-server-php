<?php 

    require 'database.php';

    function getRegisteredAPI() {
        return ["abcd", "edsa", "bcee"];
    }

        if(isset($_GET['keyword'])) {
            $keyword = $_GET['keyword'];

            if(isset($_GET['api_key'])) {
                $apiKey = $_GET['api_key'];
                if(in_array($apiKey, getRegisteredAPI())) {
                    $result = mysqli_query($conn, "SELECT * FROM products WHERE name LIKE '%{$keyword}%'");

                    if(mysqli_num_rows($result)) {
                        $products = [];
                        while($row = mysqli_fetch_assoc($result)) {
                            $product = [
                                "id" => $row['id'],
                                "name" => $row['name'],
                                "image" => $row['image'],
                                "price" => $row['price'],
                                "created_at" => $row['created_at'],
                                "updated_at" => $row['updated_at']
                            ];
                            $products[] = $product;
                        }
                        $res['success'] = true;
                        $res['message'] = $products;

                        header('content-type: application/json');
                        echo json_encode($res);
                    }
                } else {
                    echo "invalid key";
                }
            } else {
                echo "unallowed request";
            }
        }





?>