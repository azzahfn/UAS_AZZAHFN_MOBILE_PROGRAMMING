<?php


    require_once('connect.php');

    $query = "SELECT * FROM film";
    $sql   = mysqli_query($db_connect, $query);
    
    $result = array();
    
    if ($sql) {
        $result = array();
        while($row = mysqli_fetch_array($sql)){
            array_push($result, array(
                'id' => $row['id'],
                'judul' => $row['judul'],
                'kategori' => $row['kategori'],
            ));
        }

        echo json_encode( array('bioskop' => $result));
    }


?>
