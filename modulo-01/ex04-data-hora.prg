FUNCTION Main()
    LOCAL cDate := Date()
    LOCAL cTime := Time()

    QOut("===========================")
    QOut("FICHA DE APRESENTAÇÃO")
    QOut("===========================")
    QOut("Nome : Fabrício Nunes de Araújo")
    QOut("Cidade : São Paulo")
    QOut("Curso : Harbour/ADVPL")
    QOut("Data : " + DToC(cDate))
    QOut("Hora : " + cTime)
    QOut("===========================")   
RETURN NIL