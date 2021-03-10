﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delivery_address.aspx.cs" MasterPageFile="~/Site.Master" Inherits="DatabaseCW.Delivery_address" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class ="RestaurantHeadings">
        <h1>Keep on touch for delivery</h1>
        </div>
        <div class ="Dish_field">
        <asp:Label class="Labels" ID="did" runat="server" Text="Delivery id:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="TextField" ID="didTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="dlocation" runat="server" Text="Delivery location:"></asp:Label>
        <asp:TextBox class="TextField" ID="dlocationTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="Longitude" runat="server" Text="Longitude:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="TextField" ID="lonTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="Latitude" runat="server" Text="Latitude:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="TextField" ID="latTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="dtime" runat="server" Text="Delivery time:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="TextField" ID="dtimeTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="dcharge" runat="server" Text="Delivery charge:"></asp:Label>
        &nbsp;
        <asp:TextBox class="TextField" ID="dchargeTXT" runat="server"></asp:TextBox>
        <asp:Button class="InsertBTN" ID="InsertBTN" runat="server" Text="Insert" OnClick="InsertBTN_Click" />
        </div>
            <asp:GridView class= "GridData" ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="DELIVERY_ID" DataSourceID="DeliveryAddressData" CellPadding="0" BorderStyle="None">
                <EditRowStyle Height="0px" Width="0px" Wrap="True" />
                <HeaderStyle BackColor="#5D7B9D" ForeColor="White" font-size="12px" Height="27px" />  
                <Columns>
                    <asp:BoundField DataField="DELIVERY_ID" HeaderText="DELIVERY_ID" ReadOnly="True" SortExpression="DELIVERY_ID" />
                    <asp:BoundField DataField="DELIVERY_LOCATION" HeaderText="DELIVERY_LOCATION" SortExpression="DELIVERY_LOCATION" />
                    <asp:BoundField DataField="DELIVERY_TIME" HeaderText="DELIVERY_TIME" SortExpression="DELIVERY_TIME" />
                    <asp:BoundField DataField="DELIVERY_CHARGE" HeaderText="DELIVERY_CHARGE" SortExpression="DELIVERY_CHARGE" />
                    <asp:BoundField DataField="LONGITUDE" HeaderText="LONGITUDE" SortExpression="LONGITUDE" />
                    <asp:BoundField DataField="LATITUDE" HeaderText="LATITUDE" SortExpression="LATITUDE" />
                </Columns>
                <RowStyle ForeColor="#BCC6CC" Height="27px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <asp:SqlDataSource ID="DeliveryAddressData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" DeleteCommand="DELETE FROM DELIVERY_ADDRESS where (DELIVERY_ID = :DELIVERY_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="select * from Delivery_address" UpdateCommand="UPDATE DELIVERY_ADDRESS SET DELIVERY_LOCATION = :Delivery_location, DELIVERY_TIME = :Delivery_time, DELIVERY_CHARGE = :Delivery_charge, LONGITUDE = :longitude, LATITUDE = :latitude WHERE (DELIVERY_ID = :DELIVERY_ID)">
                <DeleteParameters>
                    <asp:Parameter Name="DELIVERY_ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Delivery_location" />
                    <asp:Parameter Name="Delivery_time" />
                    <asp:Parameter Name="Delivery_charge" />
                    <asp:Parameter Name="longitude" />
                    <asp:Parameter Name="latitude" />
                    <asp:Parameter Name="DELIVERY_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
</asp:Content>
