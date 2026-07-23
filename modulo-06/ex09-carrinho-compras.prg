FUNCTION Main()
    LOCAL aCarrinho

    aCarrinho := AdicionarItens()

    IF Len(aCarrinho) > 0
        ExibirCarrinho(aCarrinho)
    ELSE
        QOut(AllTrim("O carrinho esta vazio."))
    ENDIF

RETURN NIL

FUNCTION AdicionarItens()
    LOCAL aItens := {}
    LOCAL cNome, cPreco, cContinuar := "S"
    LOCAL nPreco

    WHILE Upper(cContinuar) == "S"
        ACCEPT "Digite o nome do produto: " TO cNome
        ACCEPT "Digite o preco do produto: " TO cPreco
        
        nPreco := Val(cPreco)
        
        AAdd(aItens, {cNome, nPreco})
        
        ACCEPT "Deseja adicionar outro item? (S/N): " TO cContinuar
    ENDDO

RETURN aItens

FUNCTION CalcularTotal(aCarrinho)
    LOCAL nTotal := 0
    LOCAL i

    FOR i := 1 TO Len(aCarrinho)
        nTotal := nTotal + aCarrinho[i][2]
    NEXT
    
RETURN nTotal

FUNCTION ExibirCarrinho(aCarrinho)
    LOCAL i
    LOCAL nTotalGeral

    QOut(AllTrim("=== Resumo do Carrinho ==="))
    
    FOR i := 1 TO Len(aCarrinho)
        QOut(AllTrim(aCarrinho[i][1]) + " - R$ " + AllTrim(Str(aCarrinho[i][2])))
    NEXT

    nTotalGeral := CalcularTotal(aCarrinho)
    
    QOut(AllTrim("--------------------------"))
    QOut(AllTrim("Total da compra: R$ " + AllTrim(Str(nTotalGeral))))

RETURN NIL