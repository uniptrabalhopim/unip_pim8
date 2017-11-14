using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UnipPIM8
{
    public partial class Inserir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            StringBuilder _queryInsert = new StringBuilder("INSERT INTO tarefas (tarefa, detalhes, data_limite, status) VALUES('<%tarefa%>', '<%detalhes%>', '<%data_limite%>', '<%status%>' )");

            _queryInsert.Replace("<%tarefa%>", txtTarefa.Text);
            _queryInsert.Replace("<%detalhes%>", txtDetalhes.Text);
            _queryInsert.Replace("<%data_limite%>", txtDataLimite.Text);
            _queryInsert.Replace("<%status%>", lstStatus.Text);



            String _connectionString = @"Provider = Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("~/App_Data/Unip.accdb");

            OleDbConnection _connection = new OleDbConnection(_connectionString);
            OleDbCommand _command = new OleDbCommand(_queryInsert.ToString(), _connection);
            _connection.Open();
            _command.ExecuteNonQuery();


            _connection.Close();

            Response.Redirect("Default.aspx");

        }
    }
}