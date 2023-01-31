# language: pt
@all @cadastro_selecionar_nacionalidade @todo
Funcionalidade: Cadastro - Selecionar Nacionalidade

  Contexto: 
    Dado que esteja na tela de cadasto de "Selecionar Nacionalidade"

  Cenario: Validar tela inicial cadastro "Selecionar Nacionalidade"
    Então os widgets da tela "Cadastro-Selecionar Nacionalidade" deverá ser exibido com sucesso

  Esquema do Cenario: Selecionar Nacionalidade "<condition>"
    Quando selecionar a opção "<condition>"
    Então o botao Continuar deverá estar habilitado
    E ao clicar, deverá ser redirecionado para a tela de "Cadastro - Nome"
    E na tela de Documentos, as opções de documento deverá ser: "<result>"

    Exemplos: 
      | condition   | result    |
      | Brasileira  | CNH e RG  |
      | Estrangeira | CNH e RNE |
