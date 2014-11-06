﻿<%@ Page Title="Registration Form" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="Skejooler.RegForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
      <h1>Exam Registration Form</h1>
        <h2>Examinee Information</h2>
            <div id="examineeInfo">
                <table style="width:75%; margin-bottom: 0px;">
                    <tr>
                        <td>First Name:
                        </td>
                        <td>
                            <asp:TextBox ID="examineeFName" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="nameRequired" runat="server" ControlToValidate="examineeFName" 
                                ForeColor="Red" EnableClientScript="False">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Last Name: </td>
                        <td>
                            <asp:TextBox ID="examineeLName" runat="server" Width="550px"></asp:TextBox>
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
                            <asp:RequiredFieldValidator ID="examineeEmailReq" runat="server" ControlToValidate="examineeEmail" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="examineeEmailVal" runat="server" ControlToValidate="examineeEmail" EnableClientScript="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;Exam Date (First Choice) : </td>
                        <td>
                            <asp:TextBox ID="examinee1stDate" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="examDate1stReq" runat="server" ControlToValidate="examinee1stDate" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Exam Date (Second Choice):</td>
                        <td>
                            <asp:TextBox ID="examinee2ndDate" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="examDate2ndReq" runat="server" ControlToValidate="examinee2ndDate" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Preferred Appointment Time: </td>
                        <td>
                            <asp:RadioButtonList ID="prefAppoint" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>Morning</asp:ListItem>
                                <asp:ListItem>Afternoon</asp:ListItem>
                            </asp:RadioButtonList>
    &nbsp;<asp:RequiredFieldValidator ID="prefAppointReq" runat="server" ControlToValidate="prefAppoint" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                              <asp:RequiredFieldValidator ID="instNameReq" runat="server" ControlToValidate="institutionName" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                          <td>
                            <asp:TextBox ID="instAddress" runat="server" Width="550px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="instAddressReq" runat="server" ControlToValidate="instAddress" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Name of Contact Person:</td>
                          <td>
                            <asp:TextBox ID="instiContactPerson" runat="server" Width="550px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="instiContactPersonReq" runat="server" ControlToValidate="instiContactPerson" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="instiContactPersonVal" runat="server" ControlToValidate="instiContactPerson" EnableClientScript="False" ForeColor="Red" ValidationExpression="[a-zA-z]+([ '-][a-zA-Z]+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone Number of Contact Person: </td>
                          <td>
                            <asp:TextBox ID="instiContactNumber" runat="server" Width="550px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="instContactNumberReq" runat="server" ControlToValidate="instiContactNumber" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="instContactNumberVal" runat="server" ControlToValidate="instiContactNumber" EnableClientScript="False" ForeColor="Red" ValidationExpression="^(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Email of Contact Person: </td>
                          <td>
                            <asp:TextBox ID="contactEmail" runat="server" Width="550px"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="instContactEmailReq" runat="server" ControlToValidate="contactEmail" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="contactEmailVal" runat="server" ControlToValidate="contactEmail" EnableClientScript="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
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
                            <asp:RequiredFieldValidator ID="courseNumberReq" runat="server" ControlToValidate="courseNumber" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Midterm or Final: </td>
                        <td>
                            <asp:RadioButtonList ID="midOrFinal" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>Midterm</asp:ListItem>
                                <asp:ListItem>Final</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="midOrFinalReq" runat="server" ControlToValidate="midOrFinal" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Type of Exam: </td>
                        <td>
                            <asp:RadioButtonList ID="examType" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>Paper</asp:ListItem>
                                <asp:ListItem>Computer</asp:ListItem>
                                <asp:ListItem>Online</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="examTypeReq" runat="server" ControlToValidate="examType" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Computer Required: </td>
                        <td>
                            <asp:RadioButtonList ID="compReq" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="compReqReq" runat="server" ControlToValidate="compReq" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Additional Requirements or Information: </td>
                        <td>
                            <asp:TextBox ID="additionalInfo" runat="server" Width="550px" Height="126px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Invigilation Fee Covered by Institution: </td>
                        <td>
                            <asp:TextBox ID="invigFee" runat="server" Width="158px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="regFormValidationSum" runat="server" DisplayMode="List" ForeColor="Red" HeaderText="There was an error in submitting the form. Please ensure all information is included and in the right format." />
                <br />
                <asp:SqlDataSource ID="RegDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:skejoolerConnect %>" ProviderName="<%$ ConnectionStrings:skejoolerConnect.ProviderName %>" SelectCommand="SELECT * FROM registration_form;" InsertCommand="INSERT * INTO registration_form;"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <asp:Button ID="regFormSubmit" runat="server" Text="Submit" />
                <br />
                <br />
                <asp:Label ID="RegLabel" runat="server" ForeColor="Red"></asp:Label>
                <br />

            </div>
    </body>
</asp:Content>
