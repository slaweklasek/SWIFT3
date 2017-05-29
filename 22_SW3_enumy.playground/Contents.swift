

import UIKit

// Enumy - enumerations, czyli tworzenie własnych typów danych

/*
 
 Enumy definiują typ danych powiązanych wspólnych wartości
 
 W poniższym przykładzie definiujemy enum o nazwie "Dzien", który będzie miał zawarte w nim dni tygodnia. Enumy są typami bezpiecznymi, co oznacza brak możliwości wywołania innych jak zdefiniowane wcześniej wartości
 
 Nazwy tych wartości to inaczej "members value"
 
 Słowo Enum piszemy identycznie jak klasę - wielką literą
 
 Enumy używa się gdy chcemy mieć większą pewność, że wartości które wymagamy podczas pisania kodu nie będą zmienione
 
 */


enum Dzien
{
    // można napisać tak:
    
//    case Poniedziałek
//    case Wtorek
//    case Środa
//    case Czwartek
//    case Piątek
//    case Sobota
//    case Niedziela
    
    
    // lub tak:
    
    case Poniedziałek, Wtorek, Środa, Czwartek, Piątek, Sobota, Niedziela
    
}

// zadeklarowana zmienna dzienPierwszy może przyjąć jedynie jedną z wcześniej zadeklarowanych wartości

var jakisDzien: Dzien = Dzien.Czwartek


// inaczej napisana zmienna
var dzienPierwszy = Dzien.Wtorek


// można i tak
dzienPierwszy = .Poniedziałek

// przykład użycia enumów
if dzienPierwszy == .Poniedziałek{print("dziś jest pierwszy dzień tygodnia")}
else{
    ("dziś jest czwarty dzień tygodnia")
}



