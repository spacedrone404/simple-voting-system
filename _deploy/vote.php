<?php

try {
    
    $dsn = 'pgsql:host=localhost;dbname=voting';
    $username = 'postgres';
    $password = '';
    
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // errors ignored

    $option = $_POST['id_answer'];
    $regNum = $_POST['id_number'];

    $dateTime = date('Y-m-d H:i:s');


    $stmt = $pdo->prepare("INSERT INTO votebase (id_answer, id_number, created_at) 
                           VALUES (:id_answer, :id_number, :created_at)");

    $stmt->bindParam(':id_answer', $option);
    $stmt->bindParam(':id_number', $regNum);
    $stmt->bindParam(':created_at', $dateTime);


    if ($stmt->execute()) {
        echo "Data saved!";
    } else {
        throw new Exception("Query error.");
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>