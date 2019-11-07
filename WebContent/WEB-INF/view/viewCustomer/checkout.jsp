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
            <li><a href="#"><i class="fa fa-bus" aria-hidden="true"></i> Trang chủ</a></li>
            <li><a href="#"><i class="fa fa-truck" aria-hidden="true"></i>Lịch trình xe chạy</a></li>
            <li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i>Mua vé</a></li>
            <li class="pull-right diff"><a href="#"><span class="hidden-xs">Đăng nhập</span></a></li>
            <li class="pull-right"><a target="_blank" href="#"><i class="fa fa-facebook-square"></i> Đăng ký</a></li>
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
              <form action="CheckOutServlet"
						method="post">
                <div class="form-group">
                  <div class="col-md-12">
                    <table class="table">
                      <tbody>
                        <tr>
                          <td class="col-xs-3">Tuyến:</td>
                         <input class="form-control input-sm" id="departure"
												name="departure" type="text" value="${bus.getDeparture()}">
                        </tr>
                        <tr>
                          <td class="col-xs-3">Tuyến:</td>
                          <input class="form-control input-sm" id="destination"
												name="destination" type="text" value="${bus.getDestination()}">
                        </tr>
                        <tr>
                          <td>Ngày đi:</td>
                          <td>
                              <input class="form-control input-sm" id="destination"
												name="time" type="text" value="${bus.getTime()}">
                           <input class="form-control input-sm" id="destination"
												name="bday" type="text" value="${date}">
                          </td>
                          <td>Ghế/giường:</td>
                          <td>
                            <!-- ngRepeat: s in step2Info.selectSeats --><span
                              ng-repeat="s in step2Info.selectSeats">A14</span>
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
                             <input class="form-control input-sm" id="destination"
												name="fullname" type="text" value="${user.getFullName()}">
                        </tr>
                        <tr>
                          <td>Email:</td>
                             <input class="form-control input-sm" id="destination"
												name="email" type="text" value="${user.getEmail()}">
												 
                             <input class="form-control input-sm" id="destination"
												name="idBus" type="text" value="${bus.getIdBus()}">
                         
                          <td>SĐT:</td>
                          <td>
                            <input class="form-control input-sm" id="destination"
												name="phone" type="text" value="${user.getPhoneNum()}">
                          </td>
                        </tr>
                        <tr>
                          <td>Tổng tiền:</td>
                          <td colspan="3">
                             <input class="form-control input-sm" id="destination"
												name="price" type="text" value="${price}">
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12 col-ms-12">
                    <a class="btn btn-primary btn-block btn-flat">
                      <i class="fa fa-arrow-left icon-flat bg-btn-actived"></i> Quay lại
                    </a>
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-lg-12 col-md-12 col-sm-2 col-xs-12 col-ms-12">
                    <a class="btn btn-primary btn-block btn-flat">
                      <button type="submit" class="btn btn-success btn-flat">Thanh Toan</button>
                    </a>
                  </div>
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