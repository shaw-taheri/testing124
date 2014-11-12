<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddInvigCenter.aspx.cs" Inherits="Skejooler.AddInvigilationCenterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Examinee Registration Form</title>
</head>
    <body>
        <h1>Add Invigilation Center</h1>
            <div>
                <table style="width:75%;">
                    <tr>
                        <td>Name: </td>
                        <td>
                            <asp:TextBox ID="invigFormName" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormNameReq" runat="server" ControlToValidate="invigFormName" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="invigFormNameVal" runat="server" ControlToValidate="invigFormName" EnableClientScript="False" ForeColor="Red" ValidationExpression="[a-zA-z]+([ '-][a-zA-Z]+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone Number:&nbsp; </td>
                        <td>
                            <asp:TextBox ID="invigFormPhone" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormPhoneReq" runat="server" ControlToValidate="invigFormPhone" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Province:</td>
                        <td>
                            <asp:DropDownList ID="invigFormProv" runat="server">
                                <asp:ListItem>BC</asp:ListItem>
                                <asp:ListItem>AB</asp:ListItem>
                                <asp:ListItem>SK</asp:ListItem>
                                <asp:ListItem>MB</asp:ListItem>
                                <asp:ListItem>ON</asp:ListItem>
                                <asp:ListItem>QC</asp:ListItem>
                                <asp:ListItem>PE</asp:ListItem>
                                <asp:ListItem>NB</asp:ListItem>
                                <asp:ListItem>NS</asp:ListItem>
                                <asp:ListItem>YT</asp:ListItem>
                                <asp:ListItem>NT</asp:ListItem>
                                <asp:ListItem>NU</asp:ListItem>
                                <asp:ListItem>NL</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Address: </td>
                        <td>
                            <asp:TextBox ID="invigFormAddress" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormAddressReq" runat="server" ControlToValidate="invigFormAddress" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr><tr>
                        <td>Postal Code: </td>
                        <td>
                            <asp:TextBox ID="invigFormPostal" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormPostalReq" runat="server" ControlToValidate="invigFormPostal" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr><tr>
                        <td>Online Exams? </td>
                        <td>
                            <asp:RadioButtonList ID="invigFormOnline" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem Value="1">Yes</asp:ListItem>
                                <asp:ListItem Value="0">No</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="invigFormOnlineReq" runat="server" ControlToValidate="invigFormOnline" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr><tr>
                        <td>Cost: </td>
                        <td>
                            <asp:TextBox ID="invigFormCost" runat="server"  Width="550px"></asp:TextBox>
                        </td>
                    </tr><tr>
                        <td>Longitude:&nbsp; </td>
                        <td>
                            <asp:TextBox ID="invigFormLongitude" runat="server"  Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormLongitudeReq" runat="server" ControlToValidate="invigFormLongitude" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr><tr>
                        <td>Latitude:&nbsp; </td>
                        <td>
                            <asp:TextBox ID="invigFormLatitude" runat="server"  Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormLatitudeReq" runat="server" ControlToValidate="invigFormLatitude" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr><tr>
                        <td>City: </td>
                        <td>
                            <asp:TextBox ID="invigFormCity" runat="server"  Width="550px" Height="22px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormCityReq" runat="server" ControlToValidate="invigFormCity" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="invigFormValidationSum" runat="server" DisplayMode="List" ForeColor="Red" HeaderText="There was an error in submitting the form. Please ensure all information is included and in the right format." />
                <br />
                <asp:Button ID="InvigFormSubmit" runat="server" Text="Submit" OnClick="InvigFormSubmit_Click" />
                <br />
            </div>
    </body>
</html>
    </asp:Content>
