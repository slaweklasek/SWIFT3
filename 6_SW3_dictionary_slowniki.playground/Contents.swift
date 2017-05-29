// Dictionary
// Słowniki

import UIKit




/*

1. Słownik, jest kolejnym typem zbioru, podobnie jak Tablice (ang. Arrays)

2. Koncepcja słownika, jest identyczna jak prawdziwego słownika, który ma 2 kolumny. Pierwsza kolumna ma jakieś słowo a druga kolumna wyjaśnienie tego słowa. 

3. Pierwsza kolumna nazywa się kluczem (ang. key) a druga wartością (ang. value)

4. Jednostka słownika zawiera dwa odmienne komponenty jak "key" klucz i "value" czyli wartość. Nazywamy to parą klucza/wartości (ang. key/value pair).

5. Mimo tego, że klucz i wartość same w sobie mogą być różnego typu, to jednak przyjmuje się, że dobrze jest gdy wszystkie klucze mają identyczny typ. Tak samo wartości.

*/





/*

1. Przykład - definiujemy słownik z miejscowościami i ich numerami kierunkowymi (telefon). 
 Można oczywiście zamienić kolumny i w pierwszej podać numery a w drugiej miejscowości ale wtedy należy zastosować parametr "as" gdzie wywołuje się strukturę AnyHashtable która zmienia kolejność typu danych pary key-value.

*/


var numerKierunkowy = ["Toruń": 56, "Warszawa": 22, "Gdańsk": 58, 67: "wawa"] as [AnyHashable : Any]




/*

1. Znając klucz możemy daną wartość wyszukać i ją wydrukować na konsolę

*/

numerKierunkowy ["Warszawa"]
numerKierunkowy [67]








/*

1. A co się stanie, jeśli wpiszemy klucz, który nie ma wartości? Aby uniknąć błędu, konsola wyrzuci nam wartość "nil" czyli brak wartości

*/



numerKierunkowy ["Poznań"]
numerKierunkowy [89]






/*

1. Możemy dodawać nowe wartości do słownika. Uwaga - nie będą one uporządkowane

2. dodajemy je poprzez wpisanie nazwy zmiennej lub stałej, nawias kwadratowy, klucz i nadanie wartości (para key/value).

3. dodanie nowej pary, nie powoduje że znajdzie się na końcu słownika.

*/


numerKierunkowy ["Poznań"] = 61
numerKierunkowy ["Szczecin"] = 91
numerKierunkowy ["Augustów"] = 87
numerKierunkowy [100] = "Opole"

numerKierunkowy




/*

1. Możemy również aktualizować dane w słowniku. Poniżej przykład. Wpisujemy nazwę słownika czyli "numerKierunkowy", następnie klucz i podajemy nową wartość

*/

numerKierunkowy
numerKierunkowy ["Poznań"] = 78
numerKierunkowy



/*

1. Możemy usuwać daną pozycję ze słownika, nadając jej wartość "nil"

*/


numerKierunkowy ["Poznań"] = nil

numerKierunkowy






/*

1. Aby utworzyć nowy, pusty słownik, inicjujemy zmienną/ stałą, podajemy nową nazwę, typ "Dictionary" (lub nie), oraz typy obiektów

*/


var mojNowySłownik1: Dictionary = [String: Double]()

var mojNowySłownik = [String: Double]()

mojNowySłownik = [:]


mojNowySłownik








/*

1. Istnieje możliwość aby korzystając z funkcji "for in" przeszukać cały słownik aby dowiedzieć się jaka wartość, ma dany klucz

*/

numerKierunkowy

for (klucz, wartość) in numerKierunkowy

{
    print("\(klucz) ma numer kierunkowy \(wartość)")
}




