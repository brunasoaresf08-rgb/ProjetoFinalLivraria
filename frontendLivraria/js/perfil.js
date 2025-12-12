
const input_nome = document.getElementById("nome");
const input_email = document.getElementById("email");
const input_senha = document.getElementById("senha");
const input_celular = document.getElementById("celular");
const input_data_nascimento = document.getElementById("data_nascimento");
const input_curso = document.getElementById("curso");
const input_confirma = document.getElementById("confirma");

const nome = localStorage.getItem("nome")
const senha = localStorage.getItem("senha")
const email = localStorage.getItem("email")
const celular = localStorage.getItem("celular")
const curso = localStorage.getItem("curso")
const confirmaSenha = localStorage.getItem("confirmaSenha")
const data_nascimento = localStorage.getItem("dataNascimento").slice(0,10)



if(nome){
    input_nome.value = nome
}
if(email){
    input_email.value = email
}
if(senha){
    input_senha.value = senha
}
if(confirma){
    input_confirmaSenha.value = input_confirmaSenha
}
if(celular){
    input_celular.value = celular
}
if(curso){
    input_curso.value = curso
}
if(data_nascimento){
    input_data_nascimento.value = data_nascimento
}
