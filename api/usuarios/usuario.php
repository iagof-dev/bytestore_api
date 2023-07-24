<?php


if ($api == 'usuario' && $method == 'GET') {
    $db = DB::connect();
    switch ($action) {
        case 'id':
            $rs = $db->prepare("SELECT * FROM users where id={$param};");
            $rs->execute();
            $obj = $rs->fetchAll(PDO::FETCH_ASSOC);
            break;
        case 'email':
            $rs = $db->prepare("SELECT * FROM users where email='{$param}';");
            $rs->execute();
            $obj = $rs->fetchAll(PDO::FETCH_ASSOC);
            break;
        default:
            $rs = $db->prepare("SELECT * FROM users;");
            $rs->execute();
            $obj = $rs->fetchAll(PDO::FETCH_ASSOC);
            break;
    }

    echo json_encode(["DATA" => $obj]);
}



?>