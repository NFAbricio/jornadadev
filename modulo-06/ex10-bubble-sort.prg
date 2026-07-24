PROCEDURE Main()
    LOCAL aNumeros

    aNumeros := LerDezNumeros()
    BubbleSort(aNumeros)
    ImprimirNumeros(aNumeros)
RETURN 

FUNCTION LerDezNumeros()
    LOCAL aNumeros := {}
    LOCAL nI, cEntrada

    FOR nI := 1 TO 10
        ACCEPT "Digite o numero " + AllTrim(Str(nI)) + " de 10: " TO cEntrada
        AAdd(aNumeros, Val(cEntrada))
    NEXT
RETURN aNumeros

PROCEDURE BubbleSort(aNumeros)
    LOCAL nI, nJ, nTamanho, nTemp

    nTamanho := Len(aNumeros)

    FOR nI := 1 TO nTamanho - 1
        FOR nJ := 1 TO nTamanho - 1
            IF aNumeros[nJ] > aNumeros[nJ + 1]
                nTemp := aNumeros[nJ]
                aNumeros[nJ] := aNumeros[nJ + 1]
                aNumeros[nJ + 1] := nTemp
            ENDIF
        NEXT
    NEXT
RETURN

PROCEDURE ImprimirNumeros(aNumeros)
    LOCAL nI

    FOR nI := 1 TO Len(aNumeros)
        ? "Numero " + AllTrim(Str(nI)) + ": " + AllTrim(Str(aNumeros[nI]))
    NEXT