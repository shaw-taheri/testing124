<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddInvigilationCenterForm.aspx.cs" Inherits="Skejooler.AddInvigilationCenterForm" %>
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
                        <td>City: </td>
                        <td>
                            <asp:TextBox ID="invigFormCity" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormCityReq" runat="server" ControlToValidate="invigFormCity" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                        <td>Phone Number: </td>
                        <td>
                            <asp:TextBox ID="invigFormNumber" runat="server" Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormNumberReq" runat="server" ForeColor="Red" ControlToValidate="invigFormNumber" EnableClientScript="False">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="invigFormNumberVal" runat="server" ControlToValidate="invigFormNumber" EnableClientScript="False" ForeColor="Red" ValidationExpression="^(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$">*</asp:RegularExpressionValidator>
                        </td>
                    </tr><tr>
                        <td>Online Exams? </td>
                        <td>
                            <asp:RadioButtonList ID="invigFormOnline" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="invigFormOnlineReq" runat="server" ControlToValidate="invigFormOnline" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr><tr>
                        <td>Website: </td>
                        <td>
                            <asp:TextBox ID="invigFormWebsite" runat="server"  Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormWebsiteReq" runat="server" ControlToValidate="invigFormWebsite" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr><tr>
                        <td>Email: </td>
                        <td>
                            <asp:TextBox ID="invigFormEmail" runat="server"  Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormEmailReq" runat="server" ControlToValidate="invigFormEmail" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="invigFormEmailVal" runat="server" ControlToValidate="invigFormEmail" EnableClientScript="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr><tr>
                        <td>Invigilation Fee: </td>
                        <td>
                            <asp:TextBox ID="invigFormFee" runat="server"  Width="550px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="invigFormFeeReq" runat="server" ControlToValidate="invigFormFee" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr><tr>
                        <td>Additional Notes: </td>
                        <td>
                            <asp:TextBox ID="invigFormNotes" runat="server"  Width="550px" Height="94px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="invigFormValidationSum" runat="server" DisplayMode="List" ForeColor="Red" HeaderText="There was an error in submitting the form. Please ensure all information is included and in the right format." />
                <br />
                <asp:Button ID="InvigFormSubmit" runat="server" Text="Submit" />
                <br />
            </div>
    </body>
</html>
    </asp:Content>
