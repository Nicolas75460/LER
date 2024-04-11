programa {
  funcao inicio() {
    inteiro itens, itensAmais // Variáveis dos itens e itens adicionais 
    real quantidadeAmais // Variável da quantidade adicionais
    inteiro opcao1, opcao2, opcao3 // Variáveis das opções ao longo do código

    // Uma pequena apresentação e leitura da quantidade de itens
    escreva("Olá, aqui você poderá gerenciar seu estoque.\n") 
    escreva("Coloque quantos itens você irá querer: ")
    leia(itens)

    cadeia estoque[itens] // Vetor do estoque em relação ao número atribuído a itens 

    limpa()

    escreva("Quais itens irá ter?\n")

    // Laço de repetição para definir o nome de cada item até a quantidade de itens que a pessoa inseriu
    para(inteiro i = 0; i < itens; i++){
      escreva("Item ", i + 1, ": ")
      leia(estoque[i])
    }

    real quantidade[itens] // Vetor da quantidade de cada item do estoque

    limpa()

    escreva("Agora insira a quantidade de cada um dos itens.\n")

    // Laço de repetição para definir a quantidade de cada item
    para(inteiro i = 0; i < itens; i++){
      escreva("Quantidade ", estoque[i], ": ")
      leia(quantidade[i])
    }

    limpa()

    // Laço de repetição para mostrar uma lista dos nomes dos itens e as suas quantidades
    para(inteiro i = 0; i < itens; i++){
      escreva("Item: ", estoque[i], " | Quantidade: ", quantidade[i], "\n")
    }

    escreva("\nDeseja inserir mais itens?\n")
    escreva(" 1 -> SIM\n")
    escreva(" 2 -> NÃO\n")
    escreva("Escreva o número das opções para selecionar: ")
    leia(opcao1)

    // Condição se a resposta anterior for igual a 1
    se(opcao1 == 1){
      // Repetição até uma condição deixar de ser verdadeira
      faca{
        limpa()

        escreva("Deseja inserir novos itens?\n")
        escreva(" 1 -> SIM\n")
        escreva(" 2 -> NÃO\n")
        escreva("Escreva o número das opções para selecionar: ")
        leia(opcao2)

        limpa()
        
        // Condição se a resposta anterior for igual a 1
        se(opcao2 == 1){
          // A quantidade de itens que a pessoa deseja adicionar a mais
          escreva("Quantos itens deseja adicionar: ")
          leia(itensAmais)

          inteiro novaQuantidadeItens = itens + itensAmais // Váriavel que junta os primeiros itens a quantidade que pessoa quer adicionar
          cadeia novoEstoque[novaQuantidadeItens] // Vetor do nome dos itens com o número da quantidade nova total de itens
          real novaQuantidade[novaQuantidadeItens] // Vetor da quantidade de cada item com o número da quantidade nova total de itens

          // Laço de repetição para a atribuir aos vetores novos os valores dos vetores antigos 
          para(inteiro i = 0; i < itens; i++){
            novoEstoque[i] = estoque[i]
            novaQuantidade[i] = quantidade[i]
          }

          limpa()

          // Repetição para a pessoa colocar nomes a somente os novos itens e atribuindo valor 0 a eles
          para(inteiro i = itens; i < novaQuantidadeItens; i++){
            escreva("Digite qual item você quer: ")
            leia(novoEstoque[i])
            novaQuantidade[i] = 0
          }

          // Reatribui os valores novos as variáveis e vetores antigos
          estoque = novoEstoque
          itens = novaQuantidadeItens
          quantidade = novaQuantidade

          limpa()
        }

        escreva("Insira algum item que deseja aumentar.\n\n")

        // Laço de repetição para mostrar uma lista com números, os nomes dos itens e as suas quantidades
        para(inteiro i = 0; i < itens; i++){
          escreva(" ", i + 1, " -> " , estoque[i], " | Quantidade: ", quantidade[i], "\n")
        } 

        // Seleciona qual dos itens da lista quer adicionar
        escreva("\nDigite o número do item que quer adicionar, um número fora da lista para continuar ou 0 para acabar: ")
        leia(opcao3)
        
        // 
        para(inteiro i = 0; i < itens; i++){
          // Verifica se o item está na lista ou não
          se(opcao3 == i + 1){
            limpa()

            // Insere a quantidade que quer adicionar a mais naquele item que selecionou
            escreva("Quanto você quer aumentar: ")
            leia(quantidadeAmais)

            // Repetição para encontrar o item que selecionou e aumentar o valor inicial a quantidade adicional que inseriu 
            para(inteiro i = 0; i < itens; i++){
              se(opcao3 - 1 == i){
                quantidade[i]+=quantidadeAmais

                // Verifica se a quantidade que foi altera é negativa, se for altera o valor para 0
                se(quantidade[i] < 0){
                  quantidade[i] = 0
                }
              }
            }
          }
        }
      }
      // Condição que precisa ser verdadeira para a repetição seguir
      enquanto(opcao3 != 0)

      // Variável para recomeçar 
      inteiro recomecar

      escreva("\n\nDeseja fazer outra lista?\n")
      escreva(" 1 -> Sim\n")
      escreva(" 2 -> Não\n")
      escreva("Digite o número de sua resposta: ")
      leia(recomecar)

      // Condição se a resposta anterior for igual a 1
      se(recomecar == 1){
        limpa()
        // Volta para o início a programação
        inicio()
      }
    }
  }
}
