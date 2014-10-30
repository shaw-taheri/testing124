<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Skejooler.Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skejooler</title>
    <link href="style/homeStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="heroImg">
        <h1>Book Your Exam </h1>
        <br />
            <h2>Click the Button to Get Started: </h2>
            <asp:Button ID="BookYourExamButton" runat="server" Text="Book Your Exam" />
       
    </div>
        <div>
            <h2> What is Skejooler?</h2>
            <table id="homeCenterTable">
                <tr>
                    <td>
                
            <asp:Image ID="homeCenterImg" runat="server" ImageUrl="http://placehold.it/350x150" ImageAlign="Middle"/>
            
                    </td>
                    <td> <p id="homeCenterText">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet justo eget ex ultrices vulputate. 
                Ut euismod tempus arcu, quis fermentum neque imperdiet sit amet. <br /> <br /> Vestibulum pulvinar, urna luctus finibus 
                egestas, massa arcu dictum ipsum, quis elementum justo diam a augue. Vivamus ultricies nunc ac magna 
                dignissim, in finibus ante rhoncus. convallis. </p></td>
                </tr>
                </table>
                
            <br />
            <h2> Why Use Skejooler?</h2>

            &nbsp;&nbsp;&nbsp;
            <br />
            <table style="width:75%;">
                <tr>
                    <td>

            <asp:Image ID="easySearchHomeImg" runat="server" ImageUrl="http://placehold.it/140x100" />
                    </td>
                    <td>
            <asp:Image ID="scheduleHomeImg" runat="server" ImageUrl="http://placehold.it/140x100" />
                    </td>
                    <td>
            <asp:Image ID="invigHomeImg" runat="server" ImageUrl="http://placehold.it/140x100" />
                    </td>
                    <td>
            <asp:Image ID="jobPostImgHome" runat="server" ImageUrl="http://placehold.it/140x100" />
                    </td>
                    <td>
            <asp:Image ID="onlineProgramsHomeImg" runat="server" ImageUrl="http://placehold.it/140x100" />

                    </td>
                </tr>
                <tr>
                    <td>easy-to-use search</td>
                    <td>schedule</td>
                    <td>invigilation centers</td>
                    <td>job postings</td>
                    <td>online programs</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
