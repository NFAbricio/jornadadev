PROCEDURE Main()
    LOCAL aNumeros
    
    aNumeros := LerNumeros(10)
    
    ASort(aNumeros)
    
    ExibirEstatisticas(aNumeros)

RETURN 

FUNCTION LerNumeros(nQuantidade)
    LOCAL aValores := {}
    LOCAL cEntrada, i, nNum
    
    FOR i := 1 TO nQuantidade
        ACCEPT "Digite o numero " + AllTrim(Str(i)) + " de " + AllTrim(Str(nQuantidade)) + ": " TO cEntrada
        nNum := Val(cEntrada)
        AAdd(aValores, nNum)
    NEXT
RETURN aValores

FUNCTION SomarValores(aValores)
    LOCAL nSoma := 0
    LOCAL i
    
    FOR i := 1 TO Len(aValores)
        nSoma := nSoma + aValores[i]
    NEXT
RETURN nSoma

PROCEDURE ExibirEstatisticas(aNumeros)
    LOCAL nSoma, nMedia, nMenor, nMaior, i
    
    nSoma := SomarValores(aNumeros)
    nMedia := nSoma / Len(aNumeros)
    
    nMenor := aNumeros[1]
    nMaior := aNumeros[Len(aNumeros)]

    QOut(AllTrim("=== Resultados ==="))
    
    QOut(AllTrim("Numeros em ordem crescente:"))
    FOR i := 1 TO Len(aNumeros)
        QOut(AllTrim(Str(aNumeros[i])))
    NEXT

    QOut(AllTrim("Soma: " + AllTrim(Str(nSoma))))
    QOut(AllTrim("Media: " + AllTrim(Str(nMedia))))
    QOut(AllTrim("Menor numero: " + AllTrim(Str(nMenor))))
    QOut(AllTrim("Maior numero: " + AllTrim(Str(nMaior))))

RETURN