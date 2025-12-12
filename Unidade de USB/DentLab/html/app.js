let resposta = document.getElementById("r");
const nome = 'Estrelinha CRF'
const azul = '#6E42FF';
const rosa = '#EEABC4';

let confere = false;
resposta.style.backgroundColor=`${azul}`;
resposta.addEventListener("click",()=>{ 
   if(confere == false){
    resposta.style.backgroundColor=`${azul}`;
    resposta.innerHTML = `<h1>Ola</h1>`;
    confere = true;
   }else{
    resposta.style.backgroundColor=`${rosa}`;
    resposta.innerHTML = `<h1>Tchau</h1>`;
    confere = false;
   }
 
});
