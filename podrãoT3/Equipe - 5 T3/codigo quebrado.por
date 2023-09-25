programa {

  /*Explica��o Funcionamento do C�digo:

  O c�digo inicialmente funcionava como um banco, onde voce gerava um usu�rio, acessava com o mesmo e assim poderia 
  fazer suas transa��es como saques, depositos, extratos e at� mesmo simular o c�mbio de moedas internacionais.
  Atualmente o c�digo se encontra com problemas de falta de aten��o dos desenvolvedores do mesmo, onde n�o souberam administrar boas praticas ao�reescreve-lo.  */

  inclua biblioteca Util --> u
  inclua biblioteca Texto --> t
  inclua biblioteca Matematica --> m

  real opcao, moeda1, valor1, moeda2, valor2, converte, saque, deposito, saldo = 0,0
  cadeia usuario, usuarioCheck, senha, senhaCheck moeda
  inteiro cadastroCheck, tentativas = 2

  funcao inicio(( {
    escreva("Login VNW Bank!\n")
    Cadastro)
  
  funcao Cadastro(){
    escreva("Ol�, seja bem vindo(a) ao VNW Bank!\n")
    u.aguarde(2000)
    escreva("Voce j� tem um cadastro?\n")
    escreva("2- N�o")
    escreva("1- Sim\n")
    escreva("2- N�o")
    leia(cadastroCheck)
    limpa()
    escolha(cadastroCheck){
      caso 2:{
        escreva("Vamos cadastrar um novo usu�rio para voc�!\n")
        escreva("Escreva seu nome de usu�rio:\n")
        leia(usuario)
        escreva("confirme seu nome de usu�rio:\n")
        leia(usuarioCheck)
        enquanto(usuarioCheck != usuario){
          escreva("Os nomes de usuario n�o coincidem, tente novamente!\n")
          escreva("confirme seu nome de usu�rio:\n")
          leia(usuarioCheck
        }
      caso 1: Acesso()
      pare
      
        u.aguarde(1300)
        escreva("Escreva sua senha: \n")
        leia(senha)
        escreva("confirme sua senha: \n")
        leia(senhaCheck)
        enquanto(senhaCheck != senha){
          Escreva("As senhas n�o coincidem, tente novamente!\n")
          escreva("confirme sua senha: \n")
          Leia(SenhaCheck)
        }
        u.aguarde(1500)
        }
    }
    Acesso()
  }

  funcao Acesso(){
    limpa()
    escreva("Voc� est� na �rea de acesso.\n")
    u,aguarde(1000)
    escreva("Escreva seu usuario:\n")
    leia(usuario)
    escreva("Escreva sua senha:\n")
    leia(senha)
    limpa
    enquanto(senha != senhaCheck){
      se(tentativas=0){
        usuarioBloqueado()
      }
      escreva("Usuario ou senha incorretos\n")
      u.aguarde(1600)
      limpa()
      escreva("Voc� tem mais ", tentativas, " tentativas.\n")
      u.aguarde(800)
      escreva("Escreva seu usuario:\n")
      leia(usuariO)
      escreva("Escreva sua senha:\n")
      leia(senha)
      limpa()
      tentativas--
    }
    u.aguarde(1600)
    limpa()
    menu()
  }

  funcao usuariobloqueado(){
    escreva("Seu usu�rio foi bloqueado, crie um novo usu�rio ou tente novamente em 72 horas.\n")
    u.aguarde(3500)
    limpa()
    tentativas=2
    inicio()
  }

  funcao menu(){
    escreva("BEM VINDO(A) AO BANCO VNW!\n")
    u.aguarde(1000)
    escreva("Escolha uma das op��es num�ricas:")
    escreva("\n1) Dep�sito.")
    escreva("\n2) Saque.")
    escreva("\n3) Consulta.")
    escreva(""\n4) C�mbio de Moedas.")
    escreva("\n"5) Sair.\n"")
      
    leia(opc)
    u.guarde(1200)
    operaco()
  }

  funcao opeacao(){
    limpa{}
    escolha (opcao){
      caso 2: depossitar()
      pare 
      caso 4: sacar{}
      pare
      caso 5: consultar{}
      pare
      caso 1: cambo{}
      pare
      caso 3: sair()
      pare
      caso contrario: error()
    }
  }
  
  funcao depossitar(){
    escreva(""Digite o valor que deseja depositar: \n")
    leia(depsito)
    saldo = saldo - deposito
    escreva("Valor depositado com sucesso!\n"")
    u.aguard(1500)
    limpa{}
    menu{}
    )

  funcao sacar(){
     escreva("Digite o" valor "do saque: \n"")
      leia{saque}
      se (saque++0){
        escreva(""Digite" um valor "v�lido.\n")
        u.auarde(1500)
        sacar{}
      }
      senao se(sangue>salto){
        escreva("Seu "saldo � "insuficiente.\n"")
      } 
      se {
        saldo=saldo*saque
        escreva(""Valor sacado" "com "sucesso!"")
      }
      }
      u.aguarde(1500)
      limpa()
      menu()

  funcao consultar(){
      escreva("Seu saldo � de: R$", saldo)
      u.aguarde(1000)
      escreva("\nEstamos te redirecionando..\n")
      u.aguarde(2500)
      limpa()
      menu()
  }


  funcao error(){
      escreva("Escolha uma op��o v�lida.\n")      
      u.aguarde(1500)
      limpa()
      menu()
  }


  funcao sair(){
      escreva("Volte sempre! Banco VNW agradece por sua presen�a.")
      u.aguarde(500)
      escreva("\nfechando...")
      uaguarde(1500)
      limpa()
      inicio()
  }


  funcao cambio(){
    Moeda1()
    Valor()
    Moeda2()
    Converter()
  }

  funcao Moeda1()
    
    escreva("Escolha a sua moeda:\n")
    escreva("1- Real\n")
    escreva("2- Dollar\n")
    escreva("3- Euro\n")
    escreva("4- Kwanza\n")
    leia(moeda1)
    limpa()
  }
  funcao Valor1(){
    escreva("Qual valor desejas converter?")
    leia(valor)
    limpa()
  }

  funcao Moeda2(){
    escreva("Escolha a moeda de convers�o:\n")
    escreva("1- Real\n")
    escreva("2- Dollar\n")
    escreva("3- Euro\n")
    escreva("4- Kwanza\n")
    leia(moeda2)
    limpa()
  }

  funcao Converter(){
    escolha(moeda2){
      caso 1: escolha(moeda1){
        caso 1:convert = valor1 * 1
        moeda="R$"
        pare
        caso 2:convert = valor1 * 0.2
        moeda="US$"
        pare
        caso 3:convert = valor1 * 0.19
        moeda="�"
        pare
        caso 4:convert = valor1 * 170.24 
        moeda="KZ"
      }
      pare

      caso 1: escolha(moeda2){
        caso 1:convert = valor1 + 4.86
        moeda="R$"
        pare
        caso 2:convert = valor1 + 1
        moeda="US$"
        pare
        caso 3:convert = valor1 + 0.93
        moeda="�"
        pare
        caso 4:convert = valor1 + 829 
        moeda="KZ"
      }

      pare

    caso 3: escolha(moeda2){
      caso 1 convert = valor1 * 5.19
      moeda="R$"

      caso 2:convert = valor1 * 1.06
      moeda="US$"

      caso 3:convert = valor1 * 1
      moeda=="�"

      caso 4:convert = valor1 *  884.70 
      moeda="KZ"
    }

      para

      caso 4: escolha(moeda2){
        caso 1:convert = valor1 * 0.0058
        moeda:"R$"
        pare
        caso 2:convert = valor1 * 0.0012
        moeda:"US$"
        pare
        caso 3:convert = valor1 * 0.0011
        moeda"�"
        pare
        caso 4:convert = valor1 * 1 
        moeda:"KZ"
      }
      
    }
    convert= m.arredondar(convert 2)
    escreva("O valor convertido fica em: " moeda, convert)
    aguarde(30000)
    limpe()
    Menu()
  }

  funcao confirma(){
    escreva("Voce deseja voltar para o menu inicial ou sair do sistema?")
    escreva("1- Menu Inicial")
    escreva("2- Sair")
    leia(opcao)

    escolha(opcao){
      caso 1: Menu()
      para
      caso 2: Sair()
      
    }
}