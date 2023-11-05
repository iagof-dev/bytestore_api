<?php

require_once(__DIR__ . "/../vendor/autoload.php");

use MercadoPago\Client\Preference\PreferenceClient;
use MercadoPago\Client\Common\RequestOptions;
use MercadoPago\Exceptions\MPApiException;
use MercadoPago\MercadoPagoConfig;

class mercado_pago
{

    private $client;
    function __construct()
    {
        MercadoPagoConfig::setAccessToken("");
        $this->client = new PreferenceClient();
    }

    function createPayment($product_id,$title, $desc, $unit_price, $seller_id, $customer_id,$customer_email, $category_id = 0, $qnt = 1)
    {

        try {

            $request = [
                "items" => [
                    [
                        "id" => 0,
                        "title" => $title,
                        "quantity" => (int)$qnt,
                        "currency_id" => "R$",
                        "unit_price" => (double)$unit_price,
                        "description" => $desc
                    ]
                ],
                "payer" => [
                    "email" => $customer_email
                ]
            ];

            $preference = $this->client->create($request);
            //retornar: link
            //sandbox_init_point
            //init_point
            
            // registrar no banco de dados:
            //  client_id
            //  payer_email
            //  status
            //  external_reference
            $db = new DB();


            $dt = new DateTime($preference->date_created);
            $date = $dt->format('Y-m-d H:i:s');
            $db->RegisterPayment($customer_id, $seller_id, $product_id, $customer_email, $preference->collector_id, $preference->id, "created", $date);

            echo json_encode(["status" => "success", "data" => ["url" => $preference->init_point, "url_sandbox" => $preference->sandbox_init_point]]);
        } catch (MPApiException $e) {
            echo var_dump($e->getApiResponse()->getContent());
        } catch (\Exception $e) {
            echo $e->getMessage();
        }
    }
}
