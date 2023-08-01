<?php

class DB{
    public static function connect(){
        $host = "localhost";
        $port = "3306";
        $user = "n3rdydev";
        $pass = "N3rdygamerbr@123";
        $database = "n3rdy_bytestore";

        return new PDO("mysql:host={$host};dbname={$database};charset=UTF8", $user, $pass);
    }
}
