

import UIKit

// Protokoły

/*
 
 Zdarza się, że zastanawiając się nad dziedziczeniem klas, nie widzimy zbyt dużych relacji pomiędzy nimi. Wtedy na pomoc przychodzą na protokoły
 
 Protokoły zawierają jedynie nagłówki metod oraz pola klasy ale nie posiadają żadnego kodu
 
 To klasa musi zaimplementować daną metodę chcą jej użyć. Oznacza to napisanie kodu danej metody
 
 Protokoły są podobne do klas abstrakcyjnych, czyli tzw. "szkieletu" dla kodu
 
 Nie ma możliwości utworzenia obiektu takiego protokołu. Protokoły przypominają interfejsy/klasy abstrakcyjne z języka Java
 
 */



// tworzymy protokół zamknij/otwórz


protocol ProtokolZamknijOtworz
{
    
    func zamknij() -> String // piszemy tylko nagłówek takiej metody. Sama implementacja nastąpi w klasie, która będzie chciała zaadoptować taki protokół. Metoda nie posiada żadnego ciała
    
    
    func otworz() -> String //jw

}




class Dom: ProtokolZamknijOtworz //tworzymy klasę Dom, która implementuje protokół ProtokolZamknijOtworz
{
    
    func zamknij() -> String // tu piszemy cały kod metody i jest to bezwzględnie wymagane. Metoda właściwa dla Domu
    {
        return "zamknąłem zamek"
    }
    
    func otworz() -> String //jw
    {
        return "otworzyłem zamek"
    }
}


    
    
class Auto: ProtokolZamknijOtworz //tworzymy klasę Auto, która implementuje protokół ProtokolZamknijOtworz
{
        
        func zamknij() -> String // tu piszemy cały kod metody i jest to bezwzględnie wymagane. Metoda właściwa dla Auta
        {
            return "zamknąłem drzwi auta"
        }
        
        func otworz() -> String //jw
        {
            return "otworzyłem drzwi auta"
        }
    
    
}



// a teraz tworzymy obiekty z każdej klasy sprawdzając czy poprawnie zaimplementowały odpowiednie dla siebie metody

    let domNaSkarpie = Dom()
    domNaSkarpie.otworz()
    domNaSkarpie.zamknij()


    let autoOsobowe = Auto()
    autoOsobowe.otworz()
    autoOsobowe.zamknij()








// w kolejnym przykładzie pokazuję że protokoły mogą również posiadać właściwości, czyli inaczej pola klasy (składowe) i zobaczymy się one zachowują


protocol NowyZamknijOtworz
{
    
    var zablokowany: Bool {get set} // składowa zadeklarowana ale niezainicjalizowana co zostanie zrobione w klasie która ten protokół będzie adoptować
    
    // zmienna var ma specjalne znaczenie - oznacza, że klasa adoptująca protokół musi mieć identycznie nazwaną składową o tym samym typie. Oznacza to że składowa jest obligatoryjna i nie może pominięta. GET oznacza "tylko do odczytu" bądź stałą a SET "do odczytu i zapisu", czyli składową. Jeśli napiszemy GET SET oznacza to, że klasa MUSI zaimplementować taką składową jako zmienną, a jeśli samo GET to jako zmienną var lub stałą let
    
    
    
    func zamknij() -> String
    func otworz() -> String
    
}


// tworzymy nową klasę Sejf

class Sejf: NowyZamknijOtworz

{
    var zablokowany: Bool = false //ta składowa jest obligatoryjna w tym miejscu, ze względu że w protokole miała parametry get set, musimy ją oznaczyć jako zmienną var
    
    
    func zamknij() -> String
    {
    
        zablokowany = true
        return "zablokowane!"
        
    }
    
    
    func otworz() -> String
    {
        
        zablokowany = false
        return "odblokowane"
        
    }
    
}




// tworzymy nową klasę Brama

class Brama: NowyZamknijOtworz
    
{
    var zablokowany: Bool = false //ta składowa jest obligatoryjna w tym miejscu, ze względu że w protokole miała parametry get set, musimy ją oznaczyć jako zmienną var
    
    
    func zamknij() -> String
    {
        
        zablokowany = true
        return "brama zablokowana!"
        
    }
    
    
    func otworz() -> String
    {
        
        zablokowany = false
        return "brama odblokowana"
        
    }
    
}


let mojSejf = Sejf()
mojSejf.otworz()
mojSejf.zamknij()
mojSejf.zablokowany

let mojaBrama = Brama()
mojaBrama.zamknij()
mojaBrama.otworz()
mojaBrama.zablokowany





