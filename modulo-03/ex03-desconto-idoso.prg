FUNCTION Main()
   LOCAL cNome, cNasc, cPreco
   LOCAL dNasc, nPreco, nIdade, nDesconto := 0.00, nTotal

   SET DATE BRITISH

   ACCEPT "Nome do cliente: " TO cNome
   ACCEPT "Data de nascimento (DD/MM/AAAA): " TO cNasc
   ACCEPT "Preco do produto: " TO cPreco

   dNasc := CToD(cNasc)
   nPreco := Val(cPreco)

   nIdade := Int((Date() - dNasc) / 365)

   IF nIdade > 60
      nDesconto := nPreco * 0.125
   ENDIF

   nTotal := nPreco - nDesconto

   QOut ("===============================")
   QOut ("Cliente -> " + cNome)
   QOut ("Idade -> " + LTrim(Str(nIdade)) + " anos")
   QOut ("Preco: R$ " + LTrim(Str(nPreco, 10, 2)))
   QOut ("Desconto: R$ " + LTrim(Str(nDesconto, 10, 2)))
   QOut ("Total: R$ " + LTrim(Str(nTotal, 10, 2)))

   RETURN NIL