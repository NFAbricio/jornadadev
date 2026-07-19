#define PI 3.14159

FUNCTION main()
    LOCAL cRaio, cLadoA, cLadoB, cPeso, cAltura
    LOCAL nArea, nHipotenusa, nImc

    ACCEPT "Digite o valor do raio: " TO cRaio
    ACCEPT "Digite o valor do lado A: " TO cLadoA
    ACCEPT "Digite o valor do lado B: " TO cLadoB
    ACCEPT "Digite o valor do peso: " TO cPeso
    ACCEPT "Digite o valor da altura: " TO cAltura

    nArea := PI * (VAL(cRaio) ^ 2)
    nHipotenusa := SQRT((VAL(cLadoA) ^ 2) + (VAL(cLadoB) ^ 2))
    nImc := VAL(cPeso) / (VAL(cAltura) ^ 2)

    QOut("================================")
    QOut("Área do círculo: " + LTrim(Str(nArea, 10, 2)))
    QOut("Hipotenusa: " + LTrim(Str(nHipotenusa, 10, 2)))
    QOut("IMC: " + LTrim(Str(nImc, 10, 2)))

RETURN NIL