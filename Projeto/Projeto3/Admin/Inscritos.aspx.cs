using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto3
{
    public partial class Inscritos : System.Web.UI.Page
    {
        // STRING DE CONEXÃO COM O ACCESS
        // http://connectionstrings.com
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/2021ADST.accdb") + ";Persist Security Info=False;";

        // INSTANCIA DA CLASSE DE TRANSAÇÃO COM O ACCESS
        readonly AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            if (!IsPostBack)
            {
                ExibirInscritos();
            }
        }

        protected void ExibirInscritos()
        {
            string comandoSQL = "SELECT Codigo, NomeCompleto, CPF, Email FROM Inscritos ORDER BY NomeCompleto ASC";

            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comandoSQL);

            GridViewInscritos.DataSource = tb;
            GridViewInscritos.DataBind();
        }

    }
}