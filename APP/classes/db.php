<?php
class DB
{

    private $host = "api.iagofragnan.com.br";
    private $port = "3306";
    private $user = "";
    private $pass = "";
    private $db;

    function connect($database)
    {
        return new PDO("mysql:host={$this->host};dbname={$database};charset=UTF8", $this->user, $this->pass);
    }

    function RegisterPayment($customer_id, $seller_id, $product_id, $customer_email, $collection_id, $payment_id, $status, $date){
        $db = DB::connect("n3rdy_bytestore");
        $com = "insert into payments values (default, $customer_id, $seller_id, $product_id,'$customer_email', $collection_id, '$payment_id', '$status', '$date');";
        
       
        // echo($com);
        
        $rs = $db->prepare($com);
        $rs->execute();
        $numRowsAffected = $rs->rowCount();
        return $numRowsAffected;
    }

}
