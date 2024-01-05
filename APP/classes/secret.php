<?php

class config{
  private $informations = [
    "mp_secret_token" => "",
    "db_ip" => "",
    "db_port" => "3306",
    "db_user" => "",
    "db_pass" => "",
    "Notication_URL" => "https://api2.iagofragnan.com.br/BTS/hook/notification.php"
  ];

  function get(){
    return $this->informations;
  }
}
