<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>CS:GO Lucky - Испытай удачу</title>
  <link href='<spring:url value="/resources/css/bootstrap.min.css"/>' rel="stylesheet">
  <link href='<spring:url value="/resources/css/style.css"/>' rel="stylesheet">
  <script src='<spring:url value="/resources/js/jquery.min.js"/>'></script>
  <script src='<spring:url value="/resources/js/bootstrap.min.js"/>'></script>
  <script src='<spring:url value="/resources/js/angular.min.js"/>'></script>
</head>
<body>
<div class="container ">
  <div class="row">
    <div class="page-header header-text">
      <h1>CS go</h1>
      <h3>Сорви куш</h3>
    </div>


    <div class="well well-sm text-center"><h2 style="margin-top:0px;" class="text-center">Авторизируйся, чтобы испытать удачу</h2>
      <a href="/login" class="btn btn-danger"><i class="fa fa-steam-square"></i> Войти на сайт через Steam и попробовать получить <b>$26.96</b>!</a>
    </div>
    <p class="text-center">
      Участвующие вносят скины, по достижении определенного максимального количества случайным образом выбирается победитель, который получит все скины. Шанс выигрыша зависит от стоимости внесенных скинов.
    </p>
    <div class="col-lg-12" style="margin-bottom: 40px;">
      <div class="col-lg-3 text-center">
        <h2>274</h2>
        <b>Игр проведено сегодня</b>
      </div>
      <div class="col-lg-3 text-center">
        <h2>100</h2>
        <b>Cейчас человек на сайте</b>
      </div>
      <div class="col-lg-3 text-center">
        <h2 >$ 7575</h2>
        <b>Самый крупный джекпот сегодня</b>
      </div>
      <div class="col-lg-3 text-center">
        <h2>800</h2>
        <b>Уникальных игроков сегодня</b>
      </div>
    </div>
    <div class="text-center" style="font-size:37px;">Игра #<span id="game_id">14246</span> <span id='timer'></span><br/></div>
    <div class="progress" style="height:60px;margin-top:20px;margin-bottom:20px;">
      <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id='pro1' style="width: 14%">
        <span style="font-size:300%;margin-top:20px !important;top:20px;position: relative;text-align: center;" id='pro2'>14/100</span>
      </div>
    </div>
    <h3 class="text-center" id="stat-line" style="padding-top:20px;">
      Войди на сайт и попробуй сорвать куш: <span id='sum'>$26.96</span><span id='winner'></span>
    </h3>
    <div class="text-center" id="feed">
      <div class="col-md-12 item">
        <div class="col-md-2"><img src='https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/6e/6ecac412bb23280d6eba39a3a53b9c30830704dd_full.jpg' class='ava'></div>
        <div class="col-md-7 citem">sarus CSGOLucky.ru вложил <b>P250 | Картель</b> (~ $2.22)</div>
        <div class="col-md-3"><img src='http://cdn.steamcommunity.com/economy/image/fWFc82js0fmoRAP-qOIPu5THSWqfSmTELLqcUywGkijVjZYMUrsm1j-9xgEObwgfEh_nvjlWhNzZCveCDfIBj98xqodQ2CZknz5rZrblDzZ2TRSQVPBhX_Qo4A3gNis77893GtPgpL4HeA3ovYHCYuMkZtEdG8CBDKOGZA6ru09pgaVeJ8Hb8ivo2ir3ejBdnRYZMBY' onError='this.src="http://cdn.steamcommunity.com/economy/image/fWFc82js0fmoRAP-qOIPu5THSWqfSmTELLqcUywGkijVjZYMUrsm1j-9xgEObwgfEh_nvjlWhNzZCveCDfIBj98xqodQ2CZknz5rZrblDzZ2TRSQVPBhX_Qo4A3gNis77893GtPgpL4HeA3ovYHCYuMkZtEdG8CBDKOGZA6ru09pgaVeJ8Hb8ivo2ir3ejBdnRYZMBY=";' class='ava'></div>
      </div>
    </div>
  </div>
</div>
</body>
</html>