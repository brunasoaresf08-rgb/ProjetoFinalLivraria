async function criar_conta(event) {
  event.preventDefault();

  const nome = document.getElementById("nome").value;
  const email = document.getElementById("email").value;
  const senha = document.getElementById("senha").value;
  const confirmaSenha = document.getElementById("confirmaSenha").value

  if(senha != confirmaSenha){
    alert("Senhas diferente");
    return;
  }

  if (!email || !senha || !nome || !confirmaSenha) {
    alert("Por favor, preencha todos os campos.");
    return;
  }

  try {
    const resposta = await fetch("http://localhost:3000/usuarios", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        "nome": nome,
        "email": email,
        "senha": senha,
        "curso": curso,
        "confirmaSenha" : confirmaSenha
      })
    });

    if (!resposta.ok) {
    alert("Usúario criado com sucesso")
    window.location.href = "index.html";
    }

    const dados = await resposta.json();


  } catch (erro) {
    console.error("Erro na requisição:", erro);
    alert("Erro de conexão com o servidor.");
  }
}

document.getElementById("btnQ").addEventListener("click", criar_conta);

