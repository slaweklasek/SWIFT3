
// Tuple i Opcjonale
// Tuples, Optionals


import UIKit


/*

1. Tuple umożliwiają trzymać różne wartości oraz typy danych przyporządkowane jednej zmiennej. Wartości mogą być podawane również dla danej etykiety, zgodnie z konwencją nazwaEtykiety: wartość

2. Zazwyczaj używane są podczas zwracania wyniku (ang. "return statement")

*/

var osoba1 = (wiek: 39, imię: "Sławek", mężczyzna: true, adres: "Toruń, Polska")

var osoba2 = (33, "Angelina", false)


// Możemy wywołać wszystkie informacje na temat danej osoby wywołując nazwę zmiennej, lub dostać się do poszczególnej wartości, wpisując indeks 0, 1, 2 jak i również samą wartość po kropce. Należy pamiętać o numerowaniu indeksów, czyli że pierwszy element w tablicy tupli ma indeks zero a nie jeden

osoba1
osoba2

osoba1.2
osoba1.adres
osoba1.imię
osoba1.wiek

osoba2.2
osoba2.0





/*

Opcjonale (ang. "Optionals"), używamy gdy wartość może nie istnieć, lub nie występować (ang. "nil"). Tak więc wartość może być opcjonalna, może występować lub nie

Można tłumaczyć to tak:

- to jest jakaś wartość i jest ona równa x

lub

- tu nie ma żadnej wartości, czyli jest to tzw. wartość "nil"

Kiedyś gdy nie było opcjonali, program, który oczekiwał jakiejś wartości ale jej nie miał, kończył pracę "crashem".

*/


// proszę zwrócić uwagę, że "123" mimo, że to liczby, to ustaliliśmy, że to typ "String", czyli zmienna łańcuchowa

var możliwyNumer: String

możliwyNumer = "123"


/*

Poniżej mamy inną zmienną "przekonwertowanyNumer", która może być typu "Int" lub może nią nie być. 
"Nil" oznaczamy znakiem pytajnika "?"

*/

var przekonwertowanyNumer: Int?



/*

1. istnieje metoda konwersji zmiennej typu "String" na zmienną typu "Int"

2. jeżeli zmienna łańcuchowa zawiera znaki liczbowe, to taka konwersja z typu łańcuchowego na liczbę całkowitą (czyli ze String na Int) jest możliwa. Czyli 123 może być przekonwertowane ze słowa 123 na liczbę 123

3. jeżeli zmienna nie zawiera poprawnej wartości, np. 123hudosdoos, gdzie zawarte są i liczby i jakieś inne znaki, to kompilator poda wartość "nil" ale program będzie działał i nie nastąpi crash

*/


przekonwertowanyNumer = Int(możliwyNumer)

przekonwertowanyNumer

możliwyNumer = "123hudosdoos"


przekonwertowanyNumer = Int(możliwyNumer)

przekonwertowanyNumer











