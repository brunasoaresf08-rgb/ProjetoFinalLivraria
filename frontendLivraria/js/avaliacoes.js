async function criarAvaliacao(event) {
  event.preventDefault();

  const usuario_id = document.getElementById("usuario_id").value;
  const livro_id = document.getElementById("livro_id").value;
  const nota = document.getElementById("nota").value;
  const comentario = document.getElementById("comentario").value;

  if (!usuario_id || !livro_id || !nota || !comentario) {
    alert("Preencha todos os campos!");
    return;
  }

  try {
    const resposta = await fetch("http://localhost:3000/avaliacoes", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        usuario_id,
        livro_id,
        nota,
        comentario
      })
    });

    if (!resposta.ok) {
      alert("Erro ao criar avaliação.");
      return;
    }

    const dados = await resposta.json();
    alert("Avaliação criada com sucesso!");

    // Atualiza a lista na tela
    carregarAvaliacoes();

  } catch (erro) {
    console.error("Erro na requisição:", erro);
    alert("Erro de conexão com o servidor.");
  }
}

document.getElementById("btnAvaliar").addEventListener("click", criarAvaliacao);
