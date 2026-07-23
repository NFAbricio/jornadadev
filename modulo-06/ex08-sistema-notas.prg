PROCEDURE Main()
    LOCAL cEntradaN, nNumAlunos, aAlunos

    ACCEPT "Digite a quantidade de alunos: " TO cEntradaN
    nNumAlunos := Val(cEntradaN)

    IF nNumAlunos > 0
        aAlunos := LerAlunos(nNumAlunos)
        ExibirResultados(aAlunos)
    ELSE
        QOut(AllTrim("Quantidade invalida."))
    ENDIF

RETURN

FUNCTION LerAlunos(nQuantidade)
    LOCAL aTurma := {}
    LOCAL cNome, cEntrada
    LOCAL nNota1, nNota2, nNota3, nNota4
    LOCAL i

    FOR i := 1 TO nQuantidade
        ACCEPT "Digite o nome do aluno " + AllTrim(Str(i)) + ": " TO cNome
        
        ACCEPT "Digite a nota 1: " TO cEntrada
        nNota1 := Val(cEntrada)
        
        ACCEPT "Digite a nota 2: " TO cEntrada
        nNota2 := Val(cEntrada)
        
        ACCEPT "Digite a nota 3: " TO cEntrada
        nNota3 := Val(cEntrada)
        
        ACCEPT "Digite a nota 4: " TO cEntrada
        nNota4 := Val(cEntrada)
        
        AAdd(aTurma, {cNome, nNota1, nNota2, nNota3, nNota4})
    NEXT
RETURN aTurma

FUNCTION CalcularMedia(aAluno)
    LOCAL nSomaNotas := aAluno[2] + aAluno[3] + aAluno[4] + aAluno[5]
RETURN nSomaNotas / 4

PROCEDURE ExibirResultados(aAlunos)
    LOCAL i, nMedia

    QOut(AllTrim("--- Resultados ---"))
    
    QOut(AllTrim("APROVADOS (Media >= 7):"))
    FOR i := 1 TO Len(aAlunos)
        nMedia := CalcularMedia(aAlunos[i])
        IF nMedia >= 7
            QOut(AllTrim(aAlunos[i][1]) + " - Media: " + AllTrim(Str(nMedia)))
        ENDIF
    NEXT

    QOut(AllTrim(" ")) // Linha em branco para separação visual
    
    QOut(AllTrim("REPROVADOS (Media < 7):"))
    FOR i := 1 TO Len(aAlunos)
        nMedia := CalcularMedia(aAlunos[i])
        IF nMedia < 7
            QOut(AllTrim(aAlunos[i][1]) + " - Media: " + AllTrim(Str(nMedia)))
        ENDIF
    NEXT
RETURN