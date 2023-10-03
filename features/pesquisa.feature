#language: pt


Funcionalidade: Pesquisa
    Para que eu possa pesquisar artigos no site da Agi
    Sendo um usuario comum
    Posso pesquisar qualquer termo para consultar os artigos

    @pesquisa_sucesso
    Cenário: Pesquisar artigos por palavra-chave "comprar online"
        Dado que estou na página inicial do Blog do Agi
        Quando eu digitar "comprar online" na barra de pesquisa
        E eu clicar no botão de pesquisa
        Então devo ver uma lista de artigos relacionados a "comprar online"


    @pesquisa_fail
    Cenário: Pesquisar por palavra-chave que não possui resultados
        Dado que estou na página inicial do Blog do Agi
        Quando eu digitar "palavra chave inexistente" na barra de pesquisa
        E eu clicar no botão de pesquisa
        Então devo ver uma mensagem informando que "nenhum_resultado'"
        E a lista de artigos deve estar vazia