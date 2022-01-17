<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Vestibular.aspx.cs" Inherits="Projeto3.Vestibular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="margin-top-60">
        <h1>Vestibular 2022 FATEC Americana</h1>
    </div>
    <div>
        <p>
            Antes de iniciar sua inscrição, preencha os campos abaixo para se cadastrar no vestibular e, com isso, ter acesso a todas as informações referentes à sua inscrição durante todo o Processo Seletivo.
        </p>
    </div>

    <div class="row margin-top-60">
        <div class="col-12">
            <div class="box border ">
                <h3>Dados para cadastro</h3>
                <br />

                
                    
               

                    <div class="float  senha">
                                <label>Senha</label>
                                <asp:TextBox ID="Senha" MaxLength="255" TextMode="Password" runat="server"></asp:TextBox>
                               
                                <label>Repita a Senha</label>
                                <asp:TextBox ID="ConfirmaSenha" MaxLength="255" TextMode="Password" runat="server"></asp:TextBox>
                                
                            </div>

                 <div class="formulario">
                    <asp:Label ID="Mensagem" runat="server" ForeColor="red"></asp:Label>
                    <label>Nome Completo</label>
                    <asp:TextBox ID="NomeCompleto" MaxLength="255" runat="server"></asp:TextBox>
                    <label>CPF</label>
                   <asp:TextBox ID="CPF" MaxLength="15"  runat="server" ></asp:TextBox>
                    <label>E-mail</label>
                    <asp:TextBox ID="Email" TextMode="Email" MaxLength="255" runat="server"></asp:TextBox>
                    <label>Repita o E-mail</label>
                    <asp:TextBox ID="ConfirmacaoEmail" TextMode="Email" MaxLength="255" runat="server"></asp:TextBox>
                   
                    <asp:Button ID="Enviar" Onclick="Enviar_Click" runat="server" Text="Enviar" />
                </div>

                </div>

           </div>
          
        </div>
    
</asp:Content>
