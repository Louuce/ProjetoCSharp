<%@ Page Title="" Language="C#" MasterPageFile="~/Projeto.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projeto3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="padding-lr">
        <!-- SLIDES -->
        <div class="flexslider" style="direction: rtl;">
            <ul class="slides">
                <li>
                    <img src="Images/banner0.png" />
                </li>

                <li>
                    <img src="Images/banner1.png" />
                </li>

                <li>
                    <img src="Images/banner2.png" />
                </li>

                <li>
                    <img src="Images/banner3.png" />
                </li>
            </ul>
        </div>
        <script>
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    rtl: true
                });
            });
        </script>
    </div>

    <div class="row margin-top-60">
        <div class="col-3 padding-lr">
            <div>
                <img width="100%" src="Images/si1.png" />
            </div>
            <div class="font-12">
                <h4>Sobre Analise de Sistemas</h4>
                Análise de sistemas é a atividade que tem como finalidade a realização de estudos de processos a fim de encontrar o melhor caminho racional para que a informação possa ser processada. Os analistas de sistemas estudam os diversos sistemas existentes entre hardwares, softwares e o usuário final.
            </div>
            <asp:HyperLink Target="_blank" ID="HyperLink1" NavigateUrl="Ads.aspx" runat="server">Saiba mais...</asp:HyperLink>
        </div>

        <div class="col-3 padding-lr">
            <div>
                <img width="100%" src="Images/si2.jpg" />
            </div>
            <div class="font-12">
                <h4>Sobre linguagens de Programação</h4>
                Linguagem de programação é o idioma que você vai utilizar para comunicar ao computador e escrever os códigos. Assim como na comunicação entre humanos, você emite uma mensagem e precisa que seu receptor a entenda e responda. A linguagem é um conjunto de regras que precisam ser seguidas para que os programas funcionem corretamente.
            </div>
            <asp:HyperLink Target="_blank" ID="HyperLink2" NavigateUrl="Linguagens.aspx" runat="server">Saiba mais...</asp:HyperLink>

        </div>

        <div class="col-3 padding-lr">
            <div>
                <img width="100%" src="Images/si2.jpg" />
            </div>
            <div class="font-12">
                <h4>Projeto de Sistemas </h4>
                Projeto de Sistema é uma área da computação que visa descrever as funções de um sistema, verificar sua funcionalidade, elaborar e implementar soluções para diferentes problemas identificados durante a fase de análise.
            </div>
            <asp:HyperLink Target="_blank" ID="HyperLink3" NavigateUrl="Projetos.aspx" runat="server">Saiba mais...</asp:HyperLink>

        </div>

        <div class="col-3 padding-lr">
            <div>
                <img width="100%" src="Images/si4.jpg" />
            </div>
            <div class="font-12">
                <h4>Aplicativos para Mobile</h4>
                 O desenvolvimento de um aplicativo é o processo de elaboração de um programa que será usado em um dispositivo móvel. Para isso, são empregadas linguagens de programação que variam conforme as plataformas nas quais o seu app estará disponível.
            </div>
            <asp:HyperLink Target="_blank" ID="HyperLink4" NavigateUrl="Mobile.aspx" runat="server">Saiba mais...</asp:HyperLink>
        </div>
    </div>

    <div class="row box">
        <div class="col-2">
            <div class="border">
                <img width="100px" src="Images/programador.png" />
                <div class="font-12">
                    <h4>Programação</h4>
                    Quer ser um programador? faça o curso de Analise e Desenvolvimento de Sistema da Fatec de Americana.
                </div>
                <asp:HyperLink ID="HyperLink5" NavigateUrl="http://www.fatec.edu.br" Target="_blank" runat="server">Saiba mais...</asp:HyperLink>
            </div>
        </div>
        <div style="margin-left: 180px" class="col-6">
             <iframe width="480" height="245" src="https://www.youtube.com/embed/DXTPjzFYs4k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        </div>
    </div>

</asp:Content>
