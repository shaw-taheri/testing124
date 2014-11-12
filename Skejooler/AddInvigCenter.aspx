<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddInvigCenter.aspx.cs" Inherits="Skejooler.AddInvigilationCenterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid add-invig-container">
        <div class="col-md-12">
            <div class="row add-invig-title">
                <h1>Add Invigilation Center</h1>
            </div>
            <div class="row invig-errors">
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
                    <asp:DropDownList ID="invigFormOnline" runat="server">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="invigFormOnlineReq" runat="server" ControlToValidate="invigFormOnline" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl">Cost<span>:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormCost" runat="server"  Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormWebsiteReq" runat="server" ControlToValidate="invigFormCost" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl">Longitude<span>:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormLongitude" runat="server"  Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormEmailReq" runat="server" ControlToValidate="invigFormLongitude" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl">Latitude<span>:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormLatitude" runat="server"  Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormFeeReq" runat="server" ControlToValidate="invigFormLatitude" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row invig-form-row">
                <div class="col-md-5 invig-form-lbl"></div>
                <div class="col-md-4">
                </div>
            </div>
            <div class="row submit-button reg-form-row">
                <asp:Button ID="InvigFormSubmit" runat="server" Text="Submit" CssClass="regform-submit" OnClick="InvigFormSubmit_Click" />
            </div>
        </div>
    </div>
</asp:Content>
