
const API = "http://localhost:3000/usuarios/login"

async function fazerLogin() {
  const email = document.getElementById("email").value;
  const senha = document.getElementById("password").value;
  if (!email || !senha) {
    alert("Por favor, preencha todos os campos.");
    return;
  }



  const response = await fetch(API, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify({ email, senha}),
    // …
  });

  // console.log(response.status);
  if(response.status === 200){
    const resultado = await response.json();

  console.log(resultado)
  localStorage.setItem("nome", resultado[0].nome)
  localStorage.setItem("email", resultado[0].email)
  localStorage.setItem("senha", resultado[0].senha)
  localStorage.setItem("dataNascimento", resultado[0]. data_nascimento)

  localStorage.setItem("curso", resultado[0].curso)
    localStorage.setItem("celular", resultado[0].celular)
    window.location.href = "index.html";
  }else{
    localStorage.clear()
    alert("Usuario ou senha invalida")
  }
  

  





  // window.location.href = "dashboard.html";
}

//   function fazerLogin() {
//   console.log("clicou no botão");  // teste
//   window.location.href = "index.html";
// }
const botao = document.getElementById("btnQ").addEventListener("click", () => {
  fazerLogin();
  // window.location.href = "index.html";
});
