<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddInvigCenter.aspx.cs" Inherits="Skejooler.AddInvigilationCenterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container add-invig-container">
        <div class="col-md-12">
            <div class="row add-invig-title">
                <h1>Add Invigilation Center</h1>
            </div>
            <div class="row regform-errors">
                <asp:ValidationSummary ID="invigFormValidationSum" runat="server" DisplayMode="List" ForeColor="Red" HeaderText="There was an error in submitting the form. Please ensure all information is included and in the right format." />
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Name:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormName" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="invigFormName" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="invigFormName" EnableClientScript="False" ForeColor="Red" ValidationExpression="[a-zA-z]+([ '-][a-zA-Z]+)*">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>City:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormCity" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormCityReq" runat="server" ControlToValidate="invigFormCity" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Province:</span></div>
                <div class="col-md-4">
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
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Address:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormAddress" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormAddressReq" runat="server" ControlToValidate="invigFormAddress" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Postal Code:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormPostal" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormPostalReq" runat="server" ControlToValidate="invigFormPostal" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Phone Number:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormNumber" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormNumberReq" runat="server" ForeColor="Red" ControlToValidate="invigFormNumber" EnableClientScript="False">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="invigFormNumberVal" runat="server" ControlToValidate="invigFormNumber" EnableClientScript="False" ForeColor="Red" ValidationExpression="^(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Online Exams?</span></div>
                <div class="col-md-4">
                    <asp:RadioButtonList ID="invigFormOnline" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Text="Yes"></asp:ListItem>
                    <asp:ListItem Text="No"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="invigFormOnlineReq" runat="server" ControlToValidate="invigFormOnline" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Website:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormWebsite" runat="server"  Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormWebsiteReq" runat="server" ControlToValidate="invigFormWebsite" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Email:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormEmail" runat="server"  Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormEmailReq" runat="server" ControlToValidate="invigFormEmail" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="invigFormEmailVal" runat="server" ControlToValidate="invigFormEmail" EnableClientScript="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Invigilation Fee:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormFee" runat="server"  Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormFeeReq" runat="server" ControlToValidate="invigFormFee" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"><span>Additional Notes:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormNotes" runat="server"  Width="400px" Height="94px" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <div class="row submit-button reg-form-row">
                <asp:Button ID="InvigFormSubmit" runat="server" Text="Submit" CssClass="regform-submit" />
            </div>
        </div>
    </div>
</asp:Content>
