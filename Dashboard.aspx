<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="AppWebAspLoginUsuario.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="dashboard.css" />
    <h1 class="titulo" >DashBoard</h1>
    <h2 class="titulo" >Bem vindo <asp:Label ID="lblUser" runat="server" Text=""></asp:Label></h2>
        
    <table>
        <tr>
            <td class="texto" >E-mail:</td>
            <td>
                <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="texto" >Senha:</td>
                <td><asp:TextBox ID="txbPass" runat="server"></asp:TextBox></td>
        </tr>
        
        <tr>
            <td>
                <asp:Button Class="btnpg" ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <asp:Button class="btnpg" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            </td>
        </tr>
        
        
    </table>
    
    <br/>

    <asp:GridView class="tabela" ID="grvUser" runat="server"></asp:GridView>

    <h2 class="titulo" >Página Mestre</h2>

    <img src="img/pagina_mestre.jpg" />
    <h3> Oque é? </h3>
    <p>A criação de um modelo de página em todo o site em ASP.NET é possível por meio do uso de páginas master.
        Em poucas palavras, uma página master é um tipo especial de página ASP.NET que define a marcação que é 
        comum entre todas as páginas de conteúdo, bem como regiões personalizáveis em uma página de conteúdo página por conteúdo. 
        (Uma página de conteúdo é uma página ASP.NET associada à página master.) Sempre que um layout ou formatação de uma 
        página de master é alterado, toda a saída de suas páginas de conteúdo também é atualizada imediatamente, o que torna a aplicação 
        de alterações de aparência em todo o site tão fácil quanto atualizar e implantar um único arquivo (ou seja, a página master).
    </p>

    <h3>Porquê Páginas Mestras?</h3>

    <p>
        Talvez você esteja se perguntando por que master páginas foram necessárias no ASP.NET 2.0. Afinal, os desenvolvedores 
        de sites já estão usando controles de usuário no ASP.NET 1.x para compartilhar áreas de conteúdo entre páginas. 
        Na verdade, há vários motivos pelos quais os controles de usuário são uma solução menos que ideal para criar um layout comum.
    </p>

    <p>
        Os controles de usuário não definem o layout da página. Em vez disso, eles definem o layout e a funcionalidade de uma parte de uma página.
        A distinção entre esses dois é importante porque torna a capacidade de gerenciamento de uma solução de controle do usuário muito mais difícil.
        Por exemplo, quando você deseja alterar a posição de um controle de usuário em sua página, você deve editar a página real na qual o controle
        de usuário aparece. Isso é bom se você tiver apenas algumas páginas, mas em sites grandes, isso rapidamente se tornará um pesadelo de gerenciamento de sites!
    </p>
    
    <p>
        Outra desvantagem do uso de controles de usuário para definir um layout comum tem raiz na arquitetura do próprio ASP.NET.
        Se qualquer membro público de um controle de usuário for alterado, ele exigirá que você recompile todas as páginas que usam o controle 
        de usuário. Por sua vez, ASP.NET re-JIT suas páginas quando elas forem acessadas pela primeira vez. Isso, mais uma vez, produz 
        uma arquitetura não escalonável e um problema de gerenciamento de site para sites maiores.0
    </p>

      <h3>Como funciona a Página Mestre ?</h3>

    <p>
        Uma página master é análoga a um modelo para outras páginas. Os elementos de página que devem ser compartilhados entre outras páginas 
        (ou seja, menus, bordas etc.) são adicionados à página master. Quando novas páginas são adicionadas ao site, você pode associá-las a
        uma página master. Uma página associada a uma página master é chamada de página de conteúdo. Por padrão, uma página de conteúdo assume 
        a aparência da página master. No entanto, ao criar uma página master, você pode definir partes da página que a página de conteúdo pode 
        substituir pelo próprio conteúdo. Essas partes são definidas usando um novo controle introduzido no ASP.NET 2.0; o controle ContentPlaceHolder .
    </p>

    <p>
        Uma página master pode conter qualquer número de controles ContentPlaceHolder (ou nenhum.) Na página de conteúdo, o conteúdo dos controles 
        ContentPlaceHolder aparece dentro de Controles de conteúdo, outro novo controle no ASP.NET 2.0. Por padrão, as páginas de conteúdo Controles 
        de conteúdo estão vazios para que você possa fornecer seu próprio conteúdo. Se você quiser usar o conteúdo da página master dentro dos controles
        de conteúdo, poderá fazê-lo como verá posteriormente neste módulo. O controle Conteúdo é mapeado para o controle ContentPlaceHolder por meio do 
        atributo ContentPlaceHolderID do controle Content. O código abaixo mapeia um controle Content para um controle ContentPlaceHolder chamado mainBody em uma página master.
    </p>

    <img src="img/pg_master.jpg" />

 

</asp:Content>
