<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="Skejooler.Map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/Style.css" rel="stylesheet" />    
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?libraries=places?key=AIzaSyCTKSdSyVw_EXKaW_IubVgS6g0izh6_6R4">
    </script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <div class="container map-container">
        <div class="col-md-12">
            <div class="row filter-bar">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="CityDropDown" DataTextField="city" DataValueField="city" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="row map-row">
                <div class="col-md-6 map-col">
                    <div id="mapArea"></div>
                </div>
                <div class="col-md-6 list-col">
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>     
                    <div class="well results-well">
                        <div id="dataList">
                            <asp:SqlDataSource ID="CityDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:invigSkejoolerConnectionString %>" ProviderName="<%$ ConnectionStrings:invigSkejoolerConnectionString.ProviderName %>" SelectCommand="SELECT * FROM invigilation_centre GROUP BY city"></asp:SqlDataSource>
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="CentreList">
                                <ItemTemplate>
                                    <table class="results-tbl">
                                        <tr>
                                            <td class="results-lbl"><span>Center: </span></td>
                                            <td><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /></td>
                                        </tr>
                                        <tr>
                                            <td class="results-lbl"><span>Street: </span></td>
                                            <td><asp:Label ID="street_nameLabel" runat="server" Text='<%# Eval("street_name") %>' /></td>
                                        </tr>
                                        <tr>
                                            <td class="results-lbl"><span>City: </span></td>
                                            <td><asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' /></td>
                                        </tr>
                                        <tr>
                                            <td class="results-lbl"><span>Province: </span></td>
                                            <td><asp:Label ID="provinceLabel" runat="server" Text='<%# Eval("province") %>' /></td>
                                        </tr>
                                        <tr>
                                            <td class="results-lbl"><span>Postal: </span></td>
                                            <td><asp:Label ID="postal_codeLabel" runat="server" Text='<%# Eval("postal_code") %>' /></td>
                                        </tr>
                                        <tr>
                                            <td class="results-lbl"><span>Phone: </span></td>
                                            <td><asp:Label ID="phone_numLabel" runat="server" Text='<%# Eval("phone_num") %>' /></td>
                                        </tr>
                                        <tr>
                                            <td class="results-lbl"><span>Cost: </span></td>
                                            <td><asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' /></td>
                                        </tr>               
                                    </table>
                                    <hr />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="CentreList" runat="server" ConnectionString="<%$ ConnectionStrings:invigSkejoolerConnectionString %>" ProviderName="<%$ ConnectionStrings:invigSkejoolerConnectionString.ProviderName %>" SelectCommand="SELECT name, street_name, city, province, postal_code, phone_num, cost FROM invigilation_centre WHERE city='Vancouver'">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="city" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



