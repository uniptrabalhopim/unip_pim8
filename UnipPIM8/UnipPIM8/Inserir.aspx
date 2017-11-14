<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inserir.aspx.cs" Inherits="UnipPIM8.Inserir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <asp:Label ID="lblMensagem" runat="server"></asp:Label>
    </p>

        <h2>Criar uma nova tarefa</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtTarefa" CssClass="col-md-2 control-label">Tarefa</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtTarefa" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTarefa"
                    CssClass="text-danger" ErrorMessage="O campo tarefa é obrigatório." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDetalhes" CssClass="col-md-2 control-label">Detalhes</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtDetalhes" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDetalhes"
                    CssClass="text-danger" ErrorMessage="O campo detalhes é obrigatório." />
            </div>
        </div>

        

        <script src="Scripts/jquery-ui-1.12.1.js"></script>



        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDataLimite" CssClass="col-md-2 control-label">Data limite</asp:Label>
            <div class="col-md-10">

                
                
                <asp:TextBox runat="server" ID="txtDataLimite" CssClass="form-control" />

                <br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDataLimite"
                    CssClass="text-danger" ErrorMessage="O campo data limite é obrigatório." />
            </div>
        </div>
                

        <script type="text/javascript">
            $(function () {
                $("#<%= txtDataLimite.ClientID %>").datepicker({
                    dateFormat: 'dd/mm/yy',
                    dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
                    dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
                    dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
                    monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
                    monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
                    nextText: 'Próximo',
                    prevText: 'Anterior'
                });
            });
        </script>


        <!-- 
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="txtStatus" CssClass="col-md-2 control-label">Status</asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="txtStatus" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStatus"
                        CssClass="text-danger" ErrorMessage="O campo status é obrigatório." />
                </div>
            </div>
        !-->

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="lstStatus" CssClass="col-md-2 control-label">Status</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="lstStatus" runat="server" CssClass="form-control">
                    <asp:ListItem Selected="True">Em andamento</asp:ListItem>
                    <asp:ListItem>Concluído</asp:ListItem>
                    <asp:ListItem>Não iniciado</asp:ListItem>
                </asp:DropDownList>
                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="lstStatus"
                    CssClass="text-danger" ErrorMessage="O campo status é obrigatório." />
            </div>
        </div>




        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="btnGravar" runat="server" OnClick="btnGravar_Click" Text="Gravar"  CssClass="btn btn-default"/>

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx"
            style="font-family: Calibri">Voltar</asp:HyperLink>
            </div>

        </div>

    </div>

<p>
        <asp:SqlDataSource ID="SqlDataSourceUnip" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringUnip %>" DeleteCommand="DELETE FROM [tarefas] WHERE [id] = ?" InsertCommand="INSERT INTO [tarefas] ([id], [tarefa], [data_limite], [detalhes], [status]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionStringUnip.ProviderName %>" SelectCommand="SELECT [id], [tarefa], [data_limite], [detalhes], [status] FROM [tarefas]" UpdateCommand="UPDATE [tarefas] SET [tarefa] = ?, [data_limite] = ?, [detalhes] = ?, [status] = ? WHERE [id] = ?">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="tarefa" Type="String" />
                <asp:Parameter Name="data_limite" Type="DateTime" />
                <asp:Parameter Name="detalhes" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tarefa" Type="String" />
                <asp:Parameter Name="data_limite" Type="DateTime" />
                <asp:Parameter Name="detalhes" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>
<p>


</asp:Content>
