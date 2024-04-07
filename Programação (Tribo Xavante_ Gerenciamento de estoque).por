programa {
  funcao inicio() {
    inteiro itens, itensAmais // Vari�veis dos itens e itens adicionais 
    inteiro quantidade, quantidadeAmais // Vari�veis da quantidade e quantidade adicionais
    inteiro opcao1, opcao2, opcao3 // Vari�veis das op��es ao longo do c�digo

    // Uma pequena apresenta��o e leitura da quantidade de itens
    escreva("Ol�, aqui voc� poder� gerenciar seu estoque.\n") 
    escreva("Coloque quantos itens voc� ir� querer: ")
    leia(itens)

    cadeia estoque[itens] // Vetor do estoque em rela��o ao n�mero atribu�do a itens 

    limpa()

    escreva("Quais itens ir� ter?\n")

    // La�o de repeti��o para definir o nome de cada item at� a quantidade de itens que a pessoa inseriu
    para(inteiro i = 0; i < itens; i++){
      escreva("Item ", i + 1, ": ")
      leia(estoque[i])
    }

    inteiro quantidade[itens] // Vetor da quantidade de cada item do estoque

    limpa()

    escreva("Agora insira a quantidade de cada um dos itens.\n")

    // La�o de repeti��o para definir a quantidade de cada item
    para(inteiro i = 0; i < itens; i++){
      escreva("Quantidade ", estoque[i], ": ")
      leia(quantidade[i])
    }

    limpa()

    // La�o de repeti��o para mostrar uma lista dos nomes dos itens e as suas quantidades
    para(inteiro i = 0; i < itens; i++){
      escreva("Item: ", estoque[i], " | Quantidade: ", quantidade[i], "\n")
    }

    escreva("\nDeseja inserir mais itens?\n")
    escreva(" 1 -> SIM\n")
    escreva(" 2 -> N�O\n")
    escreva("Escreva o n�mero das op��es para selecionar: ")
    leia(opcao1)

    // Condi��o se a resposta anterior for igual a 1
    se(opcao1 == 1){
      // Repeti��o at� uma condi��o deixar de ser verdadeira
      faca{
        limpa()

        escreva("Deseja inserir novos itens?\n")
        escreva(" 1 -> SIM\n")
        escreva(" 2 -> N�O\n")
        escreva("Escreva o n�mero das op��es para selecionar: ")
        leia(opcao2)

        limpa()
        
        // Condi��o se a resposta anterior for igual a 1
        se(opcao2 == 1){
          // A quantidade de itens que a pessoa deseja adicionar a mais
          escreva("Quantos itens deseja adicionar: ")
          leia(itensAmais)

          inteiro novaQuantidadeItens = itens + itensAmais // V�riavel que junta os primeiros itens a quantidade que pessoa quer adicionar
          cadeia novoEstoque[novaQuantidadeItens] // Vetor do nome dos itens com o n�mero da quantidade nova total de itens
          inteiro novaQuantidade[novaQuantidadeItens] // Vetor da quantidade de cada item com o n�mero da quantidade nova total de itens

          // La�o de repeti��o para a atribuir aos vetores novos os valores dos vetores antigos 
          para(inteiro i = 0; i < itens; i++){
            novoEstoque[i] = estoque[i]
            novaQuantidade[i] = quantidade[i]
          }

          limpa()

          // Repeti��o para a pessoa colocar nomes a somente os novos itens e atribuindo valor 0 a eles
          para(inteiro i = itens; i < novaQuantidadeItens; i++){
            escreva("Digite qual item voc� quer: ")
            leia(novoEstoque[i])
            novaQuantidade[i] = 0
          }

          // Reatribui os valores novos as vari�veis e vetores antigos
          estoque = novoEstoque
          itens = novaQuantidadeItens
          quantidade = novaQuantidade

          limpa()
        }

        escreva("Insira algum item que deseja aumentar.\n\n")

        // La�o de repeti��o para mostrar uma lista com n�meros, os nomes dos itens e as suas quantidades
        para(inteiro i = 0; i < itens; i++){
          escreva(" ", i + 1, " -> " , estoque[i], " | Quantidade: ", quantidade[i], "\n")
        } 

        // Seleciona qual dos itens da lista quer adicionar
        escreva("\nDigite o n�mero do item que quer adicionar ou 0 para continuar: ")
        leia(opcao3)
        
        // Condi��o se a resposta anterior for diferente de 0
        se(opcao3 != 0){
          limpa()

          // Insere a quantidade que quer adicionar a mais naquele item que selecionou
          escreva("Quanto voc� quer aumentar: ")
          leia(quantidadeAmais)

          // Repeti��o para encontrar o item que selecionou e aumentar o valor inicial a quantidade adicional que inseriu 
          para(inteiro i = 0; i < itens; i++){
            se(opcao3 - 1 == i){
              quantidade[i]+=quantidadeAmais
            }
          }
        }
      }
      // Condi��o que precisa ser verdadeira para a repeti��o seguir
      enquanto(opcao3 != 0)
    }
  }
}
