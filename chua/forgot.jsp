<!DOCTYPE html>
<html class="no-js" lang="en" xmlns:th="http://www.thymeleaf.org">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Plugins CSS -->
    <link rel="stylesheet" th:href="@{/assets/css/plugins.css}">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" th:href="@{/assets/css/bootstrap.min.css}">
    <!-- Main Style CSS -->
    <link rel="stylesheet" th:href="@{/assets/css/style.css}">
    <link rel="stylesheet" th:href="@{/assets/css/custom.css}">
    <link rel="stylesheet" th:href="@{/assets/css/responsive.css}">
    <!-- angularjs -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>

<body ng-app="shopping-app" ng-controller="shopping-ctrl"
    class="template-index belle home5-cosmetic">
    <div id="pre-loader">
        <img src="/assets/images/loader.gif" alt="Loading..." />
    </div>
    <div class="pageWrapper">
        <div th:include="layout/_header :: header"></div>

        <!--Body Content-->
        <div id="page-content">
            <!--Page Title-->
            <div class="page section-header text-center mt-5">
                <div class="page-title">
                    <div class="wrapper">
                        <h1 class="page-width">QUên mật khẩu</h1>
                    </div>
                </div>
            </div>
            <!--End Page Title-->

            <div class="container">
                <div class="row">
                    <div
                        class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
                        <div class="mb-4">
                            <form method="post" action="/forgot-password"
                                id="CustomerLoginForm" accept-charset="UTF-8"
                                class="contact-form">
                                <div class="row">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group">
                                            <label for="CustomerEmail">Username</label>
                                            <input type="text" name="username"
                                                placeholder="" id="CustomerEmail"
                                                class="" autocorrect="off"
                                                autocapitalize="off" autofocus="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                        <div class="form-group" th:if="${not #strings.isEmpty(message)}">
                                            <i style="color: red; font-weight: bold"
                                                th:text="${message}"></i>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
                                        <input type="submit" class="btn mb-3"
                                            value="Đăng nhập">
                                        <p class="mb-4">
                                            <a href="/login" id="RecoverPassword">Login</a>
                                            &nbsp; | &nbsp;
                                            <a href="register" id="customer_register_link">Tạo tài khoản?</a>
                                        </p>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--End Body Content-->

        <!--Footer-->
        <div th:include="layout/_footer :: footer"></div>
        <!--End Footer-->

        <!--Scoll Top-->
        <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
        <!--End Scoll Top-->

        <!-- Including Jquery -->
        <script th:src="@{/assets/js/vendor/jquery-3.3.1.min.js}"></script>
        <script th:src="@{/assets/js/vendor/modernizr-3.6.0.min.js}"></script>
        <script th:src="@{/assets/js/vendor/jquery.cookie.js}"></script>
        <script th:src="@{/assets/js/vendor/wow.min.js}"></script>
        <!-- Incing Jascript -->
        <script th:src="@{/assets/js/bootstrap.min.js}"></script>
        <script th:src="@{/assets/js/plugins.js}"></script>
        <script th:src="@{/assets/js/popper.min.js}"></script>
        <script th:src="@{/assets/js/lazysizes.js}"></script>
        <script th:src="@{/assets/js/main.js}"></script>
        <!-- Shopping cart -->
        <script th:src="@{/assets/js/shopping-cart.js}"></script>
        <!--For Newsletter Popup-->
        <script th:inline="javascript">
            /*<![CDATA[*/
            $(document).mouseup(function(e) {
                var container = $('#popup-container');
                if (!container.is(e.target)
                    && container.has(e.target).length === 0) {
                    container.fadeOut();
                    $('#modalOverly').fadeIn(200);
                    $('#modalOverly').hide();
                }
            });
            /*]]>*/
        </script>
        <!--End For Newsletter Popup-->
    </div>
</body>

</html>
