# language: pt
@all @cadastro_data_nascimento @todo
Funcionalidade: Cadastro - Nome

  Contexto: 
    Dado que esteja na tela de cadasto de "Data Nascimento"

  Cenario: Validar tela inicial cadastro "Data Nascimento"
    Então os widgets da tela "Cadastro-Data Nascimento" deverá ser exibido com sucesso

  Cenario: Tentar inserir caracteres não numéricos
    Quando digitar caracteres não numéricos
    Então nenhum caracter deverá ser digitado

  Esquema do Cenario: Tentar digitar "<date>" com numero acima de "<number>"
    Quando digitar a data de nascimento com o "<date>" com número "<number>"
    Então não deve ser possivel digitar esse "<date>" como data de nascimento

    Exemplos: 
      | date | number |
      | dia  |     32 |
      | mês  |     13 |
      | ano  |   2024 |

  Cenario: Digitar somente 7 digitos para a data
    Quando digitar somente 7 números como data de nascimento
    Então o botao Continuar deverá estar desabilitado

  Cenario: Validar idade abaixo de 16 anos
    Quando digitar a data com menos de 16 anos
    Então o botao Continuar deverá estar desabilitado
    E ao clicar, a mensagem "Idade minima permitida é de 16 anos completos." deverá ser exibida abaixo do campo data

  Cenario: Digitar Data de Nascimento válida, acima de 16 anos
    Quando digitar a data válida acima de 16 anos
    Então o botao Continuar deverá estar habilitado
    E ao clicar, deverá ser redirecionado para a tela de "Cadastro - Email"
