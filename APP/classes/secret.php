<?php

class config{
  private $informations = [
    "mp_secret_token" => "",
    "db_ip" => "api.iagofragnan.com.br",
    "db_port" => "3306",
    "db_user" => "",
    "db_pass" => "",
    "Notication_URL" => ""
  ];

  function get(){
    return $this->informations;
  }
}
