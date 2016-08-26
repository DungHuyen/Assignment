<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Bill.aspx.vb" Inherits="Bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Hóa Đơn</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
            <asp:BoundField DataField="NgayLap" HeaderText="NgayLap" SortExpression="NgayLap" />
            <asp:BoundField DataField="KhachHang_MaKH" HeaderText="KhachHang_MaKH" SortExpression="KhachHang_MaKH" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhang_dunghuyenConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [NgayLap], [KhachHang_MaKH]) VALUES (@MaHD, @NgayLap, @KhachHang_MaKH)" SelectCommand="SELECT [MaHD], [NgayLap], [KhachHang_MaKH] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [KhachHang_MaKH] = @KhachHang_MaKH WHERE [MaHD] = @MaHD">
        <DeleteParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaHD" Type="Int32" />
            <asp:Parameter Name="NgayLap" Type="DateTime" />
            <asp:Parameter Name="KhachHang_MaKH" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NgayLap" Type="DateTime" />
            <asp:Parameter Name="KhachHang_MaKH" Type="Int32" />
            <asp:Parameter Name="MaHD" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

