<?php
$db_request = false;
$com = "";
$message = "";



switch ($action) {

    case "criar":
        require_once(__DIR__ . "/../../classes/mercado_pago.php");

        $data = [];

        foreach ($_POST as $key => $value) {
            $data[$key] = $value;
        }
        
        $mp = new mercado_pago();
        $mp->createPayment($data['product_id'], $data['title'], $data['description'], $data['unit_price'], $data['seller_id'], $data['customer_id'], $data['customer_email'], $data['category_id'], $data['quantity']);
        break;
}


if ($db_request) {

    try {
        $rs = $db->prepare($com);
        $rs->execute();
        $numRowsAffected = $rs->rowCount();
        if ($numRowsAffected > 0) {
            if ($message != "") {
                echo json_encode(["status" => "success", "message" => $message]);
                exit();
            }
            echo json_encode(["status" => "success", "message" => $rs->fetchAll(PDO::FETCH_ASSOC)]);
        } else {
            echo json_encode(["status" => "error", "message" => "Nenhuma alteração foi feita"]);
        }
    } catch (Exception $ex) {
        echo json_encode(["status" => "error", "message" => $ex]);
    }
}
