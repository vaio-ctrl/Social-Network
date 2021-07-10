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
                        <a href="./profile.html"><img class="avatar24" src="./img/atlantic-3929616_640.jpg">Johny</a>
                    </li>
                    <li>
                        <a href="/"><i class="fa fa-users" aria-hidden="true"></i></a>
                        <span class="mess-notif">9</span>
                    </li>
                    <li>
                        <a id="show-chat-box-button" href="/"><i class="fa fa-weixin" aria-hidden="true"></i></a>
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
            <div class="col-md-2 no-pad">
                <div class="left-tool-section">
                    <h4>FAVORITES</h4>
                    <a href=""><i class="fa fa-newspaper-o" aria-hidden="true"></i> News Feed</a>
                    <a href=""><i class="fa fa-globe" aria-hidden="true"></i> Messages</a>
                    <a href=""><i class="fa fa-weixin" aria-hidden="true"></i> Events</a>
                    <a href=""><i class="fa fa-life-ring" aria-hidden="true"></i> Sales Group</a>
                </div>

                <div class="left-tool-section">
                    <h4>FRIENDS</h4>
                    <a href=""><i class="fa fa-location-arrow" aria-hidden="true"></i> Chicago </a>
                    <a href=""><i class="fa fa-graduation-cap" aria-hidden="true"></i> Community College</a>
                    <a href=""><i class="fa fa-building" aria-hidden="true"></i> GSC Corporation</a>
                    <a href=""><i class="fa fa-graduation-cap" aria-hidden="true"></i> Net Social</a>
                </div>

                <div class="left-tool-section">
                    <h4>APPS</h4>
                    <a href=""><i class="fa fa-industry" aria-hidden="true"></i> Live Videos</a>
                    <a href=""><i class="fa fa-gamepad" aria-hidden="true"></i> Games</a>
                    <a href=""><i class="fa fa-heart-o" aria-hidden="true"></i> On This Day</a>
                    <a href=""><i class="fa fa-picture-o" aria-hidden="true"></i> Photos</a>
                    <a href=""><i class="fa fa-gamepad" aria-hidden="true"></i> Games Feed</a>
                </div>

                <div class="left-tool-section">
                    <h4>EVENTS</h4>
                    <a href=""><i class="fa fa-bicycle" aria-hidden="true"></i> Live Videos</a>
                    <a href=""><i class="fa fa-music" aria-hidden="true"></i> Musics</a>
                    <a href=""><i class="fa fa-fax" aria-hidden="true"></i> Re-Union</a>
                    <a href=""><i class="fa fa-deaf" aria-hidden="true"></i> Company Trips</a>
                    <a href=""><i class="fa fa-credit-card-alt" aria-hidden="true"></i> Family Trips</a>
                </div>
            </div>
            <div class="col-md-5 no-pad">
                <div class="middle-section" id="post-form">
                    <div id="post-form-header">
                        <a href="#" id="button-upload-photo">
                            <i class="fa fa-file-image-o" aria-hidden="true"></i> Photo/Camera
                            <input type="file" class="masked-file-input" id="myfile" name="upload" />
                        </a>
                        |
                        <a href="#">
                            <i class="fa fa-file-video-o" aria-hidden="true"></i> Photo/Video Album
                        </a>
                        <span id="post-form-close-button">x</span>
                    </div>
                    <div id="post-form-body">
                        <img class="avatar-small" src="img/atlantic-3929616_640.jpg">
                        <div id="post-form-editor" id="post-text" contenteditable>

                        </div>
                    </div>
                    <div id="post-form-footer">
                        <div class="row no-pad">
                            <div class="col-md-6 no-pad">
                                <a href="">
                                    <i class="fa fa-user-plus" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                </a>
                                <a href="">
                                    <i class="fa fa-smile-o" aria-hidden="true"></i>
                                </a>
                            </div>
                            <div class="col-md-6 no-pad" style="text-align:right;">
                                <a href="#" id="button-public">
                                    <i class="fa fa-globe" aria-hidden="true"></i> Public <i class="fa fa-caret-down" aria-hidden="true"></i>
                                </a>
                                <a href="#" id="button-post">
                                    Post
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="middle-section user-post">
                    <div class="user-post-header">
                        <img class="avatar42" src="img/result1.jpg">
                        <span>
                            <a href="/">Peter Dan</a>
                            <p class="help-block">22hrs <i class="fa fa-globe" aria-hidden="true"></i></p>
                        </span>
                    </div>
                    <div class="user-post-body">
                        This food is fantastic. I wish I can cook this one at home.
                        <img src="img/sample.jpg">
                    </div>

                    <div class="user-post-tool">
                        <a href=""><i class="fa fa-thumbs-up" aria-hidden="true"></i> Like</a>
                        <a href=""><i class="fa fa-comment" aria-hidden="true"></i> Comment</a>
                        <a href=""><i class="fa fa-share" aria-hidden="true"></i> Share</a>
                    </div>
                    <div class="user-post-info">
                        <span class="like-icon"><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
                        <a href="">Dan Hover, John Doe and 18 Others</a>
                    </div>

                    <div class="user-post-comment-list">
                        <div class="user-post-comment-item">
                            <img class="avatar42" src="img/salad-3921790_640.jpg">
                            <span>
                                <a href="/">Dan Hover</a> Best food in asia ever
                                <div class="help-block">
                                    <a href="#">Like</a>.
                                    <a href="#">Reply</a>.
                                    21 hrs
                                </div>
                            </span>
                        </div>    
                    </div>
                
                    <div class="user-post-reply-form">
                        <img class="avatar42" src="img/fog-3914990_640.jpg">
                        <div class="user-post-reply-editor" id="user-reply-text" contenteditable="true">
                        </div>
                        <span>
                                <button type="button">add</button>
                        </span>
                    </div>
                </div>       
            </div>
            <div class="col-md-3 no-pad">
                <div class="middle-right-section">
                    <div class="middle-right-section-header">
                        <span>
                                <i class="fa fa-gift" aria-hidden="true"></i>
                                <a href="#">3 event invitations today</a>
                            </span>
                        <span>
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                                <a href="">Johny Johny</a>'s birthday is today
                            </span>
                    </div>
                    <div class="middle-right-section-body">
                        <div class="middle-right-section-body-title">
                            <label>PEOPLE YOU MAY KNOW</label>
                            <a href="#">See All</a>
                        </div>
                        <div class="friend-item">
                            <img src="img/friend1.jpg">
                            <span>
                                    <a href="#">Linsay Johan</a> 
                                    <span style="display:block;">123 mutual friends </span>
                            <button><i class="fa fa-user-plus" aria-hidden="true"></i> Add friend</button>
                            </span>
                            <a href="#" class="ignore-friend"><i class="fa fa-times" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2 no-pad">
                <div id="online-list">
                    <div id="friend-detail-popup">
                        <span id="back-triange"></span>
                        <span id="front-triange"></span>
                        <img class="avatar-small" src="img/fog-3914990_640.jpg">
                        <div id="friend-detail-popup-detail">
                            <p>
                                <a href="/">Peter Jonathan</a>
                                <span>36 followers</span>
                            </p>
                            <p>
                                <i class="fa fa-user-plus" aria-hidden="true"></i> Became friends with <br><a href="/">Hien Tran and 3 others...</a>
                            </p>
                            <p>
                                <i class="fa fa-user-plus" aria-hidden="true"></i> Became friends with <br><a href="/">Ca Chua and 3 others...</a>
                            </p>
                        </div>
                    </div>
                    <ul>
                        <li>
                            <img src="img/fog-3914990_640.jpg">
                            <span>Friend 1</span>
                            <span></span>
                        </li>
                        <li>
                            <img src="img/salad-3921790_640.jpg">
                            <span>Friend 2</span>
                            <span></span>
                        </li>
                        <li>
                            <img src="img/sunset-3932425_640.jpg">
                            <span>Friend 3</span>
                            <span></span>
                        </li>
                        <li>
                            <img src="img/forest-3833973_640.jpg">
                            <span>Friend 4</span>
                            <span></span>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <script>
        $(function() {
            var viewportHeight = $(window).height();
            $("#online-list ul").css("max-height", viewportHeight);
        });
    </script>
    <script src="js/app.js"></script>
</body>

</html>
er