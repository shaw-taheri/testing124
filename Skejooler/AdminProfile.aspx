<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="Skejooler.AdminProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--

    Page Title:     Administrator Dashboard - Review Registration Forms
    Page Author(s): HTML & ASP - Trevor Wilson & Sam Humphrey
                    C# - Trevor Wilson & Shaw Taheri
                    CSS - Sam Humphrey
                    Bootstrap - Sam Humprey
    Decription:     Allows administrators to view all submitted registration forms in a sortable gridview.  
                    Administrators can choose to view a selected form's details in a more print-friendly format.
    
    -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="col-md-12">
            <div class="row admin-title">
                <h1>Administrator Dashboard</h1>
            </div>
            <div class="row admin-nav-tabs">
                <ul class="nav nav-tabs nav-justified">
                    <li role="presentation" class="active"><a href="AdminProfile.aspx">Review Registration Forms</a></li>
                    <li role="presentation"><a href="AddInvigCenter.aspx">Add Invigilation Centres</a></li>
                </ul>
            </div>
            <div class="row add-gridview-title">
                <h2>Registration Forms</h2>
            </div>
            <div class="row row-gridview">
                <div class="admin-gridview-div">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="form_Id" DataSourceID="SqlDataSource1" AllowPaging="True">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Print Format" ShowEditButton="False" ControlStyle-BackColor="#1DA696" ControlStyle-ForeColor="White" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="Examinee First Name" HeaderText="Examinee First Name" SortExpression="Examinee First Name" />
                            <asp:BoundField DataField="Examinee Last Name" HeaderText="Examinee Last Name" SortExpression="Examinee Last Name" />
                            <asp:BoundField DataField="Examinee Email" HeaderText="Examinee Email" SortExpression="Examinee Email" />
                            <asp:BoundField DataField="Examinee Preferred Date 1" HeaderText="Examinee Preferred Date 1" SortExpression="Examinee Preferred Date 1" />
                            <asp:BoundField DataField="Examinee Preferred Date 2" HeaderText="Examinee Preferred Date 2" SortExpression="Examinee Preferred Date 2" />
                            <asp:BoundField DataField="Preferred Time" HeaderText="Preferred Time" SortExpression="Preferred Time" />
                            <asp:BoundField DataField="School Name" HeaderText="School Name" SortExpression="School Name" />
                            <asp:BoundField DataField="Street Name" HeaderText="Street Name" SortExpression="Street Name" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            <asp:BoundField DataField="Province" HeaderText="Province" SortExpression="Province" />
                            <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                            <asp:BoundField DataField="Contact Number" HeaderText="Contact Number" SortExpression="Contact Number" />
                            <asp:BoundField DataField="Contact Email" HeaderText="Contact Email" SortExpression="Contact Email" />
                            <asp:BoundField DataField="Course Number" HeaderText="Course Number" SortExpression="Course Number" />
                            <asp:BoundField DataField="Additional Requirements" HeaderText="Additional Requirements" SortExpression="Additional Requirements" />
                            <asp:BoundField DataField="form_Id" HeaderText="form_Id" InsertVisible="False" ReadOnly="True" SortExpression="form_Id" />
                            <asp:CheckBoxField DataField="Fee Covered" HeaderText="Fee Covered" SortExpression="Fee Covered" />
                            <asp:CheckBoxField DataField="Post Covered" HeaderText="Post Covered" SortExpression="Post Covered" />
                            <asp:CheckBoxField DataField="Approval Status" HeaderText="Approval Status" SortExpression="Approval Status" />
                            <asp:BoundField DataField="Midterm/Final" HeaderText="Midterm/Final" SortExpression="Midterm/Final" />
                            <asp:BoundField DataField="Paper/Online" HeaderText="Paper/Online" SortExpression="Paper/Online" />
                            <asp:BoundField DataField="Centre Name" HeaderText="Centre Name" SortExpression="Centre Name" />
                            <asp:BoundField DataField="Centre Phone Number" HeaderText="Centre Phone Number" SortExpression="Centre Phone Number" />
                            <asp:BoundField DataField="Centre City" HeaderText="Centre City" SortExpression="Centre City" />
                            <asp:BoundField DataField="Centre Street" HeaderText="Centre Street" SortExpression="Centre Street" />
                            <asp:BoundField DataField="Centre Province" HeaderText="Centre Province" SortExpression="Centre Province" />
                            <asp:BoundField DataField="Centre Postal Code" HeaderText="Centre Postal Code" SortExpression="Centre Postal Code" />
                        </Columns>
                        <HeaderStyle BackColor="#1DA696" ForeColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:skejoolerConnect %>" ProviderName="<%$ ConnectionStrings:skejoolerConnect.ProviderName %>" SelectCommand="SELECT registration_form.form_Id, registration_form.date_submitted AS 'Date', registration_form.fName AS 'Examinee First Name', registration_form.lName AS 'Examinee Last Name',registration_form.email AS 'Examinee Email', registration_form.preferred_date1 AS 'Examinee Preferred Date 1', registration_form.preferred_date2 AS 'Examinee Preferred Date 2', registration_form.preferred_time AS 'Preferred Time', registration_form.school_name AS 'School Name', registration_form.school_street_name AS 'Street Name', registration_form.school_city AS 'City', registration_form.school_province AS 'Province', registration_form.school_contact AS 'Contact', registration_form.school_contact_num AS 'Contact Number', registration_form.school_contact_email AS 'Contact Email', registration_form.course_num AS 'Course Number', registration_form.additional_req AS 'Additional Requirements', registration_form.fee_covered AS 'Fee Covered', registration_form.post_covered AS 'Post Covered', registration_form.approval_status AS 'Approval Status', registration_form.test_mid_final AS 'Midterm/Final', registration_form.test_paper_online AS 'Paper/Online', invigilation_centre.name AS 'Centre Name', invigilation_centre.phone_num AS 'Centre Phone Number', invigilation_centre.city AS 'Centre City', invigilation_centre.street_name AS 'Centre Street', invigilation_centre.province AS 'Centre Province', invigilation_centre.postal_code AS 'Centre Postal Code' FROM registration_form
                        INNER JOIN invigilation_centre 
                        ON registration_form.centre_Id = invigilation_centre.centre_Id;">
                    </asp:SqlDataSource>
                </div>
                <div class="row print-view">
                    <asp:DetailsView runat="server" DataSourceID="SqlDataSource2" Height="50px" Width="500px" HeaderText="Registration Form Details" HeaderStyle-ForeColor="White" HeaderStyle-BackColor="#1DA696" CellPadding="10" HorizontalAlign="Left">
                        <HeaderStyle BackColor="#1DA696" ForeColor="White" HorizontalAlign="Center"></HeaderStyle>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:skejoolerConnect %>" ProviderName="<%$ ConnectionStrings:skejoolerConnect.ProviderName %>" SelectCommand="SELECT registration_form.*, invigilation_centre.name AS 'Invigilation Centre' FROM registration_form INNER JOIN invigilation_centre ON registration_form.centre_Id = invigilation_centre.centre_Id WHERE (form_Id = ?form_Id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="form_Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
