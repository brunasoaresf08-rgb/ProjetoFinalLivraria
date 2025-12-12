// Seleciona a div onde os favoritos vão aparecer
const lista = document.getElementById("lista-favoritos");

// Pega os favoritos do localStorage
const favoritos = JSON.parse(localStorage.getItem("favoritos")) || [];

// Se não tiver favoritos
if (favoritos.length === 0) {
  lista.innerHTML = "<p style='text-align:center; margin-top:20px;'>Nenhum livro favoritado.</p>";
} 
else {
  // Para cada livro, cria um card igual ao layout da sua página
  favoritos.forEach(livro => {
    lista.innerHTML += `
      <div class="livro">
          <img src="${livro.capa}" class="capa">
          <div class="info">
            <h3>${livro.titulo}</h3>
            <p>${livro.genero}</p>
          </div>
      </div>
    `;
  });
}

