
// Mathematical expressions, Type Aliases
// Wyrażenia (działania) matematyczne, typy aliasów


import UIKit


/*

+ dodawanie
- odejmowanie
* mnożenie
/ dzielenie
% reszta z

*/


// jak widać na poniższym przykładzie dodawania (stała o nazwie "suma), od chwili gdy działanie dodawania jest na dwóch liczbach całkowitej i zmiennoprzecinkowej, kompilator identyfikuje wynik jako "Double"

let suma = 7 + 48.21

let różnica = 23 - 12.1

var iloczyn = -14.38 * 44.12

let iloraz: Double = 12 / 7

// Stała o nazwie "resztaZ" pewna liczba i znak % to z ang. "reminder". 10 podzielić przez 3, to 3 i reszta 1. Wynikiem operacji jest liczba 1. Jest to bardzo dobrze znany operator arytmetyczny, tzw "modulo", czyli reszta z dzielenia. Polega on na wyliczeniu 10÷3=3, inaczej 3*3=9 a że 10-9=1 to wynikiem reszty z dzielenia jest właśnie 1

let resztaZ = 10 % 3




/*

działania matematyczne zgodnie z zasadą pierwszeństwa

1. działania w nawiasach ( )
2. mnożenie i dzielenie
3. dodawanie i odejmowanie

*/


let wynikDziałania = ((2 + 3) * (2 - 5) / (6 - 1))





/*

różne typy

w poniższym przykładzie liczba 20 została "wypromowana" z typu liczby całkowitej "Int" do rzeczywistej typu "Double" od momentu gdy druga liczba jest typu "Double". Operacja taka jest nazywana automatycznym (niejawnym) rzutowaniem. 
 Program wie, że wynikiem dzielenia jest liczba po przecinku, więc aby nie stracić części ułamkowej, rzutuje wynik na typ bardziej precyzyjny, czyli double.

*/


let inneDzielenie = 20 / 7.2






/*

Aliasy, czyli zmiana nazwy typu danych

*/




typealias liczbaCałkowita = Int

var numer1: liczbaCałkowita = 10


numer1





typealias liczbaZmiennoprzecinkowa = Double

var numer2: liczbaZmiennoprzecinkowa = 4.22



