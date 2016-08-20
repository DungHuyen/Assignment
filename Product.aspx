<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Product.aspx.vb" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Sản phẩm</h3>
    <ol class="round">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Fields>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
                <asp:BoundField DataField="PhanLoai" HeaderText="PhanLoai" SortExpression="PhanLoai" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="GiaTien" HeaderText="GiaTien" SortExpression="GiaTien" />
                <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlybanhang_dunghuyenConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [MaLSP], [PhanLoai], [TenSP], [GiaTien], [MoTa]) VALUES (@MaSP, @MaLSP, @PhanLoai, @TenSP, @GiaTien, @MoTa)" SelectCommand="SELECT [MaSP], [MaLSP], [PhanLoai], [TenSP], [GiaTien], [MoTa] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaLSP] = @MaLSP, [PhanLoai] = @PhanLoai, [TenSP] = @TenSP, [GiaTien] = @GiaTien, [MoTa] = @MoTa WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="MaLSP" Type="Int32" />
                <asp:Parameter Name="PhanLoai" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="GiaTien" Type="Decimal" />
                <asp:Parameter Name="MoTa" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaLSP" Type="Int32" />
                <asp:Parameter Name="PhanLoai" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="GiaTien" Type="Decimal" />
                <asp:Parameter Name="MoTa" Type="String" />
                <asp:Parameter Name="MaSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </ol>
</asp:Content>

