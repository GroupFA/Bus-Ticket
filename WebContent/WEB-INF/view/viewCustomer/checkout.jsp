<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="Cart.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <!------ Include the above in your HEAD tag ---------->
  <title>Document</title>
  <link rel="stylesheet" href="css/Cart.css">
</head>

<body>

  <div id="sb-site">
    <div class="br-header">
      <div id="top-nav" class="hidden-xs">
        <div class="container">
          <ul class="clearfix">
            <li><a href="#"><i class="fa fa-bus" aria-hidden="true"></i> Trang chủ</a></li>
            <li><a href="#"><i class="fa fa-truck" aria-hidden="true"></i>Lịch trình xe chạy</a></li>
            <li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i>Mua vé</a></li>
            <li class="pull-right diff"><a href="#"><span class="hidden-xs">Đăng nhập</span></a></li>
            <li class="pull-right"><a target="_blank" href="#"><i class="fa fa-facebook-square"></i> Đăng ký</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- ngView:  -->
    <section id="body-content">
      <div id="steps" class="container">
        <ul class="list-step clearfix">
          <li>Chọn tuyến <span></span> </li>
          <li>Chọn ghế <span></span></li>
          <li>Thông tin khách hàng <span></span></li>
          <li class="active first">Thanh toán <span></span></li>
        </ul>
      </div>
      <div id="content-steps" class="container">
        <div class="row">
          <div class="col-ld-6 col-md-12 col-sm-12 col-xs-12 col-ms-12">
            <div class="panel">
              <p class="text-center text-uppercase text-primary">
                <strong>Thông tin đặt vé</strong>
              </p>
             <pr>
             <pr>
              <form action="CheckOutServlet" method="post">
                <div class="form-group">
                  <div class="col-md-12">
                    <table class="table">
                      <tbody>
                        <tr>
                          <td class="col-xs-3">Tuyến:</td>
                          <td class="col-xs-9" colspan="3" name="departure" ng-bind-html="step2Info.selectRoute.Name">${bus.getDeparture()}</td>
                           <td class="col-xs-9" colspan="3" name="destination" ng-bind-html="step2Info.selectRoute.Name">${bus.getDestination()}</td>
                        </tr>
                        <tr>
                          <td>Ngày đi:</td>
                          <td>
                            <span name="time" ng-bind-html="step2Info.departureTime.Time">${bus.getTime()}</span>
                            <span name="bday" ng-bind-html="step1Info.departureDate|svcDate">${date}</span>
                          </td>
                          <td>Số vé</td>
                          <td>
                            <!-- ngRepeat: s in step2Info.selectSeats --><span
                              ng-repeat="s in step2Info.selectSeats">${bus.getIdBus()}</span>
                            <!-- end ngRepeat: s in step2Info.selectSeats -->
                          </td>
                        </tr>
                        <tr></tr>
                        <tr>
                          <td>Điểm lên xe:</td>
                          <td colspan="3" ng-bind-html="step2Info.pickUpPoint.Address">VP Bến Xe Bạc Liêu , Đường Trần
                            Phú , Khóm 2 , P.7 , TP.Bạc Liêu (TERMINAL BUS STATION)</td>
                        </tr>
                        <tr class="sperator">
                          <td>Họ tên:</td>
                          <td name="fullname" ng-bind-html="step3Info.CustName">${user.getFullName()}</td>
                          <td>Ngày sinh:</td>
                          <td ng-bind-html="step3Info.CustBirthDay|svcDate"></td>
                        </tr>
                        <tr>
                          <td>Email:</td>
                          <td name="email" ng-bind-html="step3Info.CustEmail">${user.getEmail()}</td>
                          <td>SĐT:</td>
                          <td>
                            <span name="phone" ng-bind-html="step3Info.CustMobile">${user.getPhoneNum()}</span>
                            <span ng-bind-html="step3Info.CustMobile2"></span>
                          </td>
                        </tr>
                        <tr>
                          <td>Tổng tiền:</td>
                          <td colspan="3">
                            <strong class="text-primary"
                            name="price" ng-bind-html="step2Info.total|svcMoney">${price}<sup>₫</sup></strong>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12 col-ms-12">
                    <a ng-click="prev()" class="btn btn-primary btn-block btn-flat">
                      <i class="fa fa-arrow-left icon-flat bg-btn-actived"></i> Quay lại
                    </a>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  
</body>

</html>