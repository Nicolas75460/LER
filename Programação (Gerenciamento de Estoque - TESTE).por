programa {
  funcao inicio() {
    inteiro n
    inteiro quantidade, quantidadeAmais
    inteiro opcao1, opcao2

    escreva("Olá, aqui você poderá gerenciar seu estoque.\n")
    escreva("Coloque quantos itens você irá querer: ")
    leia(n)

    cadeia estoque[n]

    limpa()

    escreva("Quais itens irá ter?\n")

    para(inteiro i = 0; i < n; i++){
      escreva("Item ", i + 1, ": ")
      leia(estoque[i])
    }

    inteiro quantidade[n]

    limpa()

    escreva("Agora insira a quantidade de cada um dos itens.\n")

    para(inteiro i = 0; i < n; i++){
      escreva("Quantidade ", estoque[i], ": ")
      leia(quantidade[i])
    }

    limpa()

    para(inteiro i = 0; i < n; i++){
      escreva("\nItem: ", estoque[i], " | Quantidade: ", quantidade[i])
    }

    escreva("Deseja inserir mais itens?")
    escreva(" 1 -> SIM")
    escreva(" 2 -> NÃO")
    escreva("Escreva o número das opções para selecionar: ")
    leia(opcao1)

    se(opcao1 == 1){
      faca{
        limpa()
        escreva("Insira algum item que deseja adicionar.\n")

        para(inteiro i = 0; i < n; i++){
          escreva(" ", i + 1, " -> " , estoque[i])
        } 

        escreva("Digite o número do item que quer adicionar ou 0 para continuar: ")
        leia(opcao2)

        para(inteiro i = 0; i < n; i++){
          se(opcao2 - 1 == estoque[i]){
            escreva("Quanto você quer aumentar: ")
            leia(quantidadeAmais)
          }
        }
      }
      enquanto(opcao2 != 0)
    }
  
  }
}
