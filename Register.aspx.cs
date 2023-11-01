using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
/* Bibliotecas para o Banco de Dados*/
using System.Data.SqlClient;
using System.Data;

namespace AppWebAspLoginUsuario
{
    public partial class Register : System.Web.UI.Page
    {
        /* Criação da Conexão com palavras reservados SQL*/
        SqlConnection con = new SqlConnection();
        /* Criação dos comandos cmd SqlCommand com uso de palavras reservadas SQL */
        SqlCommand cmd = new SqlCommand();
        /* Criação do Adaptador */
        SqlDataAdapter sda = new SqlDataAdapter();
        /* Criação da Tabela recebida pelo objeto dt DataTable para suas manipulações */
        DataTable dt = new DataTable();
        /* Criação do objeto de de exibição ds DataSheet */
        DataSet ds = new DataSet();
        private object modelStatusLabel;

        protected void Page_Load(object sender, EventArgs e)
        {
            /* Caminho da Conexão da string retirado  na propriedade da conexão com o Servidor */
            con.ConnectionString = "Data Source=36DE250003\\SENAC;Initial Catalog=Amanda;Integrated Security=True";
            /* Abertura da Conexão */
            con.Open();
            /* Essa condição serve para que o conteúdo dentro desse if só seja executado na primeira vez */

            if (!Page.IsPostBack)
            {
                /* Chamda da Função de Exibição */
                dataShowUser();
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            /* Intanciação do objeto dt DataTable*/
            dt = new DataTable();
            /* Comando SQL que será executado */
            cmd.CommandText = "INSERT INTO usuario (email, senha)VALUES('" + txbEmail.Text.ToString() + "', '" + txbPass.Text.ToString() + "')";
            /* Abertura da Conexão pelo cmd */
            cmd.Connection = con;
            /* Execução do Comando*/
            cmd.ExecuteNonQuery();
            /* Chamada da função de exibição */
            dataShowUser();

            txbEmail.Text = txbPass.Text = String.Empty;
        }

        /* Exibe a Informação do Próprio Usuário*/
        public void dataShowUser()
        {
            /* Instanciação do objeto ds */
            ds = new DataSet();
            /* Comando SQL */
            cmd.CommandText = "SELECT * FROM usuario WHERE email='" + txbEmail.Text + "'";
            /* Conexão com Banco */
            cmd.Connection = con;
            /* Instanciãção do objeto de conexão */
            sda = new SqlDataAdapter(cmd);
            /* Adiciona ou atualiza linhas no DataSet para correspondência na fonte de dados. */
            sda.Fill(ds);
            /* Comando de execução */
            cmd.ExecuteNonQuery();
            /* GridView Students recebe o DataSheet*/
            grvUsers.DataSource = ds;
            /* Associa a fonte de dados ao controle GridView.*/
            grvUsers.DataBind();
            /* Fecha a Conexão */
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('ÁRIES!" +
                " - Comunicações e transações comerciais ganharão agilidade, hoje." +
                " - Aproveite o período da manhã para ampliar contatos, divulgar o trabalho e esclarecer dúvidas com parceiros profissionais." +
                " - A fase favorece mudanças e novos rumos." +
                "- Explore sua vocação, você poderá diversificar atividades e abrir novos caminhos na carreira." +
                " - Finalize uma pendência da casa ou do passado. ');</script>");


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert(' TOURO " + 
                "- Discuta contratos e resolva assuntos práticos. " +
                "- O dia trará desafios na área financeira e nos relacionamentos. " +
                "- Desfaça confusões nas contas e tome cuidado com fraudes ou propostas ilusórias.  " +
                "- Hoje vai valer o ditado “quando o milagre é grande, até o santo desconfia”. " +
                "- Oriente as conversas para temas concretos." +
                "- Detalhes farão diferença na divulgação do trabalho e projetos. ');</script>");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert(' GÊMEOS" +
                " - Troque confidências com a família, cuide de quem você ama e das suas necessidades de conforto e de segurança." +
                " - Emoções estarão à flor da pele." +
                " - Espere por empatia e manifestações de carinho nos encontros e interações de hoje." +
                " - Valerá também se comprometer mais com sua saúde, ir ao médico ou iniciar atividades que promovem maior bem-estar. ');</script>");

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('CÂNCER" +
                " - O dia será sujeito a distrações e devaneios." +
                " - Ceda à preguiça, durma mais e equilibre suas energias." +
                " - Atividades criativas ganharão uma dose maior de inspiração." +
                " - Explore seus talentos e desenvolva novos projetos." +
                " - Arte, música, meditação, terapia e trabalhos corporais promoverão bem-estar." +
                " - À noite, planeje viagem e novas ações no trabalho." +
                " - Conquistas pela frente! ');</script>");

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('  LEÃO " +
                " - Planos para o futuro incluirão investimentos em mais conforto e inovações no trabalho." +
                " - Arrume suas bagunças, resolva pendências do passado e reformule a rotina." +
                " - Você poderá implantar um lifestyle mais gostoso com as decisões de hoje." +
                " - Conte com apoio de uma amizade especial e firme acordos financeiros." +
                " - Bases afetivas e materiais ficarão mais fortes." +
                " - Dê uma virada de vida! ');</script>");

        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert(' VIRGEM" +
                " - Amplie discussões e aumente seu prestígio." +
                " - O dia trará popularidade e projeção profissional. " +
                " - Aproveite também para visualizar o futuro que você deseja e formalizar contratos.  " +
                " - Você poderá finalizar um projeto, iniciar outro e descobrir novos focos de interesse.   " +
                " - Novidades e informações relevantes chegarão de vários lados e poderão alterar planos.  " +
                " - Poder de atração em alta!');</script>");

        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert(' LIBRA" +
                " - Hora de expandir os horizontes, ampliar conexões com estrangeiros ou pessoas de outras regiões e criar novos vínculos." +
                " - O dia trará cenário positivo para o futuro e maior autoconfiança." +
                " - Aposte em mudanças e renove os sentimentos." +
                " - Vários planetas anunciam conquistas e elevação de padrões." +
                " - Administre seus recursos com sabedoria e fortaleça suas bases financeiras. ');</script>");

        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert(' ESCORPIÃO" +
                " - Coloque mais alma em tudo que fizer." +
                " - O novo ciclo que você está começando agora pedirá fidelidade aos seus valores, ideais e senso de missão." +
                " - Muita coisa vai mudar na sua cabeça nesta fase." +
                " - Encontre respostas íntimas e existenciais e faça novas escolhas." +
                " - Você poderá se associar a um grupo internacional ou iniciar atividades em outra localidade." +
                " - Poder em alta! ');</script>");

        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('  SAGITÁRIO" +
                " - Aproveite o período da manhã para dar atenção aos assuntos de família e aos projetos da vida íntima." +
                " - Clima carinhoso nas interações e solução de pendências darão sensação de proteção." +
                " - A fase ainda será desafiadora, com aumento de demandas." +
                " - Encontre tempo também para as pessoas queridas e para o amor." +
                " - Novas associações entrarão no radar." +
                " - Casamento em alta!');</script>");

        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('  CAPRICÓRNIO  " +
                " - O dia será bastante produtivo nas comunicações de trabalho, cuidados de saúde e solução de assuntos da família." +
                " - Deixe tudo em ordem antes de uma viagem ou de iniciar um novo projeto." +
                " - O ritmo também estará acelerado na vida social, com a entrada num novo grupo." +
                " - Conversas diretas, atitude e posicionamentos claros resolverão conflitos." +
                " - Amizades se firmarão. ');</script>");

        }
        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('  AQUÁRIO  " +
                " - Aumente a exposição e conquiste novos espaços." +
                " - O dia trará muito brilho, criatividade e soluções originais no trabalho." +
                " - Vários planetas apontam crescimento profissional e financeiro." +
                " - Assuma seus poderes e construa mais estabilidade financeira." +
                " - Assuntos de família serão vistos por uma ótica diferente." +
                " - Renove conceitos e eleve padrões de conforto." +
                " - Carreira em ascensão! ');</script>");

        }
        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Write("<script> alert('  PEIXES " +
                " - Lembranças gostosas, reencontros e finalizações de pendências da casa ou da vida familiar anunciam um dia de muitas emoções e motivos para celebrar." +
                " - Este também será bom momento para aprofundar vínculos de amizades e se entender melhor com parceiros de trabalho e de vida." +
                " - Acerte documentos, soluções jurídicas darão tranquilidade." +
                " - Mais confiança e harmonia no amor! ');</script>");

        }
    }


}