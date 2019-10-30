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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
    integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
    integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
    crossorigin="anonymous"></script>
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
            <li><a href="#"><i class="fa fa-truck" aria-hidden="true"></i>Tạo người dùng</a></li>
            <li><a href="#"><i class="fa fa-taxi" aria-hidden="true"></i>Đặt vai trò</a></li>
            <li class="pull-right diff"><a href="#"><span class="hidden-xs">Đăng nhập</span></a></li>
            <li class="pull-right"><a target="_blank" href="#"><i class="fa fa-facebook-square"></i> Đăng ký</a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- ngView:  -->
    <div class="container">
      <div class="search">
        <form>
          <table width="100%" cellspacing="0" class="table-search">
            <tbody>
              <tr>
                <td><input type="text" class="form-control" placeholder="Tìm kiếm" autocomplete="off"></td>
                <td><input type="submit" class="btn-search" value="Tìm vé"></td>
              </tr>
            </tbody>
          </table>
        </form>
      </div>
      <table class="table-dsach">
        <h3 class="text-primary text-uppercase">Danh sách người dùng</h3>
        <thead>
          <tr>
            <th>Username</th>
            <th>Password</th>
            <th>Fullname</th>
            <th>gender</th>
            <th>address</th>
            <th>phoneNumber</th>
            <th>role</th>
            <th>Email</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>John</td>
            <td>123</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>mary@example.com</td>
            <td> <a href="updateAD.html">Update</a></td>
          </tr>
          <tr>
            <td>123</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>mary@example.com</td>
            <td> <a href="">Update</a></td>
          </tr>
          <tr>
            <td>123</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>John</td>
            <td>july@example.com</td>
            <td> <a href="">Update</a></td>
          </tr>
        </tbody>
      </table>
    </div>

  </div>
</body>

</html>