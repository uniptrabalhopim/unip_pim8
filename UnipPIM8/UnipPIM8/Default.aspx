<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UnipPIM8.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>

    </p>


    <style>
        .alert {
            padding: 20px;
            background-color: #f44336;
            color: white;
        }

        .closebtn {
            margin-left: 15px;
            color: white;
            font-weight: bold;
            float: right;
            font-size: 22px;
            line-height: 20px;
            cursor: pointer;
            transition: 0.3s;
        }

        .closebtn:hover {
            color: black;
        }
    </style>

  
    <p>
        <asp:Label ID="lblMensagem" runat="server" BackColor="#FF9B9B" Width="100%"></asp:Label>
    </p>


    <p>
        &nbsp;</p>
   
        <div>
            <span id="Message" runat="server"></span>    
        </div>
   
    <p>
        &nbsp;</p>

    <p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" >
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tarefaLabel" runat="server" Text='<%# Eval("tarefa") %>' />
                    </td>
                    <td>
                        <asp:Label ID="detalhesLabel" runat="server" Text='<%# Eval("detalhes") %>' />
                    </td>
                    <td>
                        <asp:Label ID="data_limiteLabel" runat="server" Text='<%# Eval("data_limite") %>' />
                    </td>
                    <td>
                        <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Atualizar" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="tarefaTextBox" runat="server" Text='<%# Bind("tarefa") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="detalhesTextBox" runat="server" Text='<%# Bind("detalhes") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="data_limiteTextBox" runat="server" Text='<%# Bind("data_limite") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>Nenhum dado foi retornado.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserir" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Limpar" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="tarefaTextBox" runat="server" Text='<%# Bind("tarefa") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="detalhesTextBox" runat="server" Text='<%# Bind("detalhes") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="data_limiteTextBox" runat="server" Text='<%# Bind("data_limite") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tarefaLabel" runat="server" Text='<%# Eval("tarefa") %>' />
                    </td>
                    <td>
                        <asp:Label ID="detalhesLabel" runat="server" Text='<%# Eval("detalhes") %>' />
                    </td>
                    <td>
                        <asp:Label ID="data_limiteLabel" runat="server" Text='<%# Eval("data_limite") %>' />
                    </td>
                    <td>
                        <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">Código</th>
                                    <th runat="server">Tarefa</th>
                                    <th runat="server">Detalhes</th>
                                    <th runat="server">Data limite</th>
                                    <th runat="server">Status</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Excluir" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                    </td>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="tarefaLabel" runat="server" Text='<%# Eval("tarefa") %>' />
                    </td>
                    <td>
                        <asp:Label ID="detalhesLabel" runat="server" Text='<%# Eval("detalhes") %>' />
                    </td>
                    <td>
                        <asp:Label ID="data_limiteLabel" runat="server" Text='<%# Eval("data_limite") %>' />
                    </td>
                    <td>
                        <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" PostBackUrl="~/Inserir.aspx">Inserir Tarefa</asp:LinkButton>
    </p>

    <script>
    var close = document.getElementsByClassName("closebtn");
    var i;

    for (i = 0; i < close.length; i++) {
        close[i].onclick = function(){
            var div = this.parentElement;
            div.style.opacity = "0";
            setTimeout(function(){ div.style.display = "none"; }, 600);
        }
    }
    </script>

    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUnip %>" DeleteCommand="DELETE FROM [tarefas] WHERE [id] = ?" InsertCommand="INSERT INTO [tarefas] ([id], [tarefa], [detalhes], [data_limite], [status]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionStringUnip.ProviderName %>" SelectCommand="SELECT [id], [tarefa], [detalhes], [data_limite], [status] FROM [tarefas]" UpdateCommand="UPDATE [tarefas] SET [tarefa] = ?, [detalhes] = ?, [data_limite] = ?, [status] = ? WHERE [id] = ?" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="tarefa" Type="String" />
                <asp:Parameter Name="detalhes" Type="String" />
                <asp:Parameter Name="data_limite" Type="DateTime" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tarefa" Type="String" />
                <asp:Parameter Name="detalhes" Type="String" />
                <asp:Parameter Name="data_limite" Type="DateTime" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>


        &nbsp;</p>
    <p>
     
        <br />
    </p>


</asp:Content>
