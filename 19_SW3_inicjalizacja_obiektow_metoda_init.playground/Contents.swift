import UIKit

// Inicjalizacja obiektów metodą init



/*
 
 Jak pamiętacie z poprzedniego odcinka, utworzenie klasy oraz zdefiniowanie jej pól, wymaga od nas zainicjalizowania zmiennych/stałych początkowymi wartościami
 
 W przykładzie poniżej dodaję nową specjalną metodę/funkcję nazywającą się "init" aby umożliwić utworzenie obiektu z innymi właściwościami
 
 Init to spotykany np. w Javie "konstruktor"
 
 */

class NoweDrzwi
{
    var otwarte: Bool = false
    var zablokowane: Bool = false
    
    let szerokosc: Int
    let wysokosc: Int
    let waga: Int
    var kolor: String //tworzymy zmienną a nie stałą aby umożliwić później przemalowanie drzwi
    
    
    // metoda "init" umożliwia nam tworzenie obiektów z wartościami domyślnymi. Tak jak widać powyżej 4 składowe nie mają przypisanych żadnych wartości, za to zmienne otwarte i zablokowane są już zaincjalizowane jako false
    
    
    // zwróćcie uwagę, że nazwy argumentów metody "init" są IDENTYCZNE z nazwami pól klasy. Słowo "self" oznacza, że przypisujemy dane wartości do obiektu tejże klasy
    
    // metoda init wywołuje się automatycznie podczas tworzenia obiektu klasy, nie trzeba jej wywoływać w żaden specjalny sposób
   
    init(szerokosc: Int = 100, wysokosc: Int = 200, waga: Int = 30, kolor: String = "Niebieskie")
    {
        self.szerokosc = szerokosc
        self.wysokosc = wysokosc
        self.waga = waga
        self.kolor = kolor
    }

    
    
    
    
    // poniżej znajdują się cztery funkcje, których zadaniem jest zmiana pól klasy, czyli zmiennych "otwarte" i "zablokowane", których wartości zosały zainicjaliwane w ciele klasy
    
    func otworz() -> String
    {
        if (otwarte == false)
        {
            otwarte = true
            return "Drzwi zostały otwarte"
        }
    
        else
        {
            return "Drzwi są już otwarte!"
        }
    }
    
    func zamknij() -> String
    {
        if otwarte == true
        {
            otwarte = false
            return "Drzwi zostały zamknięte"
        }
        else
        {
            return "Drzwi są zamknięte"
        }
    }
    
    
    func odblokuj() -> String
    {
        if zablokowane == true
        {
            zablokowane = false
            return "Drzwi zostały odblokowane"
        }
        else
        {
            return "Drzwi są już odblokowane!"
        }
    }
    
    
    func zablokuj() -> String
    {
        if zablokowane == false
        {
            zablokowane = true
            return "Drzwi zostały zablokowane"
        }
        else
        {
            return "Nie możesz zablokować ponieważ drzwi są już zablokowane"
        }
    }
    }// nawias zamykający blok klasy


    

// tworzenie nowego obiektu typu "NoweDrzwi"
let drzwiPiwniczne = NoweDrzwi()

drzwiPiwniczne.otworz()
drzwiPiwniczne.otworz()
drzwiPiwniczne.zamknij()

drzwiPiwniczne.zablokuj()
drzwiPiwniczne.odblokuj()

drzwiPiwniczne.otwarte
drzwiPiwniczne.zablokowane


//drzwiPiwniczne.szerokosc = 200
drzwiPiwniczne.wysokosc
drzwiPiwniczne.waga
    



//poniżej tworzymy obiekt z nowymi wartościami początkowymi

let noweDrzwiBalkonowe = NoweDrzwi(szerokosc: 50, wysokosc: 300, waga: 10, kolor: "Brązowe")

// teraz przemalujemy je na zielono

noweDrzwiBalkonowe.kolor = "zielone"

let najnowszeDrzwiPokojowe = NoweDrzwi(szerokosc: 100, wysokosc: 300, waga: 60, kolor: "żółte")






