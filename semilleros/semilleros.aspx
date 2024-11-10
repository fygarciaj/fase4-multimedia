<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/home.Master" CodeBehind="semilleros.aspx.vb" Inherits="semilleros.Formulario_web1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Semilleros de investigación</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-4">
        <h2 class="mb-4">5. SEMILLEROS DE INVESTIGACION</h2>
        <p class="text-muted mb-4">
            Los semilleros de investigación de la Universidad Nacional Abierta y a Distancia (UNAD) son comunidades de aprendizaje donde estudiantes, docentes, egresados y administrativos se reúnen para investigar y formar a futuros investigadores.
        </p>
        <p>
            Los semilleros de investigación son conformados mayoritariamente por estudiantes de los diferentes programas académicos de la UNAD (se fortalece el aspecto multidisciplinar) que son guiados por docentes de grado y postgrado, quienes deben incentivar la curiosidad científica y la búsqueda incansable de soluciones a los problemas cotidianos.
            fuente
        </p>

        <!-- Contenido principal con PDF y reproductor -->
        <div class="row">
            <div class="col-md-8">
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <button class="nav-link active" id="nav-requisitos-tab" data-bs-toggle="tab" data-bs-target="#nav-requisitos" type="button" role="tab" aria-controls="nav-requisitos" aria-selected="true">Requisitos</button>
                    <button class="nav-link" id="nav-material-tab" data-bs-toggle="tab" data-bs-target="#nav-material" type="button" role="tab" aria-controls="nav-material" aria-selected="false">Material de Apoyo</button>
                    <button class="nav-link" id="nav-contacto-tab" data-bs-toggle="tab" data-bs-target="#nav-contacto" type="button" role="tab" aria-controls="nav-contacto" aria-selected="false">Contacto</button>
                    <button class="nav-link" id="nav-normatividad-tab" data-bs-toggle="tab" data-bs-target="#nav-normatividad" type="button" role="tab" aria-controls="nav-normatividad" aria-selected="false">Normatividad</button>
                    <button class="nav-link" id="nav-evaluacion-tab" data-bs-toggle="tab" data-bs-target="#nav-evaluacion" type="button" role="tab" aria-controls="nav-evaluacion" aria-selected="false">Evaluación</button>
                </div>

                <!-- Contenido de cada tab -->
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-requisitos" role="tabpanel" aria-labelledby="nav-requisitos-tab">
                        <div class="card mt-3">
                            <div class="card-header bg-primary text-white">
                                <h6 class="mb-0">Requisitos para pertenecer a un Semillero de Investigación en la UNAD</h6>
                            </div>
                            <div class="card-body">
                                <p class="card-text">
                                    Para pertenecer a un semillero de investigación en la Universidad Nacional Abierta y a Distancia (UNAD), se deben cumplir los siguientes requisitos:
                                </p>
                                <ul class="list-group list-group-flush mb-3">
                                    <li class="list-group-item">Ser estudiante con matrícula activa en un programa de pregrado.</li>
                                    <li class="list-group-item">No tener sanción disciplinaria con la UNAD.</li>
                                    <li class="list-group-item">Tener interés en aprender y desarrollar habilidades de investigación.</li>
                                    <li class="list-group-item">Identificar las temáticas, objetivos y líneas de investigación de los semilleros.</li>
                                    <li class="list-group-item">Escribir un correo electrónico al líder del semillero de investigación de interés.</li>
                                </ul>
                                <p class="card-text">
                                    Además, el semillero debe tener el aval del líder de un grupo de investigación, previa concertación del plan de trabajo.
           
                                </p>
                                <div class="alert alert-info" role="alert">
                                    En los semilleros de investigación de la UNAD pueden participar egresados sin vinculación contractual, docentes de cualquier escuela y administrativos de la UNAD.
           
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-material" role="tabpanel" aria-labelledby="nav-material-tab">
                        <div class="pdf-container mt-3" style="height: 600px;">
                            <iframe id="pdf-frame" src="https://noticias.unad.edu.co/images/escuelas/ecapma/Noticas/Manual_para_realizar_el_Registro_de_Semilleros_de_Investigaci%C3%B3n_2016_1.pdf"
                                width="100%" height="100%" style="border: none;"></iframe>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-contacto" role="tabpanel" aria-labelledby="nav-contacto-tab">
                        <div class="external-page-container" style="height: 800px; width: 100%;">
                            <iframe src="https://investigacion.unad.edu.co/semilleros-de-investigacion/buscador-semilleros"
                                width="100%" height="100%" frameborder="0" style="border: none;"></iframe>
                        </div>
                        <div class="redirect-button">
                            <p>Para acceder al buscador de semilleros, haz clic en el siguiente enlace:</p>
                            <a href="https://investigacion.unad.edu.co/semilleros-de-investigacion/buscador-semilleros" target="_blank" class="btn btn-primary">Ir al buscador de semilleros</a>
                        </div>
                        <div class="container my-5">
                            <h3 class="mb-4">Datos de Contacto</h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <strong>Línea gratuita nacional:</strong> 01 8000 115223
                                        </li>
                                        <li class="list-group-item">
                                            <strong>Teléfono:</strong> 601-375 9500 - En Bogotá D.C. (Colombia)
                                        </li>
                                        <li class="list-group-item">
                                            <strong>PBX:</strong> 601-3443700
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <h5 class="mb-3">Sede Principal</h5>
                                    <p>
                                        <strong>Dirección:</strong> Calle 14 Sur # 14 – 23, Barrio Restrepo, Bogotá - Colombia.
                                    </p>
                                </div>
                            </div>
                            <h5 class="mt-4">Canales físicos y electrónicos para atención al público</h5>
                            <p>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://directorio.unad.edu.co/" Target="_blank">Directorio UNAD</asp:HyperLink>
                            </p>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-normatividad" role="tabpanel" aria-labelledby="nav-normatividad-tab">
                        <div class="container my-5">
                            <div itemprop="articleBody">
                                <h3 class="mb-4">Normativa y Resoluciones</h3>

                                <p style="font-size: 18px;">
                                    <a href="/images/investigacion/Acuerdo%20024%20Abril%2017%20de%202012.pdf" target="_blank" aria-label="Acuerdo 024 del 17 Abril de 2012 - abrir en una nueva pestaña">Acuerdo 024 del 17 Abril de 2012
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por el cual se reglamenta el <strong>Estatuto de Investigación</strong> UNAD</p>

                                <p style="font-size: 18px;">
                                    <a href="/images/investigacion/ACUERDO_005_2016_04_19_LINEAS_DE_INVESTIGACIN_1.pdf" target="_blank" aria-label="Acuerdo 005 del 19 de Abril de 2016 - abrir en una nueva pestaña">Acuerdo 005 del 19 de Abril de 2016
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por el cual se reglamentan las <strong>Líneas de Investigación</strong> UNAD</p>

                                <p style="font-size: 18px;">
                                    <a href="/images/investigacion/SGAcuerdo_056_de_2016.pdf" target="_blank" aria-label="Acuerdo 056 del 4 de Octubre de 2016 - abrir en una nueva pestaña">Acuerdo 056 del 4 de Octubre de 2016
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por el cual se otorgan <strong>Distinciones de Investigación</strong> a estudiantes de la UNAD.</p>

                                <p style="font-size: 18px;">
                                    <a href="/images/investigacion/ACUERDO_004_2016_04_19_SELLO_EDITORIAL.pdf" target="_blank" aria-label="Acuerdo 004 del 19 de Abril de 2016 - abrir en una nueva pestaña">Acuerdo 004 del 19 de Abril de 2016
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por el cual se reglamentan los <strong>Lineamientos Editoriales</strong> UNAD</p>

                                <p style="font-size: 18px;">
                                    <a href="/images/investigacion/Acuerdo_006_-_Estatuto_de_Propiedad_Intelectual_de_la_Universidad_Nacional.pdf" target="_blank" aria-label="Acuerdo 006 del 26 de Agosto de 2008 - abrir en una nueva pestaña">Acuerdo 006 del 26 de Agosto de 2008
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por el cual se aprueba el <strong>Estatuto de Propiedad Intelectual</strong> UNAD</p>

                                <p style="font-size: 18px;">
                                    <a href="/images/investigacion/Biblioteca_Derechos_de_Autor.pdf" target="_blank" aria-label="Resolución No. 000069 del 19 de Enero de 2015 - abrir en una nueva pestaña">Resolución No. 000069 del 19 de Enero de 2015
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por el cual se regula la administración de <strong>Derechos de Autor</strong> en la Biblioteca de la UNAD</p>

                                <p style="font-size: 18px;">
                                    <a href="/images/investigacion/Reglamento_de_Comités.pdf" target="_blank" aria-label="Resolución No. 008872 del 23 de Diciembre de 2014 - abrir en una nueva pestaña">Resolución No. 008872 del 23 de Diciembre de 2014
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por la cual se reglamentan los <strong>Comités de Investigación</strong></p>

                                <p style="font-size: 18px;">
                                    <a href="https://viaci.unad.edu.co/images/documentos/Viacademica/sigi/sigi-resol-006465.pdf" target="_blank" rel="noopener" aria-label="Resolución No. 006465 del 14 de Julio de 2014 - abrir en una nueva pestaña">Resolución No. 006465 del 14 de Julio de 2014
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por la cual se reglamentan los <strong>Grupos de investigación</strong>.</p>

                                <ul>
                                    <li style="font-size: 18px;">
                                        <a href="/images/investigacion/Investigación/Grup_categorizados_y_Reconocidos_UNAD_2018.pdf" target="_blank" aria-label="Resultados de la convocatoria 781 de 2017 para el reconocimiento y medición de grupos de investigación inscritos en la plataforma scienti de Colciencias">Resultados de la convocatoria 781 de 2017 para el reconocimiento y medición de grupos de investigación inscritos en la plataforma scienti de Colciencias
                                        </a>
                                    </li>
                                    <li style="font-size: 18px;">
                                        <a href="http://scienti.colciencias.gov.co:8083/ciencia-war/busquedaGrupoXInstitucionGrupos.do?codInst=003500000888&amp;maxRows=50&amp;grupos_tr_=true&amp;grupos_p_=1&amp;grupos_mr_=50" target="_blank" rel="noopener" aria-label="Grupos Categorizados Colciencias Convocatoria 737/2015 - abrir en una nueva pestaña">Grupos Categorizados Colciencias Convocatoria 737/2015
                                        </a>
                                    </li>
                                    <li style="font-size: 18px;">
                                        <a href="/images/investigacion/Grupos%20Avalados%20a%20Febrero%2020%202015.pdf" target="_blank" aria-label="Grupos con Aval Institucional Febrero 20 de 2015 - abrir en una nueva pestaña">Grupos con Aval Institucional Febrero 20 de 2015
                                        </a>
                                    </li>
                                    <li style="font-size: 18px;">
                                        <a href="http://www.colciencias.gov.co/sites/default/files/ckeditor_files/resultadosfinales-conv693-2014-consulta.pdf" target="_blank" rel="noopener" aria-label="Grupos Categorizados Colciencias Convocatoria 693/2014 - abrir en una nueva pestaña">Grupos Categorizados Colciencias Convocatoria 693/2014
                                        </a>
                                    </li>
                                </ul>

                                <p style="font-size: 18px;">
                                    <a href="/images/investigacion/Resolucion%206525%20Semilleros%20de%20Investigacion.PDF" target="_blank" aria-label="Resolución No. 006525 del 22 de Julio de 2014 - abrir en una nueva pestaña">Resolución No. 006525 del 22 de Julio de 2014
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por la cual se reglamenta los <strong>Semilleros de investigación</strong>.</p>

                                <p style="font-size: 18px;">
                                    <a href="http://viaci.unad.edu.co/images/documentos/Viacademica/sigi/sigi-resol-006524.pdf" target="_blank" rel="noopener" aria-label="Resolución No. 006524 del 22 de Julio de 2014 - abrir en una nueva pestaña">Resolución No. 006524 del 22 de Julio de 2014
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por el cual se reglamenta el <strong>Comité de posgrados</strong> de la UNAD.</p>

                                <p style="font-size: 18px;">
                                    <a href="https://viaci.unad.edu.co/images/documentos/Viacademica/sigi/sigi-resol-005173.pdf" target="_blank" rel="noopener" aria-label="Resolución No. 005173 del 09 de Mayo de 2014 - abrir en una nueva pestaña">Resolución No. 005173 del 09 de Mayo de 2014
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por la cual se reglamenta el <strong>Comité de Ética</strong> en Investigación.</p>

                                <p style="font-size: 18px;">
                                    <a href="https://viaci.unad.edu.co/images/documentos/Viacademica/sigi/sigi-resol-006464.pdf" target="_blank" rel="noopener" aria-label="Resolución No. 006464 del 09 de Mayo de 2014 - abrir en una nueva pestaña">Resolución No. 006464 del 09 de Mayo de 2014
                                    </a>
                                </p>
                                <p style="font-size: 18px;">Por la cual se reglamenta el <strong>Comité de Investigación</strong> en Humanidades y Ciencias Sociales.</p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-evaluacion" role="tabpanel" aria-labelledby="nav-evaluacion-tab">
                        <p>Contenido de Evaluación...</p>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <!-- video -->
                <div class="card mt-5">
                    <div class="card-body p-0">
                        <div class="ratio ratio-16x9">
                            <iframe id="video-frame" src="https://www.youtube.com/1d68cfc0-2fbb-408a-9a98-0250f2dbeea3"
                                title="YouTube video player"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"></iframe>
                        </div>
                    </div>
                </div>
                <div class="container my-3">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Semilleros de investigación UNAD</h4>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Disfruta de la lista de reproducción de YouTube:</p>
                            <iframe width="100%" height="315" src="https://www.youtube.com/embed/videoseries?list=PLnYwAuuEvka_r3AZ6o0AepsPGuhPInX9Q" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
    <script>
        const iframe = document.getElementById('pdf-frame');
        const fallbackSrc = 'docs/manual_semilleros_de_Investigación.pdf';

        iframe.addEventListener("load", function () {
            try {
                const iframeDoc = iframe.contentDocument || iframe.contentWindow.document;
                if (!iframeDoc.body || iframeDoc.body.innerHTML.length === 0) {
                    console.log("Error al cargar el PDF externo. Cambiando a contenido local...");
                    iframe.src = fallbackSrc;
                }
            } catch (e) {
                console.log("No se pudo acceder al contenido del PDF. Cambiando a contenido local...");
                iframe.src = fallbackSrc;
            }
        });
    </script>
    <script>
        const videoIframe = document.getElementById('video-frame');
        const fallbackVideoSrc = 'video/semilleros.mp4';

        videoIframe.addEventListener("load", function () {
            try {
                const iframeDoc = videoIframe.contentDocument || videoIframe.contentWindow.document;
                if (!iframeDoc.body || iframeDoc.body.innerHTML.length === 0) {
                    console.log("Error al cargar el video de YouTube. Cambiando a contenido local...");
                    cambiarVideoLocal();
                }
            } catch (e) {
                console.log("No se pudo acceder al contenido del video. Cambiando a contenido local...");
                cambiarVideoLocal();
            }
        });

        function cambiarVideoLocal() {
            const videoContainer = document.createElement('video');
            videoContainer.setAttribute('controls', 'controls');
            videoContainer.setAttribute('width', '100%');
            videoContainer.setAttribute('height', '100%');

            const source = document.createElement('source');
            source.setAttribute('src', fallbackVideoSrc);
            source.setAttribute('type', 'video/mp4');
            videoContainer.appendChild(source);
            videoIframe.parentNode.replaceChild(videoContainer, videoIframe);
        }
    </script>
</asp:Content>
