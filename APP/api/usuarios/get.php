<?php
$db = DB::connect("n3rdy_bytestore");
switch ($action) {
    case 'id':
        $rs = $db->prepare("SELECT * FROM users where id={$param};");
        break;
    case 'email':
        $rs = $db->prepare("SELECT * FROM users where email='{$param}';");
        break;
    case 'name':
        $rs = $db->prepare("SELECT * FROM users where username='{$param}';");
        break;
    default:
        $rs = $db->prepare("SELECT * FROM users;");
        break;
}
$rs->execute();
$obj = $rs->fetchAll(PDO::FETCH_ASSOC);

echo json_encode(["DATA" => $obj]);



?>