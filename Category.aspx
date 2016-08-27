<%@ Page Title="Category" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Category.aspx.vb" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Danh mục sản phẩm</h3>
    <ol class="round">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaLSP" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhang_dunghuyenConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" SelectCommand="SELECT [MaLSP], [TenLSP] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @MaLSP">
            <DeleteParameters>
                <asp:Parameter Name="MaLSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaLSP" Type="Int32" />
                <asp:Parameter Name="TenLSP" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenLSP" Type="String" />
                <asp:Parameter Name="MaLSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </ol>
</asp:Content>

