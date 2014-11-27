<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AddInvigCenter.aspx.cs" Inherits="Skejooler.AddInvigilationCenterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container add-invig-container">
        <div class="col-md-12">
            <div class="row admin-title">
                <h1>Administrator Dashboard</h1>
            </div>
            <div class="row admin-nav-tabs">
                <ul class="nav nav-tabs nav-justified">
                    <li role="presentation"><a href="AdminProfile.aspx">Review Registration Forms</a></li>
                    <li role="presentation" class="active"><a href="AddInvigCenter.aspx">Add Invigilation Centres</a></li>
                </ul>
            </div>
            <div class="row add-gridview-title">
                <h2>Invigilation Centres</h2>
            </div>
            <div class="row">
                <div class="add-gridview">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="InvigFormSource" AllowPaging="True" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Centre ID">
                        <Columns>
                            <asp:TemplateField HeaderText="Alter Information">
                                <EditItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </EditItemTemplate>
                                
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                     <span onclick="return confirm('Are you sure you want to delete this centre?')">
                                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Centre Name" HeaderText="Centre Name" SortExpression="Centre Name">
                            </asp:BoundField>
                            <asp:BoundField DataField="Centre City" HeaderText="Centre City" SortExpression="Centre City">
                            </asp:BoundField>
                            <asp:BoundField DataField="Centre Address" HeaderText="Centre Address" SortExpression="Centre Address">
                            </asp:BoundField>
                            <asp:BoundField DataField="Center Phone Number" HeaderText="Center Phone Number" SortExpression="Center Phone Number">
                            </asp:BoundField>
                            <asp:BoundField DataField="Centre Postal Code" HeaderText="Centre Postal Code" SortExpression="Centre Postal Code">
                            </asp:BoundField>
                            <asp:BoundField DataField="Centre Province" HeaderText="Centre Province" SortExpression="Centre Province">
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="Online?" HeaderText="Online?" SortExpression="Online?">
                            </asp:CheckBoxField>
                            <asp:BoundField DataField="Center Cost" HeaderText="Center Cost" SortExpression="Center Cost">
                            </asp:BoundField>
                            <asp:BoundField DataField="Centre Longitude" HeaderText="Centre Longitude" SortExpression="Centre Longitude">
                            </asp:BoundField>
                            <asp:BoundField DataField="Centre Latitude" HeaderText="Centre Latitude" SortExpression="Centre Latitude">
                            </asp:BoundField>
                        </Columns>
                        <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="First |" LastPageText="Last" NextPageText="Next |" PreviousPageText="Previous |" />
                        <PagerStyle backcolor="#1DA696" verticalalign="Bottom" horizontalalign="Center" ForeColor="White" />
                    </asp:GridView>
                </div>
                <asp:SqlDataSource ID="InvigFormSource" runat="server" ConnectionString="<%$ ConnectionStrings:skejoolerConnect %>" ProviderName="<%$ ConnectionStrings:skejoolerConnect.ProviderName %>" SelectCommand="SELECT centre_id AS 'Centre ID', name AS 'Centre Name', city AS 'Centre City', street_name AS 'Centre Address', phone_num AS 'Center Phone Number', postal_code AS 'Centre Postal Code', province AS 'Centre Province', online AS 'Online?', cost AS 'Center Cost', longitude AS 'Centre Longitude', latitude AS 'Centre Latitude' FROM invigilation_centre ORDER BY city, name;" DeleteCommand="SELECT * FROM invigilation_centre;"></asp:SqlDataSource>
            </div>
            <div class="row add-gridview-title">
                <h2>Add a new Invigilation Centre</h2>
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
                <div class="col-md-5 invig-form-lbl">Latitude<span>:</span></div>
                <div class="col-md-4">
                    <asp:TextBox ID="invigFormLatitude" runat="server"  Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="invigFormFeeReq" runat="server" ControlToValidate="invigFormLatitude" EnableClientScript="False" ForeColor="Red">*</asp:RequiredFieldValidator>
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
