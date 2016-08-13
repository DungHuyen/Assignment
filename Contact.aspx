<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Dorothy.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            0965083529</p>
        <p>
            <span class="label">After Hours:</span> 0973982296</p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            Dungntpph03664<span><a href="mailto:Support@example.com">@fpt.edu.</a>vn</span>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <span class="label">General:</span>
            Hu<span>yenttph03745<a href="mailto:General@example.com">@</a><a href="mailto:Support@example.com">@fpt.edu.</a>vn</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Khu đô thị Văn Phú</p>
    </section>
</asp:Content>