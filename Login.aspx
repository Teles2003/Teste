<%@ Page Title="Register" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppWebAspLoginUsuario.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="Login.css" />


    <h1 class="lg" >Login<center><asp:Label ID="lblMensagem" runat="server" BackColor="#990000" BorderColor="White" ForeColor="White"></asp:Label></center>  </h1>
    
    <table>
        <tr>
            <td class="tr">E-mail:</td>
            <td> <asp:TextBox CssClass="lg" ID="txbEmail" runat="server"></asp:TextBox> </td>
       </tr>
        <tr>
            <td class="tr">Senha:</td>
            <td><asp:TextBox ID="txbPass" runat="server"></asp:TextBox></td>
    
        </tr>
        
        <tr>
            <td></td>
            <td>
                <asp:Button CssClass="btnlogin" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
        </tr>
        
    </table>
    <h4>QUIZ SOBRE A AMANDA</h4>
    <h5>Usar letras Minusculas:</h5>

    <asp:Label Class="p1" ID="Lbl1" runat="server" Text="Label">Oque a Amanda mais ama?</asp:Label>
    <asp:TextBox class="p1" ID="Txt1" runat="server"></asp:TextBox>
    <asp:Label class="p2" ID="Lbl2" runat="server" Text="Label">Qual o animal favorito da Amanda? </asp:Label>
    <asp:TextBox class="p2" ID="Txt2" runat="server"></asp:TextBox>
    <asp:Label class="p3" ID="Lbl3" runat="server" Text="Label">Qual o ano de aniversário da Amanda?</asp:Label>
    <asp:TextBox class="p3" ID="Txt3" runat="server"></asp:TextBox>
    
    
    <asp:Button ID="Button1" runat="server" Text="ENVIAR" OnClick="Txt3_Click" />

    <asp:ListBox ID="Lista" runat="server"></asp:ListBox>


</asp:Content>
