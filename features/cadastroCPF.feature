# language: pt
@all @cadastro_cpf @todo
Funcionalidade: Cadastro - CPF

  Contexto: 
    Dado que esteja na tela de cadasto de "CPF"

  Cenario: Validar tela inicial cadastro "CPF"

  Esquema do Cenario: Validar CPF "<condition>"
    Quando digitar um CPF "<condition>"
    Entao o botão deverá estar "<btn_condition>"
    E o texto digitado no campo CPF "<result>" ser exibido

    Exemplos: 
      | condition      | btn_condition | resul      |
      | com letras     | desabilitado  | não deverá |
      | com 10 numeros | desabilitado  | deverá     |
      | com 12 numeros | habilitado    | deverá     |

  Esquema do Cenario: Preencher CPF "<condition>"
    Quando digitar um CPF "<condition>"
    Entao o botão deverá estar "habilitado"
    E a mensagem de "erro" deverá ser: "<msg>"

    Exemplos: 
      | condition     | msg               |
      | inexistente   | CPF inválido      |
      | já cadastrado | CPF já cadastrado |

  Cenario: Cadastrar com CPF válido e não cadastrado
    Quando digitar o CPF válido e não cadastrado
    Entao o botão deverá estar "habilitado"
    E ao clicar deverá ser redirecionado para a tela de "Selecionar Nacionalidade"

  Cenario: Digitar um CPF com status na Blacklist
    Quando digitar um CPF na blacklist
    Entao E a mensagem de "alerta" deverá ser: "Consulte a mesa para continuar"

  Cenario: Validar Nome

  Cenario: Validar Data de Nascimento

  Cenario: Validar E-mail

  Cenario: Validar Telefone

  Cenario: Validar SMS

  Cenario: Validar Endereço
