<?php

require_once '../Model.php'; 

/*
    Поля с регионами и поля с курьерами берутся из БД, и заносятся в html форму как поле с <select> 
    по этому их значения нельзя подделать, 
*/
if (isset($_POST["region"])) { 

    /* Формируем массив для результата*/
    $result = array(
        'message' => 'Запись внесена в БД',
    	'region'  => $_POST["region"],
    	'date'    => $_POST["date"],
    	'courier' => $_POST["courier"]
    ); 

    $db = new Model();// Соед-е с БД

    /* 3 таблицы взаимосвяз-е по внешним полям, я вношу именно id записей а не названия регионов,
    и имена полей, чтобы создать эти связи */
    $courier = Model::getIdCourier($result["courier"]);// Получить id курьера
    $region  = Model::getIdRegion($result["region"]);  // Получить id региона

    // Внести запись в табл Travel о предстоящей поездке 
    $arrive = Model::setTravel($region, $result["date"], $courier, $result["region"]);
    $result['arrive'] = $arrive;
    echo json_encode($result); 
}

