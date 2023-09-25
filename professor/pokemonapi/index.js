document.getElementById('botao')
.addEventListener('click', function(){

let nome = document.getElementById('nome-pokemon').value
     fetch('https://pokeapi.co/api/v2/pokemon/'+nome)
          .then(function(response){
               return response.json()
          }).then (function(response){

               let html_habilidades = ''
               for (const hab of response.abilities) {
                    html_habilidades += '<li>' +hab.ability.name+'</li>'

}
let lista = document.getElementById('habilidades')
               console.log(response.sprites.front_default)
               lista.innerHTML = html_habilidades

               let url = response.sprites.front_default
               document.getElementById('img-card').setAttribute('src',url)
          })
     })
     
