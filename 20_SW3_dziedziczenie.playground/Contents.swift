

import UIKit

// Dziedziczenie



// tworzymy nadklasę "Witryna"

class Witryna
{
    var otwarte: Bool = false
    var zablokowane: Bool = false
    
    let szerokosc: Int
    let wysokosc: Int
    let waga: Int
    let nazwa: String
    var kolor: String
    
    
    // tworzymy metodę "init" co umożliwia nam tworzenie obiektów z wartościami domyślnymi. Tak jak widać powyżej 5 składowych nie ma przypisanych żadnych wartości
    
    // proszę zwrócić uwagę, że "nazwa" nie zostaje zainicjalizowana metodą init w tym miejscu, zostanie ona zainicjalizowana w podklasach ich własną metodą init

    
    init(nazwa: String, szerokosc: Int = 100, wysokosc: Int = 200, waga: Int = 30, kolor: String = "Niebieskie")
    {
        self.nazwa = nazwa
        self.szerokosc = szerokosc
        self.wysokosc = wysokosc
        self.waga = waga
        self.kolor = kolor
    }
    
    
    
    
    
    // poniżej znajdują się funkcje, których zadaniem jest zmiana pól klasy, czyli zmiennych "otwarte" i "zablokowane", których wartości zostały zainicjalizowane w ciele klasy
    
    func otworz() -> String
    {
        if (otwarte == false)
        {
            otwarte = true
            return "\(nazwa) otwarte"
        }
            
        else
        {
            return "\(nazwa) są już otwarte!"
        }
    }
    
    func zamknij() -> String
    {
        if otwarte == true
        {
            otwarte = false
            return "\(nazwa) zamknięte"
        }
        else
        {
            return "\(nazwa) są zamknięte"
        }
    }
    
    
    func odblokuj() -> String
    {
        if zablokowane == true
        {
            zablokowane = false
            return "\(nazwa) odblokowane"
        }
        else
        {
            return "\(nazwa) są już odblokowane!"
        }
    }
    
    
    func zablokuj() -> String
    {
        if zablokowane == false
        {
            zablokowane = true
            return "\(nazwa) zablokowane"
        }
        else
        {
            return "Nie możesz zablokować ponieważ \(nazwa) już wcześniej zablokowano"
        }
    }
    
    func testowe(pokazac: String) -> String {
        return pokazac
    }
    
}// nawias zamykający blok klasy


// tak jak widzicie nie utworzyliśmy żadnego obiektu z tej klasy, ponieważ nie ma takiej potrzeby







// tworzymy podklasę Witryny o nazwie Drzwi

class Drzwi: Witryna
{
   
    // podklasa dziedziczy wszystkie właściwości, pola, metody nadklasy
    
    // tworzymy metodę init aby zainicjalizować domyślne wartości podklasy - te które chcemy
    
    init(szerokosc: Int = 50, wysokosc: Int = 300, waga: Int = 4, kolor: String = "Pomarańczowe")
    {
        
        // następnie metoda init podklasy, wywołuje metodę init nadklasy, przepisując po kolei wszystkie parametry, ponieważ bez jej wywołania, ew. utworzony obiekt podklasy posiadałby wartości zainicjalizowane w init nadklasy
        super.init(nazwa: "drzwi", szerokosc: szerokosc, wysokosc: wysokosc, waga: waga)
        
    }
}





// tworzymy nową podklasę klasy Witryna

class Okno: Witryna
{
    
    init(szerokosc: Int = 17, wysokosc: Int = 245, waga: Int = 8, kolor: String = "czarne") {
    
        super.init(nazwa: "okno", szerokosc: 14, wysokosc: 198, waga: 2, kolor: "popielate")
    }
    
}


// tworzymy obiekty z dwóch podklas, czyli z podklasy Drzwi i Okno

let oknoDachowe = Okno()
oknoDachowe.otworz()
oknoDachowe.zamknij()
oknoDachowe.zablokuj()

print(oknoDachowe.otwarte)
print(oknoDachowe.zablokowane)

oknoDachowe.szerokosc
oknoDachowe.wysokosc
oknoDachowe.waga
oknoDachowe.nazwa
oknoDachowe.kolor




let drzwiKuchenne = Drzwi()
drzwiKuchenne.otworz()
drzwiKuchenne.zamknij()
drzwiKuchenne.zablokuj()

print(drzwiKuchenne.otwarte)
print(drzwiKuchenne.zablokowane)

drzwiKuchenne.szerokosc
drzwiKuchenne.wysokosc
drzwiKuchenne.waga
drzwiKuchenne.nazwa
drzwiKuchenne.kolor


// jak widać relacja między klasami musi być wyraźna, tj. każda podklasa "jest" klasą, chodzi o związek, Drzwi są Witryną




// poniżej tworzymy kolejną podklasę o nazwie DrzwiNaHaslo ale tym razem nadklasą będzie klasa Drzwi, która sama dziedziczy z klasy Witryna

class DrzwiNaHaslo: Drzwi
{
    
    // dodajemy nowe pole do tej klasy
    // znak zapytania, to tzw. optionals, czyli oznacza to, że pole to może mieć jakąś wartość lub nie
    // podczas dziedziczenia nie ma możliwości wyboru jakie pola dziedziczymy lub które metody. Dziedzimy wszystko. Czasami zdarza się że musimy skorzystać z tych samych nazw funkcji, więc sam kod w ciele metody może być inny a nazwa taka sama. Jeśli tak jest, mówimy o nadpisywaniu metod z wykorzystaniem słowa "override"
    
    var kodDostepu: String?
    
    
    // nadpisujemy metodę "zablokuj" tą samą nazwą
    override func zablokuj() -> String
    {
        
       return "ta metoda nie jest właściwa dla drzwi na hasło!"
    
    }
    
    
    override func odblokuj() -> String
    {
        
        return "ta metoda nie jest właściwa dla drzwi na hasło!"
        
    }
    
//    override func testowe(pokazac: String) -> String {
//        return pokazac
//    }
    
    
    // piszemy naszą własną metodę "zablokuj" która w parametrze przyjmuje argument typu String, a w związku z tym, ze mamy nowy parametr to nie nadpisujemy tej metody a jedynie ją przeciążamy. Tak więc taka metoda mimo, że ma identyczną nazwę, to nie jest taka sama jak ta poniżej, to są dwie różne metody (!)
    
    func zablokuj(kod: String) -> String {
        if otwarte == false {
            if zablokowane == true
            {
                return "\(nazwa) są właśnie zablokowane"
            }
            else
            {
                kodDostepu = kod
                zablokowane = true
                return "\(nazwa) zostały zablokowane!"
                
            }
        }
        
        else
        {
                return "Nie możesz zablokować \(nazwa)"
        }
    }
    
    
    // tworzymy metodę "odblokuj"
    
    func odblokuj(kod: String) -> String {
        if otwarte == false {
            if zablokowane == false
            {
                return "\(nazwa) są już odblokowane"
            }
            else
            {
                if kodDostepu != kod {
                    return "Wspisano niewłaściwy kod! \(nazwa) jest nadal zablokowane"
                }
                
            }
            
            zablokowane = false
            return "\(nazwa) są odblokowane"
        }
            
        else
        {
            return "\(nazwa) nie można otworzyć!"
        }
    }
    
    
    
}



// tworzymy obiekt klasy DrzwiNaHaslo

let zabezpieczoneDrzwi = DrzwiNaHaslo()


// sprawdzamy pola klasy aby sprawdzić czy dziedziczenie działa. Obiekt "zabezpieczoneDrzwi" powinien posiadać te same wartości co utworzone domyślne metodą init w klasie "Drzwi"
zabezpieczoneDrzwi.szerokosc
zabezpieczoneDrzwi.wysokosc
zabezpieczoneDrzwi.waga
print(zabezpieczoneDrzwi.kolor)
print(zabezpieczoneDrzwi.kodDostepu as Any)

// wywołanie metod "odblokuj" i "zablokuj" bez parametru
zabezpieczoneDrzwi.odblokuj()
zabezpieczoneDrzwi.zablokuj()

// wywołanie metod z kodem
zabezpieczoneDrzwi.zablokuj(kod: "1234")
zabezpieczoneDrzwi.kodDostepu
zabezpieczoneDrzwi.odblokuj(kod: "2222")
zabezpieczoneDrzwi.odblokuj(kod: "1234")



