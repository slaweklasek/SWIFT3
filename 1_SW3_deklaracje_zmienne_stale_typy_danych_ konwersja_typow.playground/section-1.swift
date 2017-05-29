

// SWIFT - Deklaracje, Zmienne, Stałe, Typy danych, Konwersja



import UIKit


/*

1. Deklaracja - deklarujesz, że jakiś identyfikator (nazwa) jest równa pewnej wartości.

2. "var" oznacza, że identyfikator jest zmienną

3. Zmienna, która ma zadeklarowaną pewną wartość początkową, może tą wartość zmienić na nową, na inną

4. Deklarujemy, że zmienna o nazwie "numer1", jest typem "Int" i nadajemy jej wartość "20"

5. "Int" czyli "integer", czyli liczba całkowita (dodatnia, ujemna lub zero) bez ułamków, czy przecinków

6. Rodzaj (typ) zmiennej jest potrzebny i mówi kompilatorowi jaką wartość pamięci RAM ma przeznaczyć, czyli alokować na dokonanie na niej specyficznych operacji.

7. Deklarując typ, unikamy błędów, ponieważ kompilator będzie wiedział jakie może przeprowadzić operacje na danej zmiennej, inne operacje nie będą możliwe

*/


var numer1: Int = 20




/*

1. Deklaruję nową zmienną "numer2", która jest liczbą rzeczywistą, zmienno przecinkową rodzaju/typu "Double" czyli do dwóch miejsc po przecinku.


*/



var numer2: Double = 30.3344




/*

1. ustalamy nową wartość liczbową dla zmiennej lub inną zmienną tego samego typu do pierwszej zmiennej

2. ustalając nową zmienną do pierwszej, najlepiej czytać od prawej do lewej

3. jeśli przyporządkujemy numerowi1, numer2, to pojawi się błąd, ponieważ zmienne te są innego typu (Int a Double)

4. aby móc przyporządkować zmiennej, wartość innego typu jaką ona sama posiada, należy wcześniej przekonwertować tę wartość na właściwy typ (ang. casting).
    Jeśli widzisz błąd, sprawdź i upewnij się, że wartości są tego samego typu

*/



numer1 = 50
numer1

var numer3: Int = 200

numer1 = numer3

numer1

numer1 = Int(numer2)
numer1
numer2



/*

1. "Stałe" - ich raz zadeklarowane wartości, nie mogą być zmienione podczas wykonywania programu.

2. Słowo "let" identyfikuje stałą

3. Stałe zapobiegają błędom, uniemożliwiając przyporządkowanie nowych niepoprawnych wartości

4. przykład: spróbować zmienić wartość "Pi", która jest matematycznie ustalona. Ustalmy jej typ jako "let"

5. inny przykład "grawitacjaZiemiWMetrachNaSekundę" 
    (proszę zwrócić uwagę w jaki sposób pisze się nazwy. Zaczynamy od małej litery, kolejne słowa dużą. Jest to rzw. notacja camelCase. Wyjątek nazwy Klas, Struktur, Enumów)

*/



let wartoscPi: Double = 3.14

let przyspieszenieZiemskieWMetrachNaSekunde: Double = 10.01


