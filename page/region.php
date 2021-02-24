<?php 
require_once 'Model.php'; 

$db = new Model(); // Создание подключения к БД
$region  = Model::getRegion(); // Выбрать все записи с регионами из таблицы Region, для отображения в поле формы
$courier = Model::getCourier();// Выбрать все записи с регионами из таблицы Region, для отображения в поле формы

?>

 <div class="container">
 <div class="row main-form">
 <form id='ajaxFormRegion' class="" method="post" action="">
 
  <h4 class="cols-sm-2 control-label">Регистрация поездки</h4>

<!-- Регионы -->
 <div class="form-group">
 <label for="username" class="cols-sm-2 control-label">Регионы</label>
 <div class="cols-sm-10">
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-building-o fa" aria-hidden="true"></i></span>
 <select class="form-control" name="region" id="region">
 	<?php 
 	$countRegion = count($region);
 	for ($i=0; $i < $countRegion; $i++) { 
 		echo "<option>";
 		echo $region[$i];
 		echo "</option>";
 	}
 	?>
 </select>
 </div>
 </div>
 </div>

 <div class="form-group">
 <label for="email" class="cols-sm-2 control-label">Дата выезда из Москвы</label>
 <div class="cols-sm-10">
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-clock-o fa" aria-hidden="true"></i></span>
 <input type="date" class="form-control" name="date" id="date" placeholder="Enter data"/>
 </div>
 </div>
 </div>

 <div class="form-group">
 <label for="username" class="cols-sm-2 control-label">Курьеры</label>
 <div class="cols-sm-10">
 <div class="input-group">
 <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
 <select class="form-control" name="courier" id="courier">
 	<?php 
 	$countCourier = count($courier);
 	for ($i=0; $i < $countCourier; $i++) { 
 		echo "<option>";
 		echo $courier[$i];
 		echo "</option>";
 	}
 	?>
 </select>
 </div>
 </div>
 </div>

 <div class="form-group ">
 	<button type="button" name='regionButton' id="regionButton" class="btn btn-success btn-lg btn-block login-button">
 		Регистрация
 	</button>
 </div>
 
 </form>
 </div>
 </div>

<br>
<div id="result">
	<h4>Результат</h4>
</div>

