<!DOCTYPE html>
<html class="no-js" lang="en" xmlns:th="http://www.thymeleaf.org" xmlns:c="http://www.springframework.org/tags">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Detail order</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="/assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="/assets/css/custom.css">
    <link rel="stylesheet" href="/assets/css/responsive.css">
    <!-- angularjs -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>

<body ng-app="shopping-app" ng-controller="shopping-ctrl" class="template-index belle home5-cosmetic">
    <div id="pre-loader">
        <img src="/assets/images/loader.gif" alt="Loading..." />
    </div>
    <div class="pageWrapper">
        <div th:replace="../layout/_header"></div>

        <!--Body Content-->
        <div id="page-content">
            <!--Page Title-->
            <div class="page section-header text-center mt-5">
                <div class="page-title">
                    <div class="wrapper">
                        <h1 class="page-width">CHI TIẾT ĐƠN HÀNG</h1>
                    </div>
                </div>
            </div>
            <!--End Page Title-->

            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 mb-3">
                        <div class="customer-box returning-customer">
                            <h3>
                                <i class="icon anm anm-user-al"></i>
                                <a href="#customer-login" id="customer" class="text-white text-decoration-underline"
                                    data-toggle="collapse"></a>
                            </h3>
                        </div>
                    </div>

                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 mb-3">
                        <div class="customer-box customer-coupon">
                            <h3 class="font-15 xs-font-13">
                                <i class="icon anm anm-gift-l"></i>
                            </h3>
                            <div id="have-coupon" class="collapse coupon-checkout-content">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row billing-fields">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 sm-margin-30px-bottom">
                        <div class="create-ac-content bg-light-gray padding-20px-all">
                            <form name="frmOrder">
                                <fieldset>
                                    <h2 class="login-title mb-3">Chi tiết thanh toán</h2>
                                    <div class="row">
                                        <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                            <label for="input-firstname">Username<span class="required-f">*</span></label>
                                            <input disabled="disabled" name="username" th:value="${order.account.username}" id="username" type="text">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                            <label for="input-firstname">Họ và tên<span class="required-f">*</span></label>
                                            <input disabled="disabled" name="fullname" th:value="${order.account.fullname}" id="input-firstname" type="text">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                            <label for="input-email">E-Mail <span class="required-f">*</span></label>
                                            <input disabled="disabled" name="email" th:value="${order.account.email}" id="input-email" type="email">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="row">
                                        <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                            <label for="input-address-1">Địa chỉ <span class="required-f">*</span></label>
                                            <input disabled="disabled" name="address" th:value="${order.address}" id="input-address-1" required type="text">
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <div class="row">
                                        <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                            <label for="input-company">Ghi chú<span class="required-f">*</span></label>
                                            <textarea disabled="disabled" class="form-control resize-both" rows="3"></textarea>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>

                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                        <div class="your-order-payment">
                            <div class="your-order">
                                <h2 class="order-title mb-4">Đơn hàng của bạn</h2>

                                <div class="table-responsive-sm order-table">
                                    <table class="bg-white table table-bordered table-hover text-center">
                                        <thead>
                                            <tr>
                                                <th class="text-left">Sản phẩm</th>
                                                <th>Giá</th>
                                                <th>Số lượng</th>
                                                <th>Tổng cộng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr th:each="o : ${order.orderDetails}">
                                                <td class="text-left" th:text="${o.product.name}"></td>
                                                <td th:text="${o.price}"></td>
                                                <td th:text="${o.quantity}"></td>
                                                <td th:text="${o.price * o.quantity}"></td>
                                            </tr>
                                        </tbody>
                                        <tfoot class="font-weight-600">
                                            <tr>
                                                <td colspan="4" class="text-right font-weight-bold">Thanh toán</td>
                                                <td th:text="${total}" class="font-weight-bold"></td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>

                            <hr
