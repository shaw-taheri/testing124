<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RegFormSubmit.aspx.cs" Inherits="Skejooler.RegFormSubmit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--

    Page Title:     Registration form submission confirmation
    Page Author(s): HTML - Sam Humphrey
                    CSS - Sam Humphrey
                    Bootstrap - Sam Humprey
    Decription:     Provides confirmation message that an examinee's registration form has been successfully submitted to the database. 

    -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid reg-form-container">
        <div class="row submit-reg-form-row">
            <div class="col-md-12">        
                <div class="row reg-form-submit-title">
                    <h1>Your registration form has been submitted!</h1>
                </div>
                <div class="row reg-form-submit-subtitle">
                    <h2>A Skejooler adminstrator will contact you when your registration has been approved.</h2>
                </div>
            </div><!--end col-md-12-->
        </div>
    </div><!--end reg-form-container-->
</asp:Content>
