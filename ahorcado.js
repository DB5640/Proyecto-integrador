const palabras = ["javascript", "programa", "teclado", "variable", "funcion", "logica", "condicional", "bucle", "array", "objeto", "sintaxis", "depuracion", "algoritmo", "interfaz", "desarrollo", "aplicacion"];
let palabraSecreta = "";
let letrasAdivinadas = [];
let intentosRestantes = 6;

function iniciarJuego() {
  palabraSecreta = palabras[Math.floor(Math.random() * palabras.length)];
  letrasAdivinadas = [];
  intentosRestantes = 6;

  document.getElementById("mensaje").innerText = "";
  document.getElementById("intentos").innerText = "Intentos restantes: " + intentosRestantes;
  mostrarPalabra();
  crearBotones();
}

function mostrarPalabra() {
  let palabraMostrada = "";

  for (let letra of palabraSecreta) {
    if (letrasAdivinadas.includes(letra)) {
      palabraMostrada += letra + " ";
    } else {
      palabraMostrada += "_ ";
    }
  }

  document.getElementById("palabra").innerText = palabraMostrada.trim();
}

function crearBotones() {
  const contenedor = document.getElementById("letras");
  contenedor.innerHTML = "";

  for (let i = 65; i <= 90; i++) {
    const letra = String.fromCharCode(i).toLowerCase();
    const boton = document.createElement("button");
    boton.innerText = letra;
    boton.classList.add("letra-btn");

    boton.addEventListener("click", function () {
      manejarIntento(letra, boton);
    });

    contenedor.appendChild(boton);
  }
}

function manejarIntento(letra, boton) {
  boton.disabled = true;

  if (palabraSecreta.includes(letra)) {
    letrasAdivinadas.push(letra);
    mostrarPalabra();

    if (ganaste()) {
      document.getElementById("mensaje").innerText = "🎉 ¡Ganaste!";
      desactivarLetras();
    }
  } else {
    intentosRestantes--;
    document.getElementById("intentos").innerText = "Intentos restantes: " + intentosRestantes;

    if (intentosRestantes === 0) {
      document.getElementById("mensaje").innerText = `💀 ¡Perdiste! La palabra era: ${palabraSecreta}`;
      desactivarLetras();
    }
  }
}

function ganaste() {
  for (let letra of palabraSecreta) {
    if (!letrasAdivinadas.includes(letra)) {
      return false;
    }
  }
  return true;
}

function desactivarLetras() {
  const botones = document.querySelectorAll(".letra-btn");
  botones.forEach(boton => boton.disabled = true);
}

// Iniciar automáticamente
iniciarJuego();
