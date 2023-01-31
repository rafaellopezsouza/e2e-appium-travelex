# language: pt

@all @tela-inicial
Funcionalidade: Tela Inicial

Contexto: 
    Dado que o usuário abra o app

  # Cenário: Validar elementos visiveis na tela inicial
  #   Quando estiver na tela de boas vindas ao app
  #   Então os widgets devem estar visiveis e de acordo com o especificado

  Esquema do Cenario: Clicar no botão "Acessar Conta"
    Quando clicar no botão "<button>"
    Então a tela de "<page>" deverá ser exibida

    Exemplos: 
      | button           | page             |
      | Acessar Conta    | Login            |
      | Criar Conta      | Cadastro         |
      | Alerta de Câmbio | Alerta de Câmbio |
