<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="Cart.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
 integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
 integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
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
    <div>
      <section id="body-content">
        <div id="steps" class="container">
          <ul class="list-step clearfix">
            <li>Chọn tuyến <span></span> </li>
            <li>Chọn ghế <span></span></li>
            <li class="active first">Thông tin khách hàng <span></span></li>
            <li>Thanh toán <span></span></li>
          </ul>
        </div>
        <div id="content-steps" class="container">
          <div class="row" id="step2">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
              <div class="panel" style="min-height: 390px;">
                <p class="text-center text-primary text-uppercase"><strong>Thông tin hành khách</strong>
                </p>
                <form>
                  <fieldset>
                    <div class="row">
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <label for="">Họ tên <span class="text-primary">*</span></label>
                          <div class="controls no-icon">
                            <input ng-model="info.CustName" type="text" class="form-control" name="CustName"
                              placeholder="Họ tên của hành khách" required="" ng-maxlength="80">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <label for="">Email <span class="text-primary">*</span></label>
                          <div class="controls no-icon">
                            <input ng-model="info.CustEmail" class="form-control" type="email" name="CustEmail"
                              placeholder="Địa chỉ email" required="">
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <label for="">Ngày sinh</label>
                          <div class="controls no-icon">
                            <input ng-model="info.CustBirthDay" type="text" class="form-control"
                              placeholder="dd-mm-yyyy" data-maxdate="25-10-2019" ng-maxlength="30" dateselect="">
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <label for="">Di động <span class="text-primary">*</span></label>
                          <div class="controls no-icon">
                            <input ng-model="info.CustMobile" type="text" class="form-control" name="CustMobile"
                              placeholder="Số di động" required="" ng-maxlength="30" vietnam-phone="">
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group">
                          <label for="">Di động 2</label>
                          <div class="controls no-icon">
                            <input ng-model="info.CustMobile2" type="text" class="form-control" name="CustMobile2"
                              placeholder="Số di động 2" ng-maxlength="30" vietnam-phone="">
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <label for="">Tỉnh/TP <span class="text-primary">*</span></label>
                          <div class="controls no-icon">
                            <select ng-model="info.CustProvince" class="form-control" name="CustProvince"
                              select-required="">
                              <option value="0" label="Chọn tỉnh/tp" selected="selected">Chọn tỉnh/tp</option>
                              <option value="1" label="An Giang">An Giang</option>
                              <option value="2" label="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
                              <option value="5" label="Bắc Giang">Bắc Giang</option>
                              <option value="4" label="Bắc Kạn">Bắc Kạn</option>
                              <option value="3" label="Bạc Liêu">Bạc Liêu</option>
                              <option value="6" label="Bắc Ninh">Bắc Ninh</option>
                              <option value="7" label="Bến Tre">Bến Tre</option>
                              <option value="9" label="Bình Định">Bình Định</option>
                              <option value="8" label="Bình Dương">Bình Dương</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                          <div class="form-group">
                              <label for="">Chọn quận/ huyện</label>
                              <div class="controls no-icon">
                                <input ng-model="info.CustMobile2" type="text" class="form-control" name="CustMobile2"
                                  placeholder="Chọn quận huyện" ng-maxlength="30" vietnam-phone="">
                              </div>
                            </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <div class="controls no-icon">
                            <input ng-model="info.AcceptCondition"
                              name="AcceptCondition" value="1" type="checkbox" required=""
                              class="ng-pristine ng-untouched ng-invalid ng-invalid-required invalid"> Chấp nhận <a
                              ng-click="showPolicies()" class="view-policy" title="Xem điều khoản">điều khoản</a> đặt vé
                            của Futa Bus Lines
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="form-section">
                      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 col-ms-12">
                        <a ng-click="prev()" class="btn btn-primary btn-flat"><i
                            class="fa fa-arrow-left icon-flat bg-btn-actived"></i> Quay lại</a>
                        <button type="submit" class="btn btn-success  btn-flat"><i
                            class="fa fa-arrow-right icon-flat bg-success"></i>Tiếp tục</button>

                      </div>
                    </div>



                  </fieldset>

                </form>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
              <div class="panel" style="min-height: 390px;">
                <p class="text-center text-uppercase text-primary"><strong>Điều khoản &amp; Lưu ý</strong>
                </p>
                <div>
                  <p class="text-justify">(*) Quý khách vui lòng mang email có chứa mã vé đến văn phòng để đổi vé lên xe
                    trước giờ xuất bến ít nhất <strong class="text-primary">60 phút</strong> để chúng tôi trung chuyển.
                  </p>
                  <p class="text-justify">(*) Thông tin hành khách phải chính xác, nếu không sẽ không thể lên xe hoặc
                    hủy/đổi vé</p>
                  <p class="text-justify">(*) Quý khách không được đổi / trả vé vào các ngày Lễ Tết ( ngày thường qúy
                    khách được quyền chuyển đổi hoặc hủy vé <strong class="text-primary">một lần</strong> duy nhất trước
                    giờ xe chạy 24 giờ), phí hủy vé 10%. </p>
                  <p class="text-justify">(*) Nếu quý khách có nhu cầu trung chuyển, vui lòng liên hệ số điện thoại<br>
                    <strong class="text-primary" style="font-size: 1.2em;">1900 6067</strong>
                    trước khi đặt vé. Chúng tôi sẽ không đón/ trung chuyển tại những điểm xe trung chuyển không thể tới
                    được.
                  </p>
                </div>

              </div>

            </div>

          </div>
        </div>
      </section>
    </div>


  </div>
</body>

</html>