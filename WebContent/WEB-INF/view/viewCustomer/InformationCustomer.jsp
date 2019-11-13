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
						<li><a href="#"><i class="fa fa-bus" aria-hidden="true"></i>
								Trang chủ</a></li>
						<li class="pull-right diff"><a
							href="${pageContext.request.contextPath}/AccountServlet"><span
								class="hidden-xs">Hi, ${userlogin.getFullName()}</span></a></li>
						<li class="pull-right"><a
							href="${pageContext.request.contextPath}/ViewCartCustomer?idUser=${userlogin.getIdUser()}">Lịch
								sử mua vé</a></li>
						<li class="pull-right"><a
							href="${pageContext.request.contextPath}/UpdateNdServlet?idUser=${userlogin.getIdUser()}">Cập
								nhật thông tin</a></li>
					</ul>
        </div>
      </div>
    </div>
    <!-- ngView:  -->
    <div>
      <section id="body-content">
        <div id="steps" class="container">
          <ul class="list-step clearfix">
            <li>Chá»n tuyáº¿n <span></span> </li>
            <li>Chá»n gháº¿ <span></span></li>
            <li class="active first">ThÃ´ng tin khÃ¡ch hÃ ng <span></span></li>
            <li>Thanh toÃ¡n <span></span></li>
          </ul>
        </div>
        <div id="content-steps" class="container">
          <div class="row" id="step2">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
              <div class="panel" style="min-height: 390px;">
                <p class="text-center text-primary text-uppercase"><strong>ThÃ´ng tin hÃ nh khÃ¡ch</strong>
                </p>
                <form>
                  <fieldset>
                    <div class="row">
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <label for="">Há» tÃªn <span class="text-primary">*</span></label>
                          <div class="controls no-icon">
                            <input ng-model="info.CustName" type="text" class="form-control" name="CustName"
                              placeholder="Há» tÃªn cá»§a hÃ nh khÃ¡ch" required="" ng-maxlength="80">
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
                              placeholder="Äá»a chá» email" required="">
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <label for="">NgÃ y sinh</label>
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
                          <label for="">Di Äá»ng <span class="text-primary">*</span></label>
                          <div class="controls no-icon">
                            <input ng-model="info.CustMobile" type="text" class="form-control" name="CustMobile"
                              placeholder="Sá» di Äá»ng" required="" ng-maxlength="30" vietnam-phone="">
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group">
                          <label for="">Di Äá»ng 2</label>
                          <div class="controls no-icon">
                            <input ng-model="info.CustMobile2" type="text" class="form-control" name="CustMobile2"
                              placeholder="Sá» di Äá»ng 2" ng-maxlength="30" vietnam-phone="">
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                        <div class="form-group clearfix">
                          <label for="">Tá»nh/TP <span class="text-primary">*</span></label>
                          <div class="controls no-icon">
                            <select ng-model="info.CustProvince" class="form-control" name="CustProvince"
                              select-required="">
                              <option value="0" label="Chá»n tá»nh/tp" selected="selected">Chá»n tá»nh/tp</option>
                              <option value="1" label="An Giang">An Giang</option>
                              <option value="2" label="BÃ  Rá»a - VÅ©ng TÃ u">BÃ  Rá»a - VÅ©ng TÃ u</option>
                              <option value="5" label="Báº¯c Giang">Báº¯c Giang</option>
                              <option value="4" label="Báº¯c Káº¡n">Báº¯c Káº¡n</option>
                              <option value="3" label="Báº¡c LiÃªu">Báº¡c LiÃªu</option>
                              <option value="6" label="Báº¯c Ninh">Báº¯c Ninh</option>
                              <option value="7" label="Báº¿n Tre">Báº¿n Tre</option>
                              <option value="9" label="BÃ¬nh Äá»nh">BÃ¬nh Äá»nh</option>
                              <option value="8" label="BÃ¬nh DÆ°Æ¡ng">BÃ¬nh DÆ°Æ¡ng</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
                          <div class="form-group">
                              <label for="">Chá»n quáº­n/ huyá»n</label>
                              <div class="controls no-icon">
                                <input ng-model="info.CustMobile2" type="text" class="form-control" name="CustMobile2"
                                  placeholder="Chá»n quáº­n huyá»n" ng-maxlength="30" vietnam-phone="">
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
                              class="ng-pristine ng-untouched ng-invalid ng-invalid-required invalid"> Cháº¥p nháº­n <a
                              ng-click="showPolicies()" class="view-policy" title="Xem Äiá»u khoáº£n">Äiá»u khoáº£n</a> Äáº·t vÃ©
                            cá»§a Futa Bus Lines
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="form-section">
                      <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 col-ms-12">
                        <a ng-click="prev()" class="btn btn-primary btn-flat"><i
                            class="fa fa-arrow-left icon-flat bg-btn-actived"></i> Quay láº¡i</a>
                        <button type="submit" class="btn btn-success  btn-flat"><i
                            class="fa fa-arrow-right icon-flat bg-success"></i>Tiáº¿p tá»¥c</button>

                      </div>
                    </div>



                  </fieldset>

                </form>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-ms-12">
              <div class="panel" style="min-height: 390px;">
                <p class="text-center text-uppercase text-primary"><strong>Äiá»u khoáº£n &amp; LÆ°u Ã½</strong>
                </p>
                <div>
                  <p class="text-justify">(*) QuÃ½ khÃ¡ch vui lÃ²ng mang email cÃ³ chá»©a mÃ£ vÃ© Äáº¿n vÄn phÃ²ng Äá» Äá»i vÃ© lÃªn xe
                    trÆ°á»c giá» xuáº¥t báº¿n Ã­t nháº¥t <strong class="text-primary">60 phÃºt</strong> Äá» chÃºng tÃ´i trung chuyá»n.
                  </p>
                  <p class="text-justify">(*) ThÃ´ng tin hÃ nh khÃ¡ch pháº£i chÃ­nh xÃ¡c, náº¿u khÃ´ng sáº½ khÃ´ng thá» lÃªn xe hoáº·c
                    há»§y/Äá»i vÃ©</p>
                  <p class="text-justify">(*) QuÃ½ khÃ¡ch khÃ´ng ÄÆ°á»£c Äá»i / tráº£ vÃ© vÃ o cÃ¡c ngÃ y Lá» Táº¿t ( ngÃ y thÆ°á»ng qÃºy
                    khÃ¡ch ÄÆ°á»£c quyá»n chuyá»n Äá»i hoáº·c há»§y vÃ© <strong class="text-primary">má»t láº§n</strong> duy nháº¥t trÆ°á»c
                    giá» xe cháº¡y 24 giá»), phÃ­ há»§y vÃ© 10%. </p>
                  <p class="text-justify">(*) Náº¿u quÃ½ khÃ¡ch cÃ³ nhu cáº§u trung chuyá»n, vui lÃ²ng liÃªn há» sá» Äiá»n thoáº¡i<br>
                    <strong class="text-primary" style="font-size: 1.2em;">1900 6067</strong>
                    trÆ°á»c khi Äáº·t vÃ©. ChÃºng tÃ´i sáº½ khÃ´ng ÄÃ³n/ trung chuyá»n táº¡i nhá»¯ng Äiá»m xe trung chuyá»n khÃ´ng thá» tá»i
                    ÄÆ°á»£c.
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