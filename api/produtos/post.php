<?php
$db = DB::connect();

$com = "";

switch ($action) {
    case "criar":
        $com = "insert into products (";

        foreach(array_keys($_POST) as $key){
            $com .= $key. ",";
        }
        $com = substr_replace($com ,"", -1);
        $com .= ") values (";
        foreach(array_values($_POST) as $value){
            $com .= "'". $value. "',";
        }
        $com = substr_replace($com ,"", -1);
        $com .= ");";
        break;

    case "modificar":
        //localhost/BTS-API/produto/modificar/ID/
        $com = "update products set ";
        $id = 0;
        foreach (array_combine(array_keys($_POST), array_values($_POST)) as $key => $value){
            if(strtolower($key) == 'id'){
                $id = $value;
            }
            else{
                $com .= $key."='".$value."' ";
            }
        }
        $com .= "where id=". $id .";";
        break;

    case "deletar":
        //localhost/BTS-API/produto/deletar/
        $id = 0;
        foreach (array_combine(array_keys($_POST), array_values($_POST)) as $key => $value){
            if(strtolower($key) == 'id'){
                $com = "delete from products where id='{$value}';";
            }
        }
        break;
}



echo ($com);