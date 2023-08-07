<?php

class DB{
    public static function connect($database){
        $host = "api.iagofragnan.com.br";
        $port = "3306";
        $user = "n3rdyapi";
        $pass = "";
        return new PDO("mysql:host={$host};dbname={$database};charset=UTF8", $user, $pass);
    }
}
