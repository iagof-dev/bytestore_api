<?php

$AccessToken = new client();
$retorno = $AccessToken->login();

if($retorno != true){
    exit();
}
foreach (array_keys($_POST) as $key) {
    unset($_POST['apiuser']);
    unset($_POST['apipass']);
}

if ($api == 'usuario' && $method == 'GET') {
    include_once("get.php");
}
if ($api == 'usuario' && $method == 'POST') {
    include_once("post.php");
}
