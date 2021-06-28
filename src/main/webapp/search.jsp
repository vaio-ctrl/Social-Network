<!DOCTYPE html>
<html>

<head>
    <title>SocialNetwork - Connect your world</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
    <script src="./js/jquery-2.2.4.min.js"></script>
    <script src="./bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="./css/main.css">
</head>

<body>
    <nav class="container-fluid" id="main-nav-user-home">
        <div class="row">
            <div class="col-md-6" id="user-tools-left">
                <a href="./news-feed.html" id="main-logo">C</a>
                <div id="search-box">
                    <input type="text" name="search-friend">
                    <button><i class="fa fa-search"></i></button>
                </div>
            </div>
            <div class="col-md-6" id="user-tools-right">
                <ul>
                    <li>
                        <a href="/"><img class="avatar24" src="./img/atlantic-3929616_640.jpg">Johny</a>
                    </li>
                    <li>
                        <a href="/"><i class="fa fa-users" aria-hidden="true"></i></a>
                        <span class="mess-notif">9</span>
                    </li>
                    <li>
                        <a href="/"><i class="fa fa-weixin" aria-hidden="true"></i></a>
                        <span class="mess-notif">25</span>
                    </li>
                    <li>
                        <a href="/"><i class="fa fa-globe" aria-hidden="true"></i></a>
                        <span class="mess-notif">5</span>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="container-fluid" id="main-body">
        <div class="row no-pad">
            <div class="col-md-5 no-pad">
                <div class="middle-section search-result-box">
                    <div class="search-result-box-header">
                        <i class="fa fa-users" aria-hidden="true"></i>
                        <span>PEOPLE</span>
                    </div>
                    <div class="search-result-box-content">
                        <div class="search-result-box-content-item">
                            <img src="img/result1.jpg">
                            <span>
                                <a href="">Ha An</a>
                                <a href="">Hà Nội, Viet Nam</a>
                                <a href="">Live in Hà Nội, Việt Nam</a>
                                <a href="">2 mutual friends: Thao Phan and Thanh Mai</a>
                            </span>
                            <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </div>
                        <div class="search-result-box-content-item">
                            <img src="img/result3.jpg">
                            <span>
                                <a href="">Ha An</a>
                                <a href="">Hà Nội, Viet Nam</a>
                                <a href="">Live in Hà Nội, Việt Nam</a>
                                <a href="">2 mutual friends: Thao Phan and Thanh Mai</a>
                            </span>
                            <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </div>
                        <div class="search-result-box-content-item">
                            <img src="img/result2.jpg">
                            <span>
                                <a href="">Ha An</a>
                                <a href="">Hà Nội, Viet Nam</a>
                                <a href="">Live in Hà Nội, Việt Nam</a>
                                <a href="">2 mutual friends: Thao Phan and Thanh Mai</a>
                            </span>
                            <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                        </div>
                    </div>
                    <div class="search-result-box-footer">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(function() {
            var viewportHeight = $(window).height();
            $("#online-list").css("max-height", viewportHeight);
        });
    </script>
    <script src="js/app.js"></script>
</body>

</html>
