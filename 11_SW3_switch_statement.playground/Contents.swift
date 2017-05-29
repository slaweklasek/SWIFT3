
// SWITCH Statement
// Instrukcja Switch


import UIKit




/*

1. Instrukcja "Switch" uwalnia nas od ciągłego zagnieżdżania warunków jak było to w przypadku instrukcji "If-Else". Powoduje też znaczne uproszczenie kodu.

2. gdy żadne z przypadków zapisanych w "case" nie jest prawdziwe, zostaje wykonany kod zapisany w "default"

*/


var numerA: Int = 27

switch numerA

{
    
case 0...25:
    
    print("liczba jest niższa lub równa 25")
    
case 26...49:
    
    print("liczba jest pomiędzy 26 a 49")
    
case 50...74:
    
    print("liczba jest pomiędzy 50 a 74")
    
case 75...100:
    
    print("liczba jest pomiędzy 75 a 100")
    
default:
    
    print("liczba jest ujemna lub większa od 100")
    
}






/*

1. Poniższy przykład pokazuje połączenie pętli "While" oraz instrukcji "IF". Używamy również "break" aby przerwać działanie pętli

*/


var numer1 = 10

var numer2 = 0

while numer2 <= numer1

{

print("Numer 2 = \(numer2)")
    

// taki zapis oznacza "numer2 = numer2 + 1"
numer2 += 1

    
// w tym miejscu deklaruję warunek, który jeśli zostanie spełniony, pętla ma się zatrzymać (break)
if numer2 == 5

{
    
    break
    
}
}





// Symulacja

var ograniczeniePredkosci = 60

var predkoscAuta = 0

while (predkoscAuta < 150)

{
    
    predkoscAuta += 1 //inkrementacja o 1
    
    switch predkoscAuta
    
    {
        
    case 0..<20:
        print("\(predkoscAuta): jedziesz naprawdę wolno")
        
    case 20..<30:
        print("\(predkoscAuta): możesz trochę przyspieszyć")
        
    case 30..<40:
        print("\(predkoscAuta): wyprzedzają Cię wielbłądy")
        
    case 40..<60:
        print("\(predkoscAuta): uważaj na L-kę z boku")
        
    case 60..<70:
        print("\(predkoscAuta): widzę, że już wiesz o co chodzi")
        
    case 70..<80:
        print("\(predkoscAuta): uważaj bo za chwilę możesz dostać mandat")
        
    case 80...ograniczeniePredkosci:
        print("\(predkoscAuta): jedziesz zdecydowanie za szybko!")
        
    default:
        print("\(predkoscAuta): przesadzasz!")
        
        
    }
    
    if predkoscAuta == ograniczeniePredkosci
    {
        
        break
        
    }
    
    
}


