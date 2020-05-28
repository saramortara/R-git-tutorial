# Trabalhos reprodutíveis em R e git

Este tutorial é parte da palestra **Trabalhos reprodutíveis com R e git: um exemplo usando o pacote coronabr** apresentado no dia 27 de maio de 2020 (a apresentação da palestra você encontra [aqui]()) no *meet up* das [RLadiesRio](https://github.com/rladies-rio/meetup-presentations_rio). 

Este material é construído por mim e [Andrea Sánchez-Tapia](https://github.com/AndreaSanchezTapia). Fique à vontade para usar e reproduzir desde que dando os devidos créditos.

## Estrutura de pastas

Não há trabalho reprodutível sem uma estrutura de pastas clara e documentada. Por isso, esse README começa apresentando a estrutura de pastas. Essa é uma estrutura geral que pode ser adaptada para necessidades variadas. Não há uma única receita. Mas temos um conjunto de boas práticas que estamos construindo constantemente e que guiam nosso trabalho.

    .
    ├── codigo/               # Scripts em R
    ├── dados/                # Dados 
    ├── output/               # Outputs gerados a partir dos códigos
    ├── figs/                 # Figuras geradas a partir dos códigos
    ├── docs/                 # Relatórios reprodutíveis produzidos a partir dos outputs
    ├── *.Rproj               # Projeto de RStudio
    ├── .gitignore            # Lista dos arquivos e/ou pastas que não serão controlados
    └── README.md             # Documentação -> Leia e escreva sempre que possível ;)
    
## Organizando códigos e outputs

Utilize nomenclatura clara, informativa. É recomendado evitar espaços, acentos e pontuação em nome de arquivos. Numerar scripts e seus respectivos outputs sempre ajuda. 

## Como usar

Você pode clonar esse repositório localmente e simplesmente tentar rodar tudo que está aqui. Deve funcionar se você seguir a ordem dos scripts e trabalhar com o projeto de RStudio ou com o seu *working directory* na raiz do repositório. 

Se tiver sugestões, pode fazer um *fork* do repositório e um *pull request* para o branch `dev`.

