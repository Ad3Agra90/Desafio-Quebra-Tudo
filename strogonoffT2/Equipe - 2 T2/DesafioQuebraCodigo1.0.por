programa {
  real saldo = 0
  inteiro userDefault = 1
  inteiro passDefault = 123

  funcao inicio() {
    login()
  }
  funcao login(){
    inteiro usuario
    inteiro senha

    enquanto(usuario != userDefault ou senha != passDefault){
      
      escreva("Digite sua conta: \n")
      leia(usuario)

      escreva("Digite sua senha: \n")
      leia(senha)
      se(usuario ==  userDefault e senha == passDefault){
        mainBanco()
      }senao{
         escreva("Credenciais incorretas, tente novamente!\n")
      }
    }
  }
  funcao mainBanco(){
    inteiro opcao

    escreva("1. Dep�sitos\n2. Saque\n3. Saldo\n4. Trocar senha\n5. Sair\n")
    leia(opcao)

    escolha(opcao){
      caso 1: 
        deposito()
      pare
      caso 2:
        saque()
      pare
      caso 3:
        saldo()
      pare
      caso 4:
      limpa()
        trocarSenha()
      pare
      caso 5:
      limpa()
        sair()
      pare
    }
  }
  funcao saque(){
    real saque
    inteiro opcao 
    escreva("Informe a quantia que voc� gostaria de sacar: \n")
    leia(saque)
    saldo -= saque //saldo = saldo - saque
    escreva("Voc� agora tem R$", saldo, " na sua conta\nVoc� gostaria de fazer alguma outra transa��o?\n1. Sim\n2. N�o\n")
    leia(opcao)
  
    se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      escreva("Opi��o inv�lida")
    }
  }
  funcao deposito(){
    real deposito
    inteiro opcao 
    escreva("Informe a quantia que voc� gostaria de depositar: \n")
    leia(deposito)
    saldo += deposito //saldo = saldo - saque
    escreva("Voc� agora tem R$", saldo, " na sua conta\nVoc� gostaria de fazer alguma outra transa��o?\n1. Sim\n2. N�o\n")

   leia(opcao)
  
    se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      escreva("Opcao inv�lida")
    }
  }
  funcao saldo(){
    inteiro opcao
    escreva("Saldo dispon�vel: R$", saldo,"\nVo�� gostaria de fazer alguma outra transa��o?\n1. Sim\n2. N�o\n")

   leia(opcao)
  
     se(opcao == 1){
      mainBanco()
    }senao se(opcao == 2){
      sair()
    }senao{
      limpa()
      escreva("Opcao inv�lida")
    }
  }
  funcao trocarSenha(){
    inteiro novaSenha
    escreva("Digite sua nova senha: \n")
    leia(novaSenha)
    passDefault = novaSenha
    limpa()
    escreva("Senha atualizada com sucesso!\n")
  }
  funcao sair(){
    escreva("Obrigado por utilizar nossos servi�os.")
  }
}
