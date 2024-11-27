<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/home.Master" CodeBehind="opcionesgrado.aspx.vb" Inherits="semilleros.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Opciones de grado</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="jumbotron text-center">
            <h1 class="display-4">Opciones de Grado en la UNAD</h1>
            <p class="lead">Explora las diferentes opciones de grado que ofrece la UNAD. Cada opción incluye un video explicativo, infografía, audio y una guía en PDF descargable.</p>
            <p class="lead">Normatividad: </p>
            <a href="pdfs/P-7-9.pdf" class="btn btn-success" download="Procedimiento Opciones de Grado">Procedimiento Opciones de Grado - Descargar Guía PDF </a>
        </div>
        <div class="opcion">
            <div class="row">
                <div class="col-md-12">
                    <h2>Opción de Grado 1: Investigación</h2>
                    <p>Los estudiantes desarrollan una investigación en su área de estudio para obtener el grado.</p>
                    <!-- Video -->
                    <video controls class="w-100">
                        <source src="videos/investigacion.mp4" type="video/mp4" />
                        Tu navegador no soporta la reproducción de videos.
                    </video>
                    <!-- Audio -->
                    <audio controls class="w-100">
                        <source src="audios/investigacion.mp3" type="audio/mpeg" />
                        Tu navegador no soporta la reproducción de audios.
                    </audio>
                    <!-- PDF -->
                    <a href="pdfs/guia_investigacion.pdf" class="btn btn-success" download="Guia_Investigacion.pdf">Descargar Guía PDF</a>
                </div>
            </div>
        </div>
        <!-- Opción 2: Monografía -->
        <div class="opcion">
            <div class="row">
                <div class="col-md-12">
                    <h2>Opción de Grado 2: Proyecto Monografia</h2>
                    <p>Los estudiantes realizan una monografia para resolver problemas prácticos en su campo de estudio.</p>
                    <!-- Video -->
                    <video controls class="w-100">
                        <source src="videos/monografia.mp4" type="video/mp4" />
                        Tu navegador no soporta la reproducción de videos.
                    </video>
                    <!-- Audio -->
                    <audio controls class="w-100">
                        <source src="audios/monografia.mp3" type="audio/mpeg" />
                        Tu navegador no soporta la reproducción de audios.
                    </audio>
                    <!-- PDF -->
                    <a href="pdfs/guia_monografia.pdf" class="btn btn-success" download="Guia_Monografia.pdf">Descargar Guía PDF</a>
                </div>
            </div>
        </div>
        <!-- Opción 3: Pasantía -->
        <div class="opcion">
            <div class="row">
                <div class="col-md-12">
                    <h2>Opción de Grado 3: Pasantía</h2>
                    <p>Los estudiantes aplican sus conocimientos en situaciones laborales reales a través de pasantías.</p>
                    <!-- Video -->
                    <video controls class="w-100">
                        <source src="videos/pasantia.mp4" type="video/mp4" />
                        Tu navegador no soporta la reproducción de videos.
                    </video>
                    <!-- Audio -->
                    <audio controls class="w-100">
                        <source src="audios/pasantia.mp3" type="audio/mpeg" />
                        Tu navegador no soporta la reproducción de audios.
                    </audio>
                    <!-- PDF -->
                    <a href="pdfs/guia_pasantia.pdf" class="btn btn-success" download="Guia_Pasantia.pdf">Descargar Guía PDF</a>
                </div>
            </div>
        </div>
        <!-- Opción 3: Credito_Posgrado -->
        <div class="opcion">
            <div class="row">
                <div class="col-md-12">
                    <h2>Opción de Grado 3: Credito de Posgrado</h2>
                    <p>la opción de cursar y aprobar, como mínimo diez (10) créditos académicos de un programa de posgrado de la UNAD, sin que esto le dé la calidad de estudiante de posgrado.</p>
                    <!-- Video -->
                    <video controls class="w-100">
                        <source src="videos/CreditoPosgrado.mp4" type="video/mp4" />
                        Tu navegador no soporta la reproducción de videos.
                    </video>
                    <!-- Audio -->
                    <audio controls class="w-100">
                        <source src="audios/Credito_posgrado.mp3" type="audio/mpeg" />
                        Tu navegador no soporta la reproducción de audios.
                    </audio>
                    <!-- PDF -->
                    <a href="pdfs/guia_credito_posgrado.pdf" class="btn btn-success" download="Guia_Credito_Posgrado.pdf">Descargar Guía PDF</a>
                </div>
            </div>
        </div>
        <div class="text-center mt-4">
            <img src="images/info_opc_grado.png" alt="Infografía sobre Opciones de Grado" class="img-fluid" />
            <p class="text-center">Nota: Alejandra Sacro (Opcion de Grado.png), (año 2020)</p>
        </div>
        <hr class="custom hr" />
        <br />
        <br />
    </div>
    <footer class="text-center mt-4">
        <p>Creado: 7 nov del 2024 - Juan Sebastian Villamil - Ingeniería de Sistemas - Programa Visual Basic Avanzado</p>
    </footer>
</asp:Content>
