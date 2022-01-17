using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto3
{
    public partial class Vestibular : System.Web.UI.Page
    {

        // STRING DE CONEXÃO COM O ACCESS
        // http://connectionstrings.com
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/2021ADST.accdb") + ";Persist Security Info=False;";

        // INSTANCIA DA CLASSE DE TRANSAÇÃO COM O ACCESS
        AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();


        protected void Page_Load(object sender, EventArgs e)
        {



        }
        protected void Enviar_Click(object sender, EventArgs e)
        {
            if (NomeCompleto.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome";
            }
            else if (CPF.Text.Trim() == "") 
            {
                Mensagem.Text = "Digite o numero do seu CPF";
            }
            else if (Email.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome E-mail";
            }
            else if (ConfirmacaoEmail.Text.Trim() == "")
            {
                Mensagem.Text = "Repita o seu nome E-mail";
            }
            else if (Email.Text.Trim() != ConfirmacaoEmail.Text.Trim()) 
            {
                Mensagem.Text = "Os E-mails não são iguais";
            }
            else if (Senha.Text.Trim() == "")
            {
                Mensagem.Text = "Digite a senha";
            }
            else if (ConfirmaSenha.Text.Trim() == "")
            {
                Mensagem.Text = "Repita a senha";
            }
            else if (Senha.Text.Trim() != ConfirmaSenha.Text.Trim())
            {
                Mensagem.Text = "As senhas não Conferem";
            }
            else
            {
                string comandoSQL = "INSERT INTO Inscritos(NomeCompleto, CPF, Email, Senha) VALUES('" + NomeCompleto.Text + "','" + CPF.Text + "','" + Email.Text + "','" + Senha.Text + "')";

                db.ConnectionString = conexao;
                db.Query(comandoSQL);

                LimparControles();
            }

        }


        protected void LimparControles()
        {
            Mensagem.Text = "";
            NomeCompleto.Text = "";
            CPF.Text = "";
            Email.Text = "";
            ConfirmacaoEmail.Text = "";
            Senha.Text = "";
            ConfirmaSenha.Text = "";

        }

        
    }
}