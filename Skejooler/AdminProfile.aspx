<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="Skejooler.AdminProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="form_Id" DataSourceID="SqlDataSource1" CssClass="admin-gridview">
    <Columns>
        <asp:BoundField DataField="form_Id" HeaderText="form_Id" InsertVisible="False" ReadOnly="True" SortExpression="form_Id" />
        <asp:BoundField DataField="fName" HeaderText="fName" SortExpression="fName" />
        <asp:BoundField DataField="lName" HeaderText="lName" SortExpression="lName" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="preferred_date1" HeaderText="preferred_date1" SortExpression="preferred_date1" />
        <asp:BoundField DataField="preferred_date2" HeaderText="preferred_date2" SortExpression="preferred_date2" />
        <asp:BoundField DataField="preferred_time" HeaderText="preferred_time" SortExpression="preferred_time" />
        <asp:BoundField DataField="school_name" HeaderText="school_name" SortExpression="school_name" />
        <asp:BoundField DataField="school_street_name" HeaderText="school_street_name" SortExpression="school_street_name" />
        <asp:BoundField DataField="school_city" HeaderText="school_city" SortExpression="school_city" />
        <asp:BoundField DataField="school_province" HeaderText="school_province" SortExpression="school_province" />
        <asp:BoundField DataField="school_contact" HeaderText="school_contact" SortExpression="school_contact" />
        <asp:BoundField DataField="school_contact_num" HeaderText="school_contact_num" SortExpression="school_contact_num" />
        <asp:BoundField DataField="school_contact_email" HeaderText="school_contact_email" SortExpression="school_contact_email" />
        <asp:BoundField DataField="course_num" HeaderText="course_num" SortExpression="course_num" />
        <asp:BoundField DataField="additional_req" HeaderText="additional_req" SortExpression="additional_req" />
        <asp:CheckBoxField DataField="fee_covered" HeaderText="fee_covered" SortExpression="fee_covered" />
        <asp:CheckBoxField DataField="post_covered" HeaderText="post_covered" SortExpression="post_covered" />
        <asp:CheckBoxField DataField="approval_status" HeaderText="approval_status" SortExpression="approval_status" />
        <asp:BoundField DataField="test_mid_final" HeaderText="test_mid_final" SortExpression="test_mid_final" />
        <asp:BoundField DataField="test_paper_online" HeaderText="test_paper_online" SortExpression="test_paper_online" />
        <asp:BoundField DataField="centre_id" HeaderText="centre_id" SortExpression="centre_id" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="phone_num" HeaderText="phone_num" SortExpression="phone_num" />
        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
        <asp:BoundField DataField="street_name" HeaderText="street_name" SortExpression="street_name" />
        <asp:BoundField DataField="province" HeaderText="province" SortExpression="province" />
        <asp:BoundField DataField="postal_code" HeaderText="postal_code" SortExpression="postal_code" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:skejoolerConnect %>" ProviderName="<%$ ConnectionStrings:skejoolerConnect.ProviderName %>" SelectCommand="SELECT registration_form.*, invigilation_centre.name, invigilation_centre.phone_num, invigilation_centre.city, invigilation_centre.street_name, invigilation_centre.province, invigilation_centre.postal_code FROM registration_form
INNER JOIN invigilation_centre 
ON registration_form.centre_Id = invigilation_centre.centre_Id;"></asp:SqlDataSource>


</asp:Content>
