

// Type inference, strings, characters, boolean
// inferencja typów (identyfikacja), zmienne łańcuchowe, znaki, typ logiczny boolean

import UIKit


/*

1. Nie musisz deklarować typu zmiennych czy stałych. Kompilator dedukuje typ z przyporządkowanej do niej wartości i sam wie z jakim typem ma do czynienia

2. W poniższym przykładzie widać dokładnie, że kompilator wie, iż zmienna "numer1" jest typu "Int" (liczba całkowita), zmienna "numer2" jest typu "Double" (liczba rzeczywista zmiennoprzecinkowa) i stała "numer3" jest typu "Int" (liczba całkowita)

*/


var numer1 = 15

var numer2 = 10.22

let numer3 = 20




/*

1. Strings (Zmienne łańcuchowe) - zestaw (ciąg) znaków, słów, zdań, składają się z pojedynczych znaków

2. Deklarujemy zmienną o nazwie "imie", typu "String" i nadajemy jej wartość "Slawek". Należy pamiętać, iż wartość typu "String" musi być napisana w cudzysłowiu " "
*/

var imie: String = "Sławek "






/*

1. Poniżej deklarujemy kolejną zmienną, wykorzystując "type inference", czyli inferencji typów (identyfikacja)

*/


var nazwisko = "Kowalski"







/*

1. Poniżej deklarujemy stałą typu "String"

*/


let tytul = "Pan "






/*

1. Poniżej łączymy razem typy danych "String" w jeden ciąg łańcuchowy

*/


let pelneDane = tytul + imie + nazwisko

pelneDane








/*

1. Poniżej nowy typ danych "Character", który umożliwia zdefiniowanie pojedynczego znaku, litery, cyfry (włącznie z emotikonami)

*/



var character1: Character = "?"

var character2 = "😃"

var character3 = "₮"

let character4 = "Z"

var character5: Character = "#"






/*

1. Możemy połączyć te pojedyncze "Character" ale musimy każdą z nich przekonwertować (casting, czyli rzutowanie) na Łańcuch String inaczej Playground poda błąd.

*/




let polaczoneZnaki = String(character1) + String(character2)
//let pol = character1+character2 - odkomentuj aby zobaczyć błąd
    
let polaczoneZnaki1 = String(character3) + String(character4)

let polaczoneZnaki2 = polaczoneZnaki + polaczoneZnaki1



/*

1. Typ logiczny "Boolean" lub "Bool" lub boolowski, może przyjmować tylko dwie wartości False (fałsz) lub True (prawda)

*/


var odpowiedz: Bool

odpowiedz = false
odpowiedz = true

odpowiedz





