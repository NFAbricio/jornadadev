FUNCTION Main()
    LOCAL aEntradas, xResultado

    aEntradas := LerEntradas()
    
    xResultado := Calcular(aEntradas[1], aEntradas[2], aEntradas[3])
    
    MostrarResultado(xResultado)

RETURN NIL

FUNCTION LerEntradas()
    LOCAL nVal1, nVal2 := 0, cOperacao
    
    nVal1 := LerNumero("Digite o primeiro valor: ")
    
    ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao
    
    IF Upper(cOperacao) != "R"
        nVal2 := LerNumero("Digite o segundo valor: ")
    ENDIF
    
RETURN {nVal1, nVal2, cOperacao}

FUNCTION LerNumero(cMensagem)
    LOCAL cEntrada
    ACCEPT cMensagem TO cEntrada
RETURN Val(cEntrada)

FUNCTION Calcular(nVal1, nVal2, cOperacao)
    LOCAL xRetorno

    DO CASE
        CASE cOperacao == "+"
            xRetorno := nVal1 + nVal2
        CASE cOperacao == "-"
            xRetorno := nVal1 - nVal2
        CASE cOperacao == "*"
            xRetorno := nVal1 * nVal2
        CASE cOperacao == "/"
            IF nVal2 == 0
                xRetorno := .F.
            ELSE
                xRetorno := nVal1 / nVal2
            ENDIF
        CASE cOperacao == "^"
            xRetorno := nVal1 ^ nVal2
        CASE Upper(cOperacao) == "R"
            xRetorno := Sqrt(nVal1)
        OTHERWISE
            xRetorno := NIL
    ENDCASE
RETURN xRetorno

PROCEDURE MostrarResultado(xResultado)
    QOut(AllTrim("--- Resultado da Operacao ---"))
    
    IF ValType(xResultado) == "L" .AND. xResultado == .F.
        QOut(AllTrim("Erro: Divisao por zero."))
    ELSEIF xResultado == NIL
        QOut(AllTrim("Operacao invalida."))
    ELSE
        QOut(AllTrim("Resultado: " + AllTrim(Str(xResultado))))
    ENDIF
RETURN