using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto3.Admin
{
    public partial class Usuarios : System.Web.UI.Page
    {
        // STRING DE CONEXÃO COM O ACCESS
        // http://connectionstrings.com
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/2021ADST.accdb") + ";Persist Security Info=False;";

        // INSTANCIA DA CLASSE DE TRANSAÇÃO COM O ACCESS
        AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ExibirUsuarios();
            }
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            if (NomeCompleto.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome";
            }
            else if (NomeAcesso.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome de acesso";
            }
            else if (Senha.Text.Trim() == "")
            {
                Mensagem.Text = "Digite a senha";
            }
            else
            {
                string comandoSQL = "INSERT INTO Usuarios(NomeCompleto, Email, NomeAcesso, Senha) VALUES('" + NomeCompleto.Text + "','" + Email.Text + "','" + NomeAcesso.Text + "','" + Senha.Text + "')";

                db.ConnectionString = conexao;
                db.Query(comandoSQL);

                ExibirUsuarios();
                LimparControles();
            }
        }


        protected void ExibirUsuarios()
        {
            string comandoSQL = "SELECT Codigo, NomeCompleto, NomeAcesso FROM Usuarios ORDER BY NomeCompleto ASC";

            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comandoSQL);

            GridViewUsuarios.DataSource = tb;
            GridViewUsuarios.DataBind();
        }

        protected void LimparControles()
        {
            Mensagem.Text = "";
            NomeCompleto.Text = "";
            Email.Text = "";
            NomeAcesso.Text = "";
            Senha.Text = "";

        }


    }
}