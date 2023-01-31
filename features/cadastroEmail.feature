# language: pt
@all @cadastro_email @todo
Funcionalidade: Cadastro - Nome

  Contexto: 
    Dado que esteja na tela de cadasto de "Email"

  Cenario: Validar tela inicial cadastro "Data Nascimento"
    Então os widgets da tela "Cadastro-Email" deverá ser exibido com sucesso

  Esquema do Cenario: Tentar cadastrar email sem "<condition>"
    Quando digitar o email sem "<condition>"
    Então o botao Continuar deverá estar desabilitado

    Exemplos: 
      | condition |
      | @         |
      | .com      |

  Cenario: Digitar um email com mais de um @
    Quando digitar o email com dois @
    Então o botão Continuar deverá permanecer desabilitado

  Cenario: Entar cadastrar email com caracteres especiais (#$%)
    Quando digitar o email caracteres especiais
    Então o botao Continuar deverá estar desabilitado

  Cenario: Digitar email válido e apagar
    Quando digitar um email válido
    Então o botão Continuar deverá permanecer habilitado
    Quando apagar o email válido
    Então o botão Continuar deverá permanecer desabilitado

  Cenario: Digitar e-mail válido e existente
    Quando digitar um email válido
    Então o botão Continuar deverá ser habilitado
    E ao clicar, deverá ser redirecionado para a tela de "Cadastro - Telefone"
