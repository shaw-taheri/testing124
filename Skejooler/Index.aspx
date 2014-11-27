<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Skejooler.Index" %>

<!DOCTYPE html>
<!--

    Page Title:     Skejooler Home
    Page Author(s): HTML & ASP - Sam Humphrey & Trevor Wilson
                    CSS - Sam Humphrey
                    Bootstrap - Sam Humprey
    Decription:     Landing page for vistors to the site.  General information about Skejooler's features.  
                    Content to be delivered by client.
    
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Skejooler</title>
    <link href="style/bootstrap.min.css" rel="stylesheet"/>
    <link href="style/Style.css" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700' rel='stylesheet' type='text/css'/>
    <link href='http://fonts.googleapis.com/css?family=Patua+One' rel='stylesheet' type='text/css'/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid index-container">
            <div class="row top-home">
                <div class="row top-bar">
                    <div class="col-md-6">
                        <a href="Index.aspx"><img src="images/logo.png" alt="Skejooler Logo"/></a>
                    </div>
                    <div class="col-md-6">
                        <nav class="navbar navbar-default home-nav" role="navigation">
                            <div class="container-fluid">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav">
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">RESOURCES <span class="caret"></span></a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="CentreInfo.aspx">INVIGILIATION CENTRE INFO</a></li>
                                                <li><a href="JobPostings.aspx">JOB POSTINGS</a></li>
                                                <li><a href="OnlinePrograms.aspx">ONLINE PROGRAMS</a></li>
                                                <li><a href="Articles.aspx">ARTICLES</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="RegForm.aspx">REGISTRATION FORM</a></li>
                                        <li><a href="Help.aspx">HELP</a></li>
                                        <li><a class="btn-signup"href="#">SIGN-UP</a></li>
                                        <li><a class="btn-signup"href="Login.aspx">LOGIN</a></li>
                                    </ul>
                                </div><!-- /.navbar-collapse -->
                            </div><!-- /.container-fluid -->
                        </nav>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1>BOOK YOUR EXAM</h1>
                            <p><a class="find-btn" href="Map.aspx">GET STARTED</a></p>
                        </div>
                    </div>
                </div>
            </div><!--end top-home-->
            <div class="container mid-row"><!--mid-row-->
            <div class="row">
                <div class="col-md-12">
                    <h2>what is Skejooler?</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <img id="desk" src="images/Desk.jpg" alt="Desk"/>
                </div>
                <div class="col-md-6">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet justo eget ex ultrices vulputate. Ut euismod tempus arcu, quis fermentum neque imperdiet sit amet.</p>
                    <p>Vestibulum pulvinar, urna luctus finibus egestas, massa arcu dictum ipsum, quis elementum justo diam a augue. Vivamus ultricies nunc ac magna dignissim, in finibus ante rhoncus. convallis.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet justo eget ex ultrices vulputate.</p>
                   </div>
            </div>
            <div class="row">
                <div class="col-md-12 whyuse-row">
                    <h2>why use Skejooler?</h2>
                </div>
            </div>
            <div class="row features-row"><!--features-->
                <div class="col-md-2 col-md-offset-1">
                    <a href="Map.aspx">
                        <img src="images/search.jpg" alt="Search Icon"/>
                        <h3>easy-to-use search</h3>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#">
                        <img src="images/schedule.jpg" alt="Schedule Icon"/>
                        <h3>schedule</h3>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="CentreInfo.aspx">
                        <img src="images/centers.jpg" alt="Centre Icon"/>
                        <h3>invigilation centres</h3>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="JobPostings.aspx">
                        <img src="images/jobs.jpg" alt="Jobs Icon"/>
                        <h3>job postings</h3>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="OnlinePrograms.aspx">
                        <img src="images/programs.jpg" alt="Programs Icon"/>
                        <h3>online programs</h3>
                    </a>
                </div>
            </div><!--end features-->
        </div><!--end mid-row-->
            <div class="footer"><!--footer-->
            <div class="container">
                <div class="row bottom-nav-links">
                    <div class="col-md-4 footer-skejooler">
                        <h4 >SKEJOOLER</h4>
                        <ul>
                            <li><a href="Index.aspx">HOME</a></li>
                            <li><a href="Map.aspx">MAP</a></li>
                            <li><a href="Help.aspx">HELP</a></li>
                            <li><a href="RegForm.aspx">REGISTRATION FORM</a></li>
                        </ul>
                    </div>
                    <div class="col-md-5 footer-centers">
                        <h4>EXAMINEE RESOURCES</h4>
                        <ul>
                            <li><a href="CentreInfo.aspx">INVIGILATION CENTRE INFO</a></li>
                            <li><a href="OnlinePrograms.aspx">ONLINE PROGRAMS</a></li>
                            <li><a href="Articles.aspx">ARTICLES</a></li>
                            <li><a href="JobPostings.aspx">JOB POSTINGS</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-social">
                        <h4>FOLLOW US</h4>
                        <img class="social" src="images/facebook.jpg" alt="Facebook Icon"/>
                        <img class="social" src="images/google_plus.jpg" alt="Google Plus Icon"/>
                    </div>
                </div>
                <div class="row copyright">
                    <div class="col-md-12">
                        <p>&copy;2014 Skejooler Industries</p>
                    </div>
                </div>
            </div>
        </div><!--End footer-->
        </div><!--end index-container-->
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="script/bootstrap.min.js"></script>
</body>
</html>
