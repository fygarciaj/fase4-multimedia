<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Homologaciones.aspx.vb" Inherits="Homologaciones" %>

<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homologaciones</title>
    <style>
        /* Estilos generales */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Estilo para el contenedor principal */
        .container {
            width: 80%;
            margin: 40px auto;
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Estilo para los títulos */
        h1 {
            color: #4A90E2;
            text-align: center;
            font-size: 2.8em;
            margin-top: 20px;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Estilo para los párrafos */
        p {
            color: #555;
            font-size: 1.2em;
            line-height: 1.8;
            margin-bottom: 20px;
            text-align: justify;
            text-justify: inter-word;
            letter-spacing: 0.5px;
        }

        /* Estilo para las imágenes */
        img {
            display: block;
            margin: 20px auto;
            border-radius: 8px;
        }

        /* Estilo para los enlaces */
        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s;
        }

        a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* Estilo para el iframe de YouTube */
        iframe {
            display: block;
            margin: 20px auto;
            border-radius: 8px;
        }

        /* Estilo para el PDF embed */
        embed {
            display: block;
            margin: 0 auto;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        
        /* Estilo para el audio */
        audio {
            display: block;
            margin: 20px auto;
            width: 100%;
            max-width: 600px;
            border-radius: 8px;
            background-color: #f1f1f1;
            padding: 10px;
        }

        /* Añadir un fondo degradado al contenedor */
        .container {
            background: linear-gradient(135deg, #ffffff, #f1f1f1);
        }

        /* Estilo para las etiquetas de sección */
        .section-title {
            font-size: 1.5em;
            color: #4A90E2;
            margin-top: 40px;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Logo -->
            <img src="unadlogo.png" alt="Logo" width="750" height="150" />
            <h1>HOMOLOGACIONES</h1>
            <img src="validacion.jpg" alt="Logo" width="650" height="150" />
            
            <p>
                La homologación es el proceso mediante el cual se reconoce oficialmente que un producto, servicio, título académico o procedimiento cumple con ciertas normas, estándares o requisitos establecidos por una autoridad competente. Dependiendo del contexto, su función puede variar:
            </p>

            <p>
                <strong>En productos y servicios:</strong> La homologación asegura que el producto o servicio cumple con las normativas de calidad, seguridad y medio ambiente. Es importante para garantizar que lo que se ofrece en el mercado cumple con ciertos estándares internacionales o nacionales.
            </p>

            <p>
                <strong>En educación:</strong> Se refiere al reconocimiento oficial de títulos o estudios obtenidos en instituciones de un país, por parte de otro país, para que sean válidos y tengan el mismo valor académico. Esto es esencial para que los estudiantes que han estudiado en el extranjero puedan continuar su educación o ingresar al mercado laboral en otro país.
            </p>

            <p>
                <strong>En procesos y procedimientos:</strong> La homologación puede ser la validación de procesos, como en el caso de las certificaciones de calidad o procedimientos industriales, donde se verifica que los métodos empleados cumplen con los estándares requeridos.
            </p>

            <p>
                En general, la homologación garantiza la confiabilidad y aceptación de lo que está siendo validado, asegurando que se ajusta a un marco normativo específico.
            </p>

            <div class="section-title">A continuación, se presenta un video relacionado:</div>
            <iframe width="560" height="315" src="https://www.youtube.com/embed/xlzbumWcsvQ?si=RSSPQ7mlVgyjNj02" 
                    title="YouTube video player" frameborder="0" 
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                    referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            
            <p>&nbsp;</p>
            <div class="section-title">Descarga o visualiza el documento PDF:</div>
            <embed src="homologacion.pdf" type="application/pdf" width="600" height="500" />

            <div class="section-title">Escucha el siguiente audio informativo:</div>
            <audio controls>
                <source src="audiohomologaciones.mp3" type="audio/mpeg">
                Tu navegador no soporta la reproducción de audio.
            </audio>
        </div>
        <footer class="text-center mt-4">
    <p>Creado: 14 nov del 2024 - Jaime Antonio Arias - Ingeniería de Sistemas - Programa Visual Basic Avanzado</p>
    <p>Contacto: 3147759171 | <a href="mailto:jaariasari@unadvirtual.edu.co">jaariasari@unadvirtual.edu.co</a></p>
    <p>&copy; 2024 Jaime Antonio Arias. Todos los derechos reservados.</p>
</footer>

    </form>
</body>
</html>

