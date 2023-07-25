<?php
$com = "";
$db = DB::connect();

if(empty($_POST)){
    echo(json_encode(["DATA" => "Erro!"]));
    exit(0);
}


switch ($action) {
    case 'criar':
        $usuario = false;
        $email = false;
        $senha = false;
        $cargo = false;
        foreach (array_keys($_POST) as $key){
            if($key == 'username'){
                $usuario = true;
            }
            if($key == 'email') {
                $email = true;
            }
            if($key == 'pass') {
                $senha = true;
            }
            if($key == 'role'){
                $cargo = true;
            }
        }

        if($usuario == false || $email == false || $senha == false){
            echo(json_encode(["status" => "error", "message" => "falta argumentos"]));
            exit(0);
        }
        $com = "INSERT INTO users (";
        //echo var_dump(array_keys($_POST));
        //echo var_dump(array_values($_POST));
        foreach (array_keys($_POST) as $key){
            $com .= $key. ",";
        }
        $com = substr_replace($com ,"", -1).") values (";

        foreach (array_values($_POST) as $value){
            $com .= "'". $value. "',";
        }
        $com = substr_replace($com ,"", -1).");";
        $rs = $db->prepare($com);
        break;
}

try{
    $rs->execute();
    $obj = $rs->fetchObject();

    if($obj !== null){
        echo json_encode(["status" => "success", "message" => "Registrado com sucesso!"]);
    }
    else{
        echo json_encode(["status" => "error"]);
    }
}
catch (Exception $ex){
    echo json_encode(["status" => "error", "message" => $ex]);

}



//$rs->execute();
//$obj = $rs->fetchAll(PDO::FETCH_ASSOC);

//echo json_encode(["DATA" => $obj]);
//$rs->execute();
//$obj = $rs->fetchAll(PDO::FETCH_ASSOC);

//echo json_encode(["DATA" => $obj]);

?>