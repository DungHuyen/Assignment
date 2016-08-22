<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        
        <h2>Liên hệ</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span>
            0965083529</p>
        <p>
            <span class="label">After Hours:</span> 0973982296
            </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span>Dungntpph03664@fpt.edu.vn</span>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <span class="label">General:</span>
            <span>Huyenttph03745@fpt.edu.vn</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            Khu đô thị Văn Phú</p>
    </section>
    <section class="contact">
        <iframe src="https://www.google.com/maps/d/embed?mid=1DkG9mzg1-1prM2hnyR3e7G4ZhoM" width="640" height="480"></iframe>
    </section>
</asp:Content>