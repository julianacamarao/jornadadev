#define PI 3.14159

FUNCTION Main()

   LOCAL nRaio, nArea
   LOCAL nCatetoA, nCatetoB, nHipotenusa
   LOCAL nPeso, nAltura, nIMC

   // Área do círculo
   ACCEPT "Digite o raio: " TO nRaio
   nRaio := Val(nRaio)
   nArea := PI * (nRaio ^ 2)

   QOut("Área do círculo: " + Str(nArea, 10, 2))

   // Hipotenusa
   ACCEPT "Digite o primeiro cateto: " TO nCatetoA
   nCatetoA := Val(nCatetoA)

   ACCEPT "Digite o segundo cateto: " TO nCatetoB
   nCatetoB := Val(nCatetoB)

   nHipotenusa := Sqrt((nCatetoA ^ 2) + (nCatetoB ^ 2))

   QOut("Hipotenusa: " + Str(nHipotenusa, 10, 2))

   // IMC
   ACCEPT "Digite o peso (kg): " TO nPeso
   nPeso := Val(nPeso)

   ACCEPT "Digite a altura (m): " TO nAltura
   nAltura := Val(nAltura)

   nIMC := nPeso / (nAltura ^ 2)

   QOut("IMC: " + Str(nIMC, 10, 2))

RETURN NIL