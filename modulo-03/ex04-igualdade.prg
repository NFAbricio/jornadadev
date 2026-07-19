FUNCTION main()
    LOCAL cWord1 := "TOTVSJornada"
    LOCAL cWord2 := "TOTVS"

    //para comportamento padrão do harbour
    SET EXACT OFF

    QOut("Word 1: " + cWord1)
    QOut("Word 2: " + cWord2)
    QOut("Comparison with operator = : " + allTrim(hb_CStr(cWord1 = cWord2)))
    QOut("Comparison with operator == : " + allTrim(hb_CStr(cWord1 == cWord2)))
RETURN NIL

//o operador = compara o tamanho da string da variavel da esquerda com a string da direita, até o numero de caracteres da string da esquerda, ou seja, compara os 5 primeiros caracteres da string da esquerda com a string da direita, e retorna verdadeiro.

//o operador == compara a string da variavel da esquerda com a string da direita, e retorna verdadeiro somente se forem iguais. é uma comparação exata.