

import UIKit

// Inicjalizator "convenience" (convenience initializaters)

/*
 
Jak wiadomo metoda init służy do inicjalizacji pól obiektów podczas ich tworzenia wartościami domyślnymi
 
Czasami jednak chcielibyśmy mieć wiele możliwości inicjalizacji, stąd też możemy utworzyć wiele metod init z różnymi parametrami. Wynika to z tego, że czasami nie wiemy jakie wartości powinny być zainicjalizowane wraz z tworzeniem nowego obiektu.
 
Init która będzie miała maksymalną ilość parametrów to w Swift przyjmuje nazwę "Designated" (pol. oznaczony?)
 
 */


class Traktor
{
    
    let iloscKM: Int
    let kolor: String
    
    
    // piszemy metodę init, która inicjalizuje 2 parametry, czyli maksymalną ich ilość
    
    // taka forma nazywa się "Designated"
    
    init(iloscKM: Int, kolor: String)
    {
        self.iloscKM = iloscKM
        self.kolor = kolor
    }
    
    
    
    
    // piszemy metodę init, która przyjmuje tylko jeden parametr - jego nazwa to "convenience"
    
    convenience init(iloscKM: Int)
    {
        // następnie nasza metoda init, wywołuje metodę convenience i przekazuje w parametrze argumenty do niej a podczas tworzenia obiektu, drugi parametr  (w naszym przypadku kolor) przyjmie wartość domyślną
        
        self.init(iloscKM: iloscKM, kolor: "czarny")
    }
    
    
    
    
    
    
    // tworzymy kolejny inicjalizator convenience który nie przyjmuje nic w argumencie
    
    convenience init()
    {
        // poniższe wartości zostaną przekazane jako argument do bazowego inicjalizatora (Designated)
        self.init(iloscKM: 100, kolor: "niebieski")
    }


}







// tworzymy obiekt bez żadnego parametru, jak widać został utworzony z wartościami domyślnymi naszego ostatniego konstruktora
let malyTraktor = Traktor()


//tworzę obiekt używając init z jednym parametrem, jak widać drugi argument został przekazany jako domyślny z tego init
let sredniTraktor = Traktor(iloscKM: 200)


// tworzę obiekt używając nasz główny init
let duzyTraktor = Traktor(iloscKM: 900, kolor: "zielony")
//używanie metody init oraz convinience init możemy porównać


