<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="Cart.css">
  <link href="./bootstrap/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="./bootstrap/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <!------ Include the above in your HEAD tag ---------->
  <title>Document</title>
  <link rel="stylesheet" href="./css/Cart.css">
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
                <li class="active first">Chọn tuyến <span></span> </li>
                <li>Chọn ghế <span></span></li>
                <li>Thông tin khách hàng <span></span></li>
                <li>Thanh toán <span></span></li>
              </ul>
            </div>



            <div id="content-steps" class="container">

              <div class="row" id="step1">
                <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12 col-ms-12">
                  <div class="panel">
                    <p class="text-center text-primary text-uppercase">
                      <strong>Chọn tuyến</strong>
                    </p>
                    <form id="form-steps" name="form"
                      ng-submit="form.$valid ? next(form.$valid): showError(form.$error)" novalidate=""
                      style="min-height: 260px;"
                      class="ng-dirty ng-valid-parse ng-valid ng-valid-required ng-valid-min ng-valid-max">
                      <fieldset>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ms-12">
                            <div class="form-group">
                              <label for="">Điểm khởi hành <span class="text-primary">*</span></label>
                              <div class="controls">
                                <i class="fa fa-bus text-primary"></i>
                                <p class="form-control">
                                  <span class="f-left">TP.Hồ Chí Minh</span>
                                </p>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ms-12">
                            <div class="form-group">
                              <label for="">Điểm đến <span class="text-primary">*</span></label>
                              <div class="controls">
                                <i class="fa fa-bus text-primary"></i>
                                <p class="form-control">
                                  <span class="f-left">Đà Lạt</span>
                                </p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ms-12">
                            <div class="form-group">
                              <label for="">Ngày khởi hành <span class="text-primary">*</span></label>
                              <div class="controls">
                                <i class="fa fa-calendar text-primary"></i>
                                <input type="text"
                                  class="form-control date-readonly ng-dirty ng-valid-parse ng-valid ng-valid-required valid ng-touched"
                                  ng-class="form.$dirty ? (form.departureDate.$valid ? 'valid': 'invalid'): ''"
                                  ng-model="info.departureDate" name="departureDate" placeholder="dd-mm-yyyy"
                                  data-mindate="25-10-2019" data-maxdate="30-11-2019" required="" dateselect=""
                                  readonly="" style="">
                                <small><em>Định dạng: dd-mm-yyyy</em></small>
                              </div>
                            </div>
                          </div>
                          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-ms-12">
                            <div class="form-group">
                              <label for="">Số lượng vé</label>
                              <div class="controls">
                                <i class="fa fa-ticket text-primary"></i>
                                <input type="number"
                                  ng-class="form.$dirty ? (form.numOfTicket.$valid ? 'valid': 'invalid'): ''"
                                  ng-model="info.numOfTicket" name="numOfTicket" placeholder="1" value="1" min="1"
                                  max="10"
                                  class="form-control ng-pristine ng-untouched ng-valid valid ng-valid-min ng-valid-max">
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="form-section">
                          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ms-12">
                            <a href="/" class="btn btn-primary btn-flat">
                              <i class="fa fa-close icon-flat bg-btn-actived"></i> Hủy
                            </a>
                            <button type="submit" class="btn btn-success btn-flat">
                              <i class="fa fa-arrow-right icon-flat bg-success"></i>Tiếp tục
                            </button>
                          </div>
                        </div>
                      </fieldset>

                    </form>

                  </div>
                </div>
                <div class="col-lg-7 col-md-7 col-sm-6 col-xs-12 col-ms-12">
                  <div class="route-info">
                    <ul class="nav nav-tabs nav-justified">
                      <li ng-class="{active:isActiveTab(0)}" class="active"><a data-toggle="tab"
                          ng-click="changeTab(0);">Thông tin chung</a></li>
                      <li ng-class="{active:isActiveTab(1)}"><a data-toggle="tab" ng-click="changeTab(1);">Điểm đón
                          xe</a></li>
                      <li ng-class="{active:isActiveTab(2)}"><a data-toggle="tab" ng-click="changeTab(2);">Điểm trung
                          chuyển</a></li>
                    </ul>
                    <div class="tab-content" style="height: auto; padding-left: 25px; padding-right: 25px;">
                      <!--270px-->
                      <div id="tab0" class="tab-pane active" ng-class="{active:isActiveTab(0)}">
                        <!-- ngRepeat: r in matchRoutes -->
                        <div class="row mg-t10" ng-repeat="r in matchRoutes" ng-class="!first?'mg-t10':''">
                          <div class="col-xs-12">
                            <h5><strong>Le Hong Phong ⇒ Da Lat</strong> - Khoảng cách:&nbsp;<strong>294 Km</strong> -
                              Thời gian:&nbsp;<strong>8 giờ</strong></h5>
                            <!-- ngRepeat: s in r.RouteStops -->
                            <!-- ngIf: s.Type == 0 -->
                            <!-- end ngRepeat: s in r.RouteStops -->
                            <!-- ngIf: s.Type == 0 -->
                            <!-- end ngRepeat: s in r.RouteStops -->
                            <!-- ngIf: s.Type == 0 -->
                            <!-- end ngRepeat: s in r.RouteStops -->
                            <!-- ngIf: s.Type == 0 -->
                            <!-- end ngRepeat: s in r.RouteStops -->
                            <!-- ngIf: s.Type == 0 -->
                            <div ng-repeat="s in r.RouteStops" ng-if="s.Type == 0">
                              <span><i class="fa fa-dot-circle-o"></i>&nbsp;&nbsp;Bến đi:&nbsp;VP BX Miền Tây: 395 Kinh
                                Dương Vương , P.An Lạc , Q.Bình Tân , TP.HCM (TERMINAL BUS STATION)</span>
                            </div>
                          </div>


                        </div>
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