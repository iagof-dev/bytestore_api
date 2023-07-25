<?php


if ($api == 'pagamento' && $method == 'GET') {
    include_once("get.php");
}

if ($api == 'pagamento' && $method == 'POST') {
    include_once("post.php");
}



