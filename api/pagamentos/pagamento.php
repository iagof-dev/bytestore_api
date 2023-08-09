<?php

$AccessToken = new client();
$retorno = $AccessToken->login();
foreach (array_keys($_POST) as $key) {
    unset($_POST['apiuser']);
    unset($_POST['apipass']);
}

if ($api == 'pagamento' && $method == 'GET') {
    include_once("get.php");
}

if ($api == 'pagamento' && $method == 'POST') {
    include_once("post.php");
}



