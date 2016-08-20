<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Billing details.aspx.vb" Inherits="Billing_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Chi Tiet Hoa Don</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="SanPham_MaSP" HeaderText="SanPham_MaSP" SortExpression="SanPham_MaSP" />
            <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
            <asp:BoundField DataField="HoaDon_MaHD" HeaderText="HoaDon_MaHD" SortExpression="HoaDon_MaHD" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhang_dunghuyenConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ChiTietHoaDon] ([ID], [SanPham_MaSP], [SoLuong], [HoaDon_MaHD]) VALUES (@ID, @SanPham_MaSP, @SoLuong, @HoaDon_MaHD)" SelectCommand="SELECT [ID], [SanPham_MaSP], [SoLuong], [HoaDon_MaHD] FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SanPham_MaSP] = @SanPham_MaSP, [SoLuong] = @SoLuong, [HoaDon_MaHD] = @HoaDon_MaHD WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="SanPham_MaSP" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="HoaDon_MaHD" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SanPham_MaSP" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="HoaDon_MaHD" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>

