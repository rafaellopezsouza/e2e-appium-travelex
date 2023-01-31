# language: pt
@all @cadastro_nome @todo
Funcionalidade: Cadastro - Nome

  Contexto: 
    Dado que esteja na tela de cadasto de "Nome"

  Cenario: Validar tela inicial cadastro "Nome"
    Então os widgets da tela "Cadastro-Nome" deverá ser exibido com sucesso

  Cenario: Tentar informar somente o primeiro nome
    Quando digitar somente o primeiro nome
    Então o botao Continuar deverá estar desabilitado
    E a mensagem de "erro" deverá ser: "Insira seu Nome Completo"

  Cenario: Tentar colocar espaços em branco no inicio do nome
    Quando digitar o nome com espaços no inicio
    Então o nome deverá estar sem os espaços em branco no inicio

  Cenario: Tentar colocar espaços em branco no inicio do nome
    Quando digitar caracteres especias no nome (#$%@)
    Então o nome não deverá conter esses caracteres especiais

  Cenario: Tentar digitar números no nome
    Quando digitar numeros (12345..)
    Então o nome não deverá conter os números

  Cenario: Preencher um nome válido
    Quando digitar um nome e sobrenome válido
    Então o botao Continuar deverá estar habilitado
    E ao clicar, deverá ser redirecionado para a tela de "Cadastro - Data Nascimento"

  Cenario: Preencher um nome válido, e apagar
    Quando digitar um nome e sobrenome válido
    Então o botao Continuar deverá estar habilitado
    Quando apagar o nome e sobrenome
    Então o botao Continuar deverá estar desabilitado
