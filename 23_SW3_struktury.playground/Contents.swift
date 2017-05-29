

import UIKit

// Struktury, tworzenie własnych typów danych

/*
 
 W poniższym przykładzie tworzymy nową strukturę już istniejących danych. Są one w jakiś sposób ze sobą powiązane, jak rozdzielczość monitora, czyli liczba pikseli
 
 Piszemy słowo "struct" oraz nazwę z wielkiej litery
 
 */



struct Rozdzielczosc
{
    var szerokosc = 1920 // inicjalizujemy właściwość (składową) szerokość
    var wysokosc = 1080  // inicjalizujemy właściwość (składową) wysokość
}


// poniżej możemy utworzyć instancję struktury wraz z wcześniej zainicjalizowanymi wartościami domyślnymi (możemy utworzyć stałą let lub zmienną var)

let hdtv = Rozdzielczosc()



// możemy utworzyć instancję struktury z zastosowaniem nowych wartości

var uhdtv = Rozdzielczosc(szerokosc: 2560, wysokosc: 2160)

var testTv = Rozdzielczosc(szerokosc: 1000, wysokosc: 300)



// aby dostać się do danej wartości, wystarczy użyć operatora kropki

uhdtv.szerokosc = 1024
uhdtv.szerokosc




// struktura może być bardziej skomplikowana, poniższy przykład pokazuje strukturę składającą się z pól, składowych, metod co przypomina...klasę.


struct Trojkat {
    var przyprostokątna1: Double
    var przyprostokątna2: Double
    
    func pole() -> Double {
        return (0.5 * przyprostokątna1) * przyprostokątna2
    }
}


var jakisTrojkat = Trojkat(przyprostokątna1: 10, przyprostokątna2: 10)
print(jakisTrojkat.pole())

var innyTrojkat = Trojkat(przyprostokątna1: 900, przyprostokątna2: 20)
innyTrojkat.pole()




 
