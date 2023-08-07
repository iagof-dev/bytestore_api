<?php

class client
{

    public function login()
    {
        $db = DB::connect("n3rdyapi");

        $com = "select * from usuarios where usuario='" . $_POST['apiuser'] . "' and senha='" . $_POST['apipass'] . "';";

        $rs = $db->prepare($com);
        $rs->execute();
        $obj = $rs->fetchAll(PDO::FETCH_ASSOC);
        $numRowsAffected = $rs->rowCount();
        if ($numRowsAffected > 0) {
            return true;
        } else {
            echo (json_encode(["status" => "error", "message" => "Usuário ou senha incorretos!"]));
            return false;
            exit();
        }
    }
}
