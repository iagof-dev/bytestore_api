<?php
header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');


date_default_timezone_set("America/Sao_Paulo");

if (isset($_GET['path'])) {
    $path = explode("/", $_GET['path']);
} else {
    echo ("Caminho não encontrado");
}

if (isset($path[0])) {
    $api = $path[0];
}
if (isset($path[1])) {
    $action = $path[1];
}
if (isset($path[2])) {
    $param = $path[2];
}

if ($api == '') {
    echo json_encode(["data" => "Especifique a função"]);
}

if ($action == '') {
    echo json_encode(["data" => "Especifique a ação"]);
}

$method = $_SERVER['REQUEST_METHOD'];

include_once("classes/db.php");

include_once("api/usuarios/usuario.php");

?>