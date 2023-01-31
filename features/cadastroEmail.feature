# language: pt
@all @cadastro_email @todo
Funcionalidade: Cadastro - Nome

  Contexto: 
    Dado que esteja na tela de cadasto de "Email"

  Cenario: Validar tela inicial cadastro "Data Nascimento"
    Então os widgets da tela "Cadastro-Email" deverá ser exibido com sucesso

  Cenario: Tentar cadastrar email sem @
    Quando digitar o email sem @
    Então o botao Continuar deverá estar desabilitado
