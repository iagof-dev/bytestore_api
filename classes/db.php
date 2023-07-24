<?php

class DB{
    public static function connect(){
        $host = "";
        $port = "3306";
        $user = "";
        $pass = "N3rdygamerbr@123";
        $database = "n3rdy_bytestore";

        return new PDO("mysql:host={$host};dbname={$database};charset=UTF8", $user, $pass);
    }
}


?>