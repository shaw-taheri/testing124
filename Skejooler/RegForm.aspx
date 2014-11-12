<%@ Page Title="Registration Form" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RegForm.aspx.cs" Inherits="Skejooler.RegForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">     
    <div class="container-fluid reg-form-container">
        <div class="col-md-12">        
            <div class="row reg-form-title">
                <h1>Exam Registration Form</h1>
            </div>
            <div class="row regform-errors reg-form-row">
                <asp:ValidationSummary ID="regFormValidationSum" runat="server" DisplayMode="List" ForeColor="#FF5959" HeaderText="Uh oh, we ran into an problem submitting your registration. Please check that everything is filled in correctly." Font-Size="Larger" />
            </div>
            <div class="row examinee-info-title">
                <h2>Examinee Information</h2>
            </div>
            <div class="row invig-centre-row">
                <div class="col-md-12 invig-centre-col">
                    <asp:DropDownList ID="centerNameDDL" runat="server" DataSourceID="RegDropDownSource" DataTextField="name" DataValueField="centre_Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="RegDropDownSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegFormConnectionString %>" ProviderName="<%$ ConnectionStrings:RegFormConnectionString.ProviderName %>" SelectCommand="SELECT centre_Id, name FROM invigilation_centre ORDER BY name;"></asp:SqlDataSource>
                </div>
            </div>
            <div class="row examinee-info">
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>First Name:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="examineeFName" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" Jane"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="nameRequired" runat="server" ControlToValidate="examineeFName" ForeColor="Red" EnableClientScript="False">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Last Name:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="examineeLName" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" Doe"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="examineeLNameReq" runat="server" ControlToValidate="examineeLName" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row  reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Phone:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="examineeNumber" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" (555) 555-5555"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="phoneNumberReq" runat="server" ControlToValidate="examineeNumber" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="examineePhoneReg" runat="server" ControlToValidate="examineeNumber" EnableClientScript="False" ForeColor="Red" ValidationExpression="^(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$">*</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Email:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="examineeEmail" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" jdoe@skejooler.com"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="examineeEmailReq" runat="server" ControlToValidate="examineeEmail" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="examineeEmailVal" runat="server" ControlToValidate="examineeEmail" EnableClientScript="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Exam Date (First Choice):</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="examinee1stDate" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" January 1, 2014"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="examDate1stReq" runat="server" ControlToValidate="examinee1stDate" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Exam Date (Second Choice):</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="examinee2ndDate" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" January 1, 2014"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="examDate2ndReq" runat="server" ControlToValidate="examinee2ndDate" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Exam Time (Preferred):</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="AppointmentTime" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" 12:00pm"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="appointmentTimeReq" runat="server" ControlToValidate="AppointmentTime" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="row institution-info-title">
                <h2>Institutional Information</h2>
            </div>
            <div class="row institutional-info">
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>School Name:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="institutionName" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" Type the name of your institution"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="instNameReq" runat="server" ControlToValidate="institutionName" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Street Adress:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="insitutionStreet" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" 123 Main Street"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="institutionStreetReq" runat="server" ControlToValidate="insitutionStreet" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>City:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="institutionCity" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" Your insititution's city"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="institutionCityReq" runat="server" ControlToValidate="institutionCity" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                    <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Province:</span></div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="institutionProvince" runat="server" CssClass="reg-text-box">
                            <asp:ListItem Selected="True">BC</asp:ListItem>
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
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Contact Name:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="instiContactPerson" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" John Smith"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="instiContactPersonReq" runat="server" ControlToValidate="instiContactPerson" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="instiContactPersonVal" runat="server" ControlToValidate="instiContactPerson" EnableClientScript="False" ForeColor="Red" ValidationExpression="[a-zA-z]+([ '-][a-zA-Z]+)*">*</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Contact Phone:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="instiContactNumber" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" (555) 555-5555"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="instContactNumberReq" runat="server" ControlToValidate="instiContactNumber" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="instContactNumberVal" runat="server" ControlToValidate="instiContactNumber" EnableClientScript="False" ForeColor="Red" ValidationExpression="^(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$">*</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Contact Email:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="contactEmail" runat="server" Width="400px" CssClass="reg-text-box" placeholder=" jsmith@school.ca"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="instContactEmailReq" runat="server" ControlToValidate="contactEmail" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="contactEmailVal" runat="server" ControlToValidate="contactEmail" EnableClientScript="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
            <div class="row exam-info-title">
                <h2>Exam Information</h2>
            </div>
            <div class="row exam-info">
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Course Number:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="courseNumber" runat="server" Width="400px" CssClass="reg-text-box"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="courseNumberReq" runat="server" ControlToValidate="courseNumber" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Midterm or Final:</span></div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="examMidOrFinal" runat="server" CssClass="reg-text-box">
                            <asp:ListItem>Midterm</asp:ListItem>
                            <asp:ListItem>Final</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Exam Type:</span></div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="typeOfExam" runat="server" CssClass="reg-text-box">
                            <asp:ListItem>Paper</asp:ListItem>
                            <asp:ListItem>Online</asp:ListItem>
                            <asp:ListItem>Computer</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Computer Required?:</span></div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="computerReq" runat="server" CssClass="reg-text-box">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Additional Requirements <br />or Information:</span></div>
                    <div class="col-md-4">
                        <asp:TextBox ID="additionalInfo" runat="server" Width="400px" Height="126px" TextMode="MultiLine" CssClass="reg-text-box"></asp:TextBox>
                    </div>
                </div>
                <div class="row reg-form-row">
                    <div class="col-md-5 reg-form-lbl"><span>Invigilation Fee <br />Covered by Intsitution:</span></div>
                    <div class="col-md-4 fee-col">
                        <asp:DropDownList ID="invigFee" runat="server" CssClass="reg-text-box">
                            <asp:ListItem Selected="True" Value="0">No</asp:ListItem>
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="row submit-button reg-form-row">
                <asp:Button ID="regFormSubmit" runat="server" Text="Submit" OnClick="regFormSubmit_Click" CssClass="regform-submit" BorderColor="#1DA696" />
            </div>
            <div class="row regform-label reg-form-row">
                <asp:Label ID="RegLabel" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div><!--end col-md-12-->
    </div><!--end reg-form-contaner-->
</asp:Content>
