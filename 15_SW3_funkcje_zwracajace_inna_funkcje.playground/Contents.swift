import UIKit

// Funkcje, które zwracają inne fukcje 


/*
 
 Omówmy przykład: wyobraźmy sobie wpłatę oraz wypłatę pieniędzy z naszego banku, jednym słowem w każdy poniedziałek wpłacamy pieniądze a w każdy piątek je wypłacamy
 
 Ustanawiamy dwa tuple (krotki) które są naszymi dwoma kontami bankowymi. String opisuje nazwę naszego konta a Double ich wartość początkową
 Taka funkcja zwróci nam również tupla (String i Double)
 
 */


var kontoOsobiste = ("Iksinski Bank Narodowy", 5000.00)
var kontoBiznesowe = ("Iksinski Bank Narodowy", 3000.00)

//poniższa funkcja w parametrze ma następujące wartości: jako wpłatę bierze ilość pieniędzy jaką wpłacimy na konto, czyli "iloscPieniedzy jako Double, a także tupla "konto" o typach String i Double.


func wplata(iloscPieniedzy: Double, konto: (nazwa: String, bilans: Double)) -> (String, Double)
{

    let nowyBilans = konto.bilans + iloscPieniedzy
    
    return (konto.nazwa, nowyBilans)
    
}




//poniższa funkcja w parametrze ma następujące wartości: jako wypłatę bierze ilość pieniędzy jaką wypłacimy z konta, czyli "iloscPieniedzy jako Double, a także tupla "konto" o typach String i Double

func wyplata(iloscPieniedzy: Double, konto: (nazwa: String, bilans: Double)) -> (String, Double)
{
    
    let nowyBilans = konto.bilans - iloscPieniedzy
    
    return (konto.nazwa, nowyBilans)
    
    
}


//przypisuję obie funkcje do stałych. Bez tego nie byłoby możliwości użyć jako wynik innej funkcji

let poniedzialkoweWplaty = wplata
let piatkoweWyplaty = wyplata


//następnie pośrednio wywołuję obie funkcje podając w parametrze stałe wpłaty lub wypłaty oraz nazwę konta przypisując je do innych stałych, które następnie drukuję na konsolę

let poniedzialkoweSaldo = poniedzialkoweWplaty(3000.46, kontoOsobiste)


let piatkoweSaldo = piatkoweWyplaty(1000.00, kontoBiznesowe)







/*
 
 poniżej mamy przykład funkcji która zwraca inną funkcję
 
 */


//nowa funkcja pobiera jako parametr wpłatę lub wypłatę która zwraca funkcję wpłaty lub wypłaty a która w parametrze przyjmuje wartość oraz tupla a na końcu funkcja zwraca zaktualizowanego tupla



func wybierzTransakcje(transakcja: String) -> (Double, (String, Double)) -> (String, Double)
{
    
    if transakcja == "Wplata"{
    
    return wplata
}

    else{
    
        return wyplata
}
}



wybierzTransakcje(transakcja: "Wplata")(500.00, kontoOsobiste)


wybierzTransakcje(transakcja: "xxx")(1500.00, kontoBiznesowe)


