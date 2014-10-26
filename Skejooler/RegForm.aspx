﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="Skejooler.RegForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Examinee Registration Form</title>
</head>
<body>
  <h1>Exam Registration Form</h1>
    <h2>Examinee Information</h2>
        <div id="examineeInfo">
            <table style="width:75%">
                <tr>
                    <td>First / Last Name:&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="examineeName" runat="server" Width="550px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="nameRequired" runat="server" ControlToValidate="examineeName" 
                            ForeColor="Red" EnableClientScript="False">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regExpExamineeName" runat="server" ControlToValidate="examineeName" EnableClientScript="False" ForeColor="Red" ValidationExpression="[a-zA-z]+([ '-][a-zA-Z]+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Phone Number: </td>
                    <td>
                        <asp:TextBox ID="examineeNumber" runat="server" Width="550px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="phoneNumberReq" runat="server" ControlToValidate="examineeNumber" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="examineePhoneReg" runat="server" ControlToValidate="examineeNumber" EnableClientScript="False" ForeColor="Red" ValidationExpression="^(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Address: </td>
                    <td>
                        <asp:TextBox ID="examineeEmail" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Exam Date (First Choice) : </td>
                    <td>
                        <asp:TextBox ID="examinee1stDate" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Exam Date (Second Choice): </td>
                    <td>
                        <asp:TextBox ID="examinee2ndDate" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Preferred Appointment Time: </td>
                    <td>
                        <asp:TextBox ID="appointTime" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />

        </div>

    <h2>Institutional Information</h2>
        <div id="institutionInfo">
            <table style="width:75%">
                <tr>
                    <td>Name: </td>
                      <td>
                        <asp:TextBox ID="institutionName" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                      <td>
                        <asp:TextBox ID="instAddress" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Name of Contact Person:</td>
                      <td>
                        <asp:TextBox ID="instiContactPerson" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone Number of Contact Person: </td>
                      <td>
                        <asp:TextBox ID="instiContactNumber" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email of Contact Person: </td>
                      <td>
                        <asp:TextBox ID="contactEmail" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />

        </div>

    <h2>Exam Information</h2>
        <div id="examInfo">
            <table style="width:75%">
                <tr>
                    <td>Course Number: </td>
                    <td>
                        <asp:TextBox ID="courseNumber" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Midterm or Final: </td>
                    <td>
                        <asp:RadioButtonList ID="midOrFinal" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Midterm</asp:ListItem>
                            <asp:ListItem>Final</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Type of Exam: </td>
                    <td>
                        <asp:RadioButtonList ID="examType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Paper</asp:ListItem>
                            <asp:ListItem>Computer</asp:ListItem>
                            <asp:ListItem>Online</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Computer Required: </td>
                    <td>
                        <asp:RadioButtonList ID="compReq" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Additional Requirements or Information: </td>
                    <td>
                        <asp:TextBox ID="additionalInfo" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Invigilation Fee Covered by Institution: </td>
                    <td>
                        <asp:TextBox ID="invigFee" runat="server" Width="550px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:ValidationSummary ID="regFormValidationSum" runat="server" DisplayMode="List" ForeColor="Red" HeaderText="There was an error in submitting the form. Please ensure all information is included and in the right format." />
            <br />
            <asp:Button ID="regFormSubmit" runat="server" Text="Submit" />
            <br />

        </div>
</body>
</html>

</asp:Content>
