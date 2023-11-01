<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AppWebAspLoginUsuario.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Register.css" />
    <h1>Registro</h1>
        <table>
        <tr>
            <td>E-mail:</td>
            <td>
                <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Senha:</td>
                <td><asp:TextBox ID="txbPass" runat="server"></asp:TextBox></td>
    
</tr>
        
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
        </tr>
        
    </table>
    <br />
    <asp:GridView ID="grvUsers" runat="server"></asp:GridView>

    <div class="hp">

    <h4>HORÓSCOPO</h4>
    <p>Escolha seu signo: </p>

    <asp:Button class="btn" ID="Button1" runat="server" Text="ÁRIES" OnClick="Button1_Click"/>
    <asp:Button class="btn" ID="Button2" runat="server" Text="TOURO" OnClick="Button2_Click"/>
    <asp:Button class="btn" ID="Button3" runat="server" Text="GÊMEOS" OnClick="Button3_Click"/>
    <asp:Button class="btn" ID="Button4" runat="server" Text="CÂNCER" OnClick="Button4_Click"/>
    <asp:Button class="btn" ID="Button5" runat="server" Text="LEÃO" OnClick="Button5_Click"/>
    <asp:Button class="btn" ID="Button6" runat="server" Text="VIRGEM" OnClick="Button6_Click"/>
    <asp:Button class="btn" ID="Button7" runat="server" Text="LIBRA" OnClick="Button7_Click"/>
    <asp:Button class="btn" ID="Button8" runat="server" Text="ESCORPIÃO" OnClick="Button8_Click"/>
    <asp:Button class="btn" ID="Button9" runat="server" Text="SAGITÁRIO" OnClick="Button9_Click"/>
    <asp:Button class="btn" ID="Button10" runat="server" Text="CAPRICÓRNIO" OnClick="Button10_Click"/>
    <asp:Button class="btn" ID="Button11" runat="server" Text="AQUÁRIO" OnClick="Button11_Click"/>
    <asp:Button class="btn" ID="Button12" runat="server" Text="PEIXES" OnClick="Button12_Click"/>




    </div>




</asp:Content>
