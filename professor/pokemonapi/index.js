document.addEventListener('DOMContentLoaded', function () {
    function buscarPokemon(numeroOuNome, lado) {
        let url;
        if (!isNaN(numeroOuNome)) {
            url = 'https://pokeapi.co/api/v2/pokemon/' + numeroOuNome;
        } else {
            url = 'https://pokeapi.co/api/v2/pokemon/' + numeroOuNome.toLowerCase();
        }

        fetch(url)
            .then(function (response) {
                return response.json();
            })
            .then(function (response) {
                let nome = response.name;
                let tipo = response.types[0].type.name;
                let abilities = response.abilities.map(ability => ability.ability.name);
                let moves = response.moves.map(move => move.move.name);

                let cardId = 'pokemon-card-' + lado;
                let imgId = 'img-card-' + lado;
                let nomeId = 'nome-pokemon-' + lado;
                let tipoId = 'tipo-pokemon-' + lado;
                let habilidadesId = 'habilidades-' + lado;
                let movesSelectId = 'moves-select-' + lado;

                let listaHabilidades = document.getElementById(habilidadesId);
                let selectMoves = document.getElementById(movesSelectId);

                // Limpa as listas antes de adicionar novos itens
                listaHabilidades.innerHTML = '';
                selectMoves.innerHTML = '';

                for (const ability of abilities) {
                    listaHabilidades.innerHTML += '<li>' + ability + '</li>';
                }

                for (let i = 1; i <= 4; i++) {
                    selectMoves.innerHTML += '<option value="' + moves[i - 1] + '">' + moves[i - 1] + '</option>';
                }

                let urlImagem = response.sprites.front_default;
                document.getElementById(imgId).setAttribute('src', urlImagem);
                document.getElementById(nomeId).textContent = nome;
                document.getElementById(tipoId).textContent = `Tipo: ${tipo}`;

                // Mostra o cartão do Pokémon após o carregamento bem-sucedido
                document.getElementById(cardId).style.display = 'block';

                // Agora, defina o src da imagem 'Vs' após o carregamento bem-sucedido dos Pokémon
                if (lado === 'direita') {
                    document.getElementById('vs.image').src = "C:\Users\Dhyego Kaderline\Desktop\Nova pasta\aulas-subidas\professor\pokemonapi\imagens\vs.png";
                }
            })
            .catch(function (error) {
                console.error('Erro na requisição:', error);
            });
    }

    document.getElementById('botao-escolher-esquerda').addEventListener('click', function () {
        let numeroOuNome = document.getElementById('escolha-pokemon-esquerda').value.trim();
        buscarPokemon(numeroOuNome, 'esquerda');
    });

    document.getElementById('botao-escolher-direita').addEventListener('click', function () {
        let numeroOuNome = document.getElementById('escolha-pokemon-direita').value.trim();
        buscarPokemon(numeroOuNome, 'direita');
    });
});
