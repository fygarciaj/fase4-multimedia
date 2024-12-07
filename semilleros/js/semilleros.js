let currentIndex = 0;

// Cambiar a la siguiente pregunta solo si se validó
function validateAnswer() {
    const currentRadioGroup = document.querySelector(
        `input[name="rbPregunta${currentIndex + 1}"]:checked`
    );

    if (!currentRadioGroup) {
        alert("Por favor, selecciona una opción para continuar.");
        return false;
    }

    return true;
}

function nextQuestion() {
    if (validateAnswer()) {
        currentIndex++;
        showView();
    }
}

function previousQuestion() {
    if (currentIndex > 0) {
        currentIndex--;
        showView();
    }
}

// Cambiar el índice de la pregunta actual
function showView() {
    const views = document.querySelectorAll("[id*='ViewPregunta']");
    views.forEach((view, index) => {
        view.style.display = index === currentIndex ? "block" : "none";
    });
}

// Cargar la vista por primera vez
document.addEventListener("DOMContentLoaded", function () {
    showView();
});
