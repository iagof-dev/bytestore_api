<?php


if ($api == 'produto' && $method == 'GET') {
    $db = DB::connect();
    switch ($action) {
        case 'id':
            $rs = $db->prepare("SELECT * FROM products where id={$param};");
            break;
        case 'owner':
            $rs = $db->prepare("SELECT * FROM products where owner='{$param}';");
            break;
        default:
            $rs = $db->prepare("SELECT * FROM products;");
            break;
    }
    $rs->execute();
    $obj = $rs->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode(["DATA" => $obj]);
}



?>