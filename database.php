<?php 

    // class Database {
        

    //     function __construct()
    //     {
    //         $host = "localhost";
    //         $user = "root";
    //         $pass = "";
    //         $db = "db_catalog";
    //         $koneksi = "";

    //         function __construct() {
    //             $this->$koneksi = mysqli_connect($this->$host, $this->user, $this->$pass, $this->$db);
    //             if(mysqli_connect_errno()) {
    //                 echo "Koneksi database gagal. " . mysqli_connect_error();
    //             } else {
    //                 echo "Koneksi berhasil";
    //             }
    //         }
    //     }



    // }


    $conn = mysqli_connect("localhost", "root", "", "db_catalog") or die(mysqli_error($conn));

?>