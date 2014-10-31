<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Skejooler.Index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Skejooler Home</title>
    <link href="style/bootstrap.min.css" rel="stylesheet"/>
    <link href="style/indexStyle.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row top-home">
            <div class="row top-bar">
                <div class="col-md-6">
                    <img src="http://placehold.it/200x80"/>
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
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Resources <span class="caret"></span></a>
                              <ul class="dropdown-menu" role="menu">
                                <li><a href="CentreInfo.aspx">Invigilation Centre Info</a></li>
                                <li><a href="JobPostings.aspx">Job Postings</a></li>
                                <li><a href="OnlinePrograms.aspx">Online Programs</a></li>
                                <li><a href="Articles.aspx">Articles</a></li>
                              </ul>
                            </li>
                            <li><a href="Help.aspx">Help</a></li>
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
                    <h1>CALL TO ACTION</h1>
                    <p><a class="blueBtn" href="Map.aspx">BOOK YOUR EXAM</a></p>
                </div>
                </div>
            </div>
        </div><!--end of top-home-->
        <div class="container mid-row">
            <div class="row">
                <div class="col-md-12">
                    <h2>what is Skejooler?</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <img src="http://placehold.it/500x300"/>
                </div>
                <div class="col-md-6">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet justo eget ex ultrices vulputate. Ut euismod tempus arcu, quis fermentum neque imperdiet sit amet.</p>
                    <p>Vestibulum pulvinar, urna luctus finibus egestas, massa arcu dictum ipsum, quis elementum justo diam a augue. Vivamus ultricies nunc ac magna dignissim, in finibus ante rhoncus. convallis.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h2>why use Skejooler?</h2>
                </div>
            </div>
            <div class="row"><!--features-->
                <div class="col-md-2 col-md-offset-1">
                    <img src="http://placehold.it/150x150"/>
                    <h3>feature</h3>
                </div>
                <div class="col-md-2">
                    <img src="http://placehold.it/150x150"/>
                    <h3>feature</h3>
                </div>
                <div class="col-md-2">
                    <img src="http://placehold.it/150x150"/>
                    <h3>feature</h3>
                </div>
                <div class="col-md-2">
                    <img src="http://placehold.it/150x150"/>
                    <h3>feature</h3>
                </div>
                <div class="col-md-2">
                    <img src="http://placehold.it/150x150"/>
                    <h3>feature</h3>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h4>SKEJOOLER</h4>
                        <hr />
                        <ul>
                            <li><a href="Index.aspx">HOME</a></li>
                            <li><a href="Map.aspx">MAP</a></li>
                            <li><a href="Help.aspx">HELP</a></li>
                            <li><a href="RegForm.aspx">REGISTRATION FORM</a></li>
                        </ul>
                    </div>
                    <div class="col-md-5">
                        <h4>EXAMINEE RESOURCES</h4>
                        <hr />
                        <ul>
                            <li><a href="CentreInfo.aspx">INVIGILATION CENTRE INFO</a></li>
                            <li><a href="OnlinePrograms.aspx">ONLINE PROGRAMS</a></li>
                            <li><a href="Articles.aspx">ARTICLES</a></li>
                            <li><a href="JobPostings.aspx">JOB POSTINGS</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 follow">
                        <h4>FOLLOW US</h4>
                        <hr />
                        <img src="http://placehold.it/50x50"/>
                        <img src="http://placehold.it/50x50"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <hr />
                        <p>Copyright blah blah blah</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="script/bootstrap.min.js"></script>
</body>
</html>
