<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="Cart.css">
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <!------ Include the above in your HEAD tag ---------->
  <title>Document</title>
  <link rel="stylesheet" href="Cart.css">
</head>

<body>
  <div>
    <div id="sb-site">

      <div class="br-header">
        <div id="top-nav" class="hidden-xs">
          <div class="container">
            <ul class="clearfix">
              <li><a href="#"><i class="fa fa-bus" aria-hidden="true"></i> Trang chủ</a></li>
              <li><a href="#"><i class="fa fa-truck" aria-hidden="true"></i>Lịch trình xe chạy</a></li>
              <li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i>Mua vé</a></li>


              <li class="pull-right diff"><a href="#"><span class="hidden-xs">Đăng nhập</span></a></li>
              <li class="pull-right">
                <a target="_blank" href="#">
                  <i class="fa fa-facebook-square"></i> Đăng ký
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div id="busApp" ng-app="ngBus" fs="TPHCM" ts="DALAT">

        <div flash-message="5000">
          <div role="alert" ng-show="hasFlash" class="alert  alert- alert-dismissible ng-hide alertIn alertOut">
            <span dynamic="flash.text"></span>
            <button type="button" class="close" close-flash="">
            </button>
          </div>
        </div>
        <!-- ngView:  -->
        <div ng-view="" class="" style="">
          <section id="body-content">
            <div id="steps" class="container">
              <ul class="list-step clearfix">
                <li>Chọn tuyến <span></span> </li>
                <li class="active first">Chọn ghế <span></span></li>
                <li>Thông tin khách hàng <span></span></li>
                <li>Thanh toán <span></span></li>
              </ul>
            </div>
            <div id="content-steps" class="container">
              <div class="row">
                <div class="col-sm-4 col-xs-12 col-ms-12">
                  <div class="panel">
                    <p class="text-center text-primary text-uppercase">TP.Hồ Chí Minh - Đà Lạt ngày <span
                        ng-bind-html="step1Info.departureDate|svcDate">25-10-2019</span></p>
                    <form id="form-steps" name="form"
                      ng-submit="form.$valid ? next(form.$valid): showError(form.$error)" novalidate=""
                      class="ng-pristine ng-invalid ng-invalid-min ng-valid-max ng-valid-required">
                      <fieldset>
                        <div class="row hidden">
                          <input type="number" ng-model="selectSeatNum" name="selectSeatNum" value="0" min="1" max="10"
                            required=""
                            class="ng-pristine ng-untouched ng-invalid ng-invalid-min ng-valid-max ng-valid-required">
                        </div>
                        <div class="row">
                          <div class="col-lg-12">
                            <div class="form-group">
                              <label for="">Chọn tuyến xe</label>
                              <div class="controls" ng-repeat="schedule in schedules" ng-animate="'animate'"
                                ng-if="schedules.length > 0" style="">
                                <i class="fa fa-bus text-primary"></i>
                                <p class="form-control"
                                  ng-class="form.$dirty ? (form.selectRoute.$valid ? 'valid': 'invalid'): ''">
                                  <span class="f-left">Le Hong Phong ⇒ Da Lat</span>
                                  <span class="f-right">
                                    <span ng-bind-html="info.price|svcMoney">250.000<sup>₫</sup></span>&nbsp;
                                    <input type="radio" ng-model="info.selectRoute" name="selectRoute"
                                      ng-value="schedule" required=""
                                      class="ng-pristine ng-untouched ng-valid ng-valid-required"
                                      value="[object Object]">
                                  </span>
                                </p>
                              </div>
                              <div class="controls" ng-repeat="schedule in schedules" ng-animate="'animate'"
                                ng-if="schedules.length > 0">
                                <i class="fa fa-bus text-primary"></i>
                                <p class="form-control"
                                  ng-class="form.$dirty ? (form.selectRoute.$valid ? 'valid': 'invalid'): ''">
                                  <span class="f-left">BX Mien Dong ⇒ Da lat</span>
                                  <span class="f-right">
                                    <span ng-bind-html="info.price|svcMoney">250.000<sup>₫</sup></span>&nbsp;
                                    <input type="radio" ng-model="info.selectRoute" name="selectRoute"
                                      ng-value="schedule" required=""
                                      class="ng-pristine ng-untouched ng-valid ng-valid-required"
                                      value="[object Object]">
                                  </span>
                                </p>
                              </div>
                              <div class="controls" ng-repeat="schedule in schedules" ng-animate="'animate'"
                                ng-if="schedules.length > 0">
                                <i class="fa fa-bus text-primary"></i>
                                <p class="form-control"
                                  ng-class="form.$dirty ? (form.selectRoute.$valid ? 'valid': 'invalid'): ''">
                                  <span class="f-left">BX An Suong ⇒ Da Lat</span>
                                  <span class="f-right">
                                    <span ng-bind-html="info.price|svcMoney">250.000<sup>₫</sup></span>&nbsp;
                                    <input type="radio" ng-model="info.selectRoute" name="selectRoute"
                                      ng-value="schedule" required=""
                                      class="ng-pristine ng-untouched ng-valid ng-valid-required"
                                      value="[object Object]">
                                  </span>
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-12">
                            <div class="form-group">
                              <label for="">Chọn giờ khởi hành</label>
                              <!-- ngIf: timeTables.length > 0 -->
                              <div class="controls" ng-if="timeTables.length > 0" style="">
                                <i class="fa fa-clock-o text-primary"></i>
                                <select class="form-control ng-pristine ng-untouched ng-valid ng-valid-required"
                                  ng-class="form.$dirty ? (form.departureTime.$valid ? 'valid': 'invalid'): ''"
                                  name="departureTime" ng-model="info.departureTime"
                                  ng-options="option.DisplayText for option in timeTables track by option.Id"
                                  required="">
                                  <option value="3034414" label="01:00 (Limousine)" selected="selected">01:00
                                    (Limousine)</option>
                                  <option value="3034445" label="02:00 (Limousine)">02:00 (Limousine)</option>
                                  <option value="3034476" label="03:30 (Limousine)">03:30 (Limousine)</option>
                                  <option value="3033575" label="05:00 (Limousine)">05:00 (Limousine)</option>
                                  <option value="3033606" label="06:00 (Limousine)">06:00 (Limousine)</option>
                                  <option value="3033637" label="07:00 (Limousine)">07:00 (Limousine)</option>
                                  <option value="3033668" label="08:00 (Limousine)">08:00 (Limousine)</option>
                                  <option value="3033699" label="09:00 (Limousine)">09:00 (Limousine)</option>
                                  <option value="3033730" label="10:00 (Limousine)">10:00 (Limousine)</option>
                                  
                                </select>

                              </div><!-- end ngIf: timeTables.length > 0 -->
                              <!-- ngIf: timeTables.length == 0 && getTimeTableComplete === true -->
                            </div>
                          </div>
                        </div>

                        <div class="row">
                          <div class="col-lg-12">
                            <div class="form-group">
                              <label for="">Chọn điểm lên xe</label>
                              <!-- ngIf: pickUpPoints.length > 0 -->
                              <div class="controls" ng-if="pickUpPoints.length > 0" style="">
                                <i class="fa fa-map-marker text-primary"></i>
                                <select class="form-control ng-pristine ng-untouched ng-valid ng-valid-required"
                                  ng-class="form.$dirty ? (form.pickUpPoint.$valid ? 'valid': 'invalid'): ''"
                                  name="pickUpPoint" ng-model="info.pickUpPoint"
                                  ng-options="option.Address for option in pickUpPoints track by option.Id" required="">
                                  <option value="1260073"
                                    label="VP Đề Thám: 272 - 274 Đề Thám, P.Phạm Ngũ Lão , Q.1 , TP.HCM"
                                    selected="selected">VP Đề Thám: 272 - 274 Đề Thám, P.Phạm Ngũ Lão , Q.1 , TP.HCM
                                  </option>
                                  <option value="1260190"
                                    label="VP BX Miền Tây: 395 Kinh Dương Vương , P.An Lạc , Q.Bình Tân , TP.HCM">VP BX
                                    Miền Tây: 395 Kinh Dương Vương , P.An Lạc , Q.Bình Tân , TP.HCM</option>
                                  
                                </select>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="form-section">
                          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ms-12">
                            <a ng-click="prev()" class="btn btn-primary btn-flat"><i
                                class="fa fa-arrow-left icon-flat bg-btn-actived"></i> Quay lại</a>
                            <button type="submit" class="btn btn-success btn-flat"><i
                                class="fa fa-arrow-right icon-flat bg-success"></i>Tiếp tục</button>
                          </div>
                        </div>
                      </fieldset>

                    </form>
                  </div>
                  


                </div>
                <div class="col-sm-8 col-xs-12 col-ms-12">

                  <div class="panel">

                    <div>
                      <table class="table">
                        <tbody>
                          <tr>
                            <td>
                              <strong class="text-uppercase">Số ghế:</strong>
                              <span ng-show="info.selectSeats.length > 0" class="ng-hide">
                                <!-- ngRepeat: s in info.selectSeats -->
                              </span><span ng-show="info.selectSeats.length == 0" class="">Chưa chọn ghế</span>

                            </td>
                            <td class="text-right">
                              <strong class="text-uppercase">Tổng tiền:</strong>
                              (<span class="text-primary" style="font-weight: 600;"
                                ng-bind-html="info.total|svcMoney">0<sup>₫</sup></span>)
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>

                    <div ng-switch="" on="info.departureTime.Kind" ng-if="seats.length > 0" class="" style="">
                     
                      <div ng-switch-when="Limousine">
                        <div class="row">
                          
                          <!-- ngRepeat: (k,v) in seats track by $index -->
                          <div class="col-xs-12 col-sm-6" ng-repeat="(k,v) in seats track by $index">
                            <table class="table grid-seat">
                              <thead>
                                <tr>
                                  <th colspan="5">
                                    <p class="text-center text-uppercase  text-primary">Tầng 1</p>
                                  </th>
                                </tr>
                              </thead>
                              <tbody>
                                <!-- ngRepeat: row in v track by $index -->
                                <tr ng-repeat="row in v track by $index" ng-animate="'animate'">                                  
                                  <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                  <div class="seat choosed" ng-switch-when="1"></div>
                                </td><!-- end ngRepeat: s in row  track by $index -->
                           
                              </tbody>
                            </table>
                          </div><!-- end ngRepeat: (k,v) in seats track by $index -->
                          <div class="col-xs-12 col-sm-6" ng-repeat="(k,v) in seats track by $index">
                            <table class="table grid-seat">
                              <thead>
                                <tr>
                                  <th colspan="5">
                                    <p class="text-center text-uppercase  text-primary">Tầng 2</p>
                                  </th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr ng-repeat="row in v track by $index" ng-animate="'animate'">
                                </tr>
                                <tr ng-repeat="row in v track by $index" ng-animate="'animate'">
                                  <td ng-repeat="s in row  track by $index" ng-switch="" on="s.Status">
                                    <div class="seat" ng-class="s.Discount > 0 ? 'seat-discount': ''" ng-switch-when="0"
                                      ng-bind-html="s.Chair" ng-click="selectSeat(s)">B01</div>
                                  </td>
                                  
                              </tbody>
                            </table>
                          </div><!-- end ngRepeat: (k,v) in seats track by $index -->
                        </div>
                        <div class="row">
                          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12 text-center">
                            <div class="ordered"></div><span>Đang chọn</span>
                          </div>
                          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12 text-center">
                            <div class="booked"></div><span>Đã đặt</span>
                          </div>
                          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-ms-12 text-center">
                            <div class="nothing"></div><span>Còn trống</span>
                          </div>
                        </div>
                      </div><!-- end ngSwitchWhen: -->
                    </div><!-- end ngIf: seats.length > 0 -->
                    <!-- ngIf: seats.length == 0 && getSeatComplete === true -->
                  </div>

                </div>
              </div>
            </div>


          </section>
        </div>

      </div>
    </div>
    <!-- add slidebar menu -->

  </div>
</body>

</html>