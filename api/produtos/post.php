<?php
$db = DB::connect();

$com = "";

switch ($action) {

    case "criar":

        break;

    case "modificar":

        break;

    case "deletar":
        $com = "delete from products where id='{$param}'";
        break;


}