

import UIKit

// Delegation (delegaty) z użyciem protokołów

/*
 
 Delegacja pozwala jednej klasie lub strukturze na wykonywanie jakiś zadań innej klasie lub strukturze. Jednym słowem w imieniu innej klasy. Klasa która zakończy zadanie raportuje jego wykonanie
 
 Protokoły są pełnoprawnymi typami danych. W iOS występują one wspólnie z delegacją i są nazwane "delegate protocols"
 
 W poniższym przykładzie tworzymy automat sprzedaży, po pobraniu monety wydaje jakiś przedmiot
 
 
 */



// tworzymy delegate protocol

protocol AutomatProtokol
{
    var wrzuconoMonete: Bool {get set} // obowiązkowa składowa
    func wydanie() -> Bool             // nagłówek metody bez ciała
    
}


// poniżej tworzymy klasę, która adoptuje ten protokół oraz implementuje wszystkie składowe klasy, pola oraz metody
// obiekty tej klasy zamierzają być delegatami oraz wykonywać zadania dla innych obiektów



class Automat: AutomatProtokol //klasa ta adoptuje protokół AutomatProtokol
{
    var wrzuconoMonete: Bool = false  //obowiązkowa implementacja pola protokołu
    
    // metoda zwraca true jeśli moneta została wrzucona
    // taką metodę nazywamy metodą delegujacą
    func wydanie() -> Bool            //implementacja metody
    {
        if wrzuconoMonete == true
        {
            wrzuconoMonete = false
            return true
        }
        return false
    }
}



// obiekty tej klasy zamierzają wywołać obiekt delegowany

class AutomatZCola
{
    var automat: AutomatProtokol //zmienna "automat" to inaczej obiekt typu protokołu
    
    init(automat: AutomatProtokol) //metoda init z referencją do obiektu jako parametr
    {
        self.automat = automat
    }
    
    func wrzucMonete()
    {
        automat.wrzuconoMonete = true
    }
    
    func nacisnijKlawiszCola() -> String
    {
        //wywołujemy metodę delegata
        if automat.wydanie() == true
        {
            return "Oto Twoja Cola"
        }
        else
        {
            return "Wrzuć monetę"
        }
    }
    
}

var dyspenser = AutomatZCola(automat: Automat())
//obiekt klasy Automat oraz obiekt klasy AutomatZCola zostały utworzone a następnie adres obiektu klasy Automat jest przekazany do odbiektu klasy Automat. Obiekt "dyspenser" jest referencją do obiektu automat. Obiekt automat jest delegatem dla obiektu dyspenser

dyspenser.nacisnijKlawiszCola()
dyspenser.wrzucMonete()
dyspenser.nacisnijKlawiszCola()
dyspenser.nacisnijKlawiszCola()



// rozszerzam klasę AutomatZColą, poprzez zastosowanie słowa extensions

extension AutomatZCola
{
    
    func nacisnijKlawiszColaZero() -> String
    {
        if automat.wydanie() == true
        {
            return "oto Twoja Cola Zero!"
        }
        else
        {
            return "wrzuć monetę!"
        }
    }
    
}



var nowyDyspenser = AutomatZCola(automat: Automat())

nowyDyspenser.wrzucMonete()
nowyDyspenser.nacisnijKlawiszColaZero()




