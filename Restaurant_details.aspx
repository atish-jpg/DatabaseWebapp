<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Restaurant_details.aspx.cs"  MasterPageFile="~/Site.Master" Inherits="DatabaseCW.Resturant_details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class ="RestaurantHeadings">
        <h1>Insertion of Restaurant Details</h1>
         </div>
        <div class ="Dish_field">
        <asp:Label class="Labels" ID="Rid" runat="server" Text="Restaurant id:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="TextField" ID="RidTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="Rname" runat="server" Text="Restaurant name:"></asp:Label>
        &nbsp;<asp:TextBox class="TextField" ID="RnameTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="Raddress" runat="server" Text="Address:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="TextField" ID="RaddressTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="ROwner" runat="server" Text="Owner name:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="TextField" ID="ROwnerTXT" runat="server"></asp:TextBox><br /><br />
        <asp:Label class="Labels" ID="Rphone" runat="server" Text="Phone number:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="TextField" ID="RphoneTXT" runat="server"></asp:TextBox>
        <asp:Button class="InsertBTN" ID="InsertBTN" runat="server" Text="Insert" OnClick="InsertBTN_Click" /><br />
        </div>
           <asp:GridView class= "GridData" ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="RESTAURANT_ID" DataSourceID="Restaurantdata" CellPadding="0" BorderStyle="None">
            <EditRowStyle Height="0px" Width="0px" Wrap="True" />
            <HeaderStyle BackColor="#5D7B9D" ForeColor="White" font-size="12px" Height="27px" />
               <Columns>
                   <asp:BoundField DataField="RESTAURANT_ID" HeaderText="RESTAURANT_ID" ReadOnly="True" SortExpression="RESTAURANT_ID" />
                   <asp:BoundField DataField="RESTAURANT_NAME" HeaderText="RESTAURANT_NAME" SortExpression="RESTAURANT_NAME" />
                   <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                   <asp:BoundField DataField="PHONE_NO" HeaderText="PHONE_NO" SortExpression="PHONE_NO" />
                   <asp:BoundField DataField="OWNER" HeaderText="OWNER" SortExpression="OWNER" />
               </Columns>
               <RowStyle ForeColor="#BCC6CC" Height="27px" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <asp:SqlDataSource ID="Restaurantdata" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" DeleteCommand="DELETE FROM RESTAURANT WHERE (RESTAURANT_ID = :RESTAURANT_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="select * from Restaurant" UpdateCommand="UPDATE RESTAURANT SET RESTAURANT_NAME = :Restaurant_name, ADDRESS = :Address, PHONE_NO = :Phone_no, OWNER = :Owner WHERE (RESTAURANT_ID= :RESTAURANT_ID)">
                <DeleteParameters>
                    <asp:Parameter Name="RESTAURANT_ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Restaurant_id" />
                    <asp:Parameter Name="Restaurant_name" />
                    <asp:Parameter Name="Address" />
                    <asp:Parameter Name="Phone_no" />
                    <asp:Parameter Name="Owner" />
                    <asp:Parameter Name="RESTAURANT_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </asp:Content>
