<?php
switch ($action) {
    case 'listar':
        $rs = $db->prepare("select * from category;");
        break;
}

$rs->execute();
$obj = $rs->fetchAll(PDO::FETCH_ASSOC);


if (empty($obj)) {
    echo json_encode(["status" => "error", "DATA" => "Não há categorias!"]);
} else {
    echo json_encode(["status" => "success", "DATA" => $obj]);
}
