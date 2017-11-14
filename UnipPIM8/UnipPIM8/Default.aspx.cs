using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace UnipPIM8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                avisoDataLimite();
                // Response.Write("<br>Page has been posted back.");
            }


        }

        void avisoDataLimite()
        {
            String _connectionString = @"Provider = Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("~/App_Data/Unip.accdb");
            String sql = "select id, tarefa, detalhes, data_limite, status from  tarefas";

            OleDbConnection _connection = new OleDbConnection(_connectionString);
            OleDbCommand _command = new OleDbCommand(sql, _connection);
            OleDbDataReader rd;
            _connection.Open();

            rd = _command.ExecuteReader();
            lblMensagem.Visible = false;


            while (rd.Read())
            {
                if (DateTime.Now > rd.GetDateTime(3) && rd.GetString(4) != "Concluído")
                {
                    // lblMensagem.Text = lblMensagem.Text + rd.GetValue(0).ToString() + "-" + rd.GetValue(1).ToString() + " <br />";
                    // lblMensagem.Visible = true;

                    Message.InnerHtml = Message.InnerHtml + "<div class='alert'> <span class='closebtn'>&times;</span> <strong>Aviso!</strong> Tarefa com data limite ultrapassada: " + lblMensagem.Text + rd.GetValue(0).ToString() + "-" + rd.GetValue(1).ToString() + "</div>";

                }

            }

            _connection.Close();
        }


        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}