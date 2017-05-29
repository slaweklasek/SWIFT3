import UIKit

// Tworzenie prostej klasy oraz obiektów




/*
 
W tym przykładzie tworzymy modelową prostą klasę "Drzwi" i jej obiekty. Można spotkać pojęcie "tworzenie instancji klasy", oznacza to samo co tworzenie obiektów tejże klasy. Mówiąc "utworzyliśmy instancję klasy", znaczy to samo co "utworzyliśmy obiekt tej klasy"
 
Nazwę klasy zawsze piszemy dużą literą w przeciwieństwie do nazw zmiennych, stałych i obiektów, które piszemy małą
 
 */




class Drzwi

//w tym miejscu zaczyna się definicja klasy
{
    

// w tym miejscu znajdują się tzw. properties co oznacza tworzenie pól klasy (składowych klasy) w postaci zmiennych lub stałych
    
// w Swifcie wszystkie one muszą być zainicjalizowane od samego początku przez ustalone wartości
    

    
    // poniższy przykład pokazuje deklarację oraz inicjalizację zmiennych. Dopóki nie będą one zmieniane muszą mieć postać stałych let, w innym przypadku var
    
    var otwarte: Bool = false
    var zablokowane: Bool = false
    
    
    // poniższe składowe są zadeklarowane jako stałe let, ponieważ nie zamierzamy ich nigdy zmienić
    
    let szerokosc: Int = 32
    let wysokosc: Int = 72
    let waga: Int = 20
    var kolor: String = "Czarny" //ta składowa została ustalona jako zmienna, ponieważ czasami będziemy chcieli nasze drzwi przemalować
    
    
    // poniżej tworzymy metody, które głównie są funkcjami, co omawialiśmy dokładnie w poprzednich odcinkach. Funkcje użyte w kodzie klasy, nazywamy w Swifcie metodami (jak np. w Javie)
    
    func otworz() -> String
    {
        otwarte = true
        return "Drzwi zostały otwarte"
    }
    
    
    func zamknij() -> String
    {
        otwarte = false
        return "Drzwi zostały zamknięte"
    }
    
    
    func zablokuj() -> String
    {
        zablokowane = true
        return "Drzwi zostały zablokowane"
    }
    
    
    func odblokuj() -> String
    {
        zablokowane = false
        return "Drzwi zostały odblokowane"
    }
    

} // koniec definicji klasy





// w tym miejscu utworzymy nowy obiekt typu Drzwi, czyli instancję klasy "Drzwi" i przypiszemy go do stałej drzwiFrontowe. Podczas jego tworzenia, zostaje w pamięci zarezerwowana część zasobów systemu na taką operację. Nazwę obiektu piszemy małą literą. Utworzony obiekt (zapisany w zmiennej "drzwiFrontowe") będzie typu "Drzwi". Innymi słowy - utworzyliśmy właśnie własny typ danych:)


let drzwiFrontowe = Drzwi()



//z chwilą utworzenia takiego obiektu, zostaje on jednocześnie zainicjalizowany danymi domyślnymi które podaliśmy zaraz na początku definicji klasy

//poniżej WYWOŁUJEMY wcześniej zdefiniowane metody na utworzonym obiekcie aby wywołać jakąś akcję. Używamy do tego operatora kropki

drzwiFrontowe.odblokuj() //w nawiasie nic nie ma, ponieważ funkcja (metoda) nic od nas nie wymaga
drzwiFrontowe.zablokuj()
drzwiFrontowe.otworz()
drzwiFrontowe.zamknij()


//a w jaki sposób ODWOŁAĆ się do składowej klasy? Również przez operatora kropki

drzwiFrontowe.wysokosc
drzwiFrontowe.waga
drzwiFrontowe.otwarte


//tworzymy kolejny obiekt typu "Drzwi" z domyślnymi wartościami

let drzwiLazienkowe = Drzwi()

drzwiLazienkowe.kolor = "Niebieskie"

