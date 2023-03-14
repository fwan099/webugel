const textos = document.querySelectorAll(".texto");

for (let i = 0; i < textos.length; i++) {
    const texto = textos[i];
    const contenido = texto.textContent;
    const limite = 20;
    if (contenido.split(" ").length > limite) {
        const palabras = contenido.split(" ");
        const nuevoContenido = palabras.slice(0, limite).join(" ") + "...";
        texto.textContent = nuevoContenido;
    }
}

const imagen = document.getElementById("libro");

imagen.addEventListener("mouseover", function() {
    imagen.src = "./public/img/icons/libro2.png";
});

imagen.addEventListener("mouseout", function() {
    imagen.src = "./public/img/icons/libro.png";
});
