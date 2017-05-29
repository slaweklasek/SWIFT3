import UIKit

// Funkcje, które przyjmują w argumencie wiele wartości ale bez wskazania ich dokładnej ilości


/*
 
 Czasami zdarza się, że nie wiesz ile parametrów przekażesz danej funkcji jako jej argument. Ich ilość jaką może funkcja przyjąć jest dowolna i nieograniczona
 
 Poniższy przykład pokazuje jak użytownik przekazuje salda z kilku kont bankowych i następnie je wszystkie podlicza
 
 Trzy kropki symbolizują że jedno saldo jako parametr (czyli jedna zmienna) może zostać poszerzone o kolejne bez wskazania ile ich ostatecznie będzie podanych
 
 */


func dodawanieSald(salda: Double...) -> Double
{
 
    var suma: Double = 0
    
    for saldo in salda
    {
        suma += saldo //to inny  zapis: suma = suma + saldo
    }
    
    return suma
    
}

print(dodawanieSald(salda: 398.89, 56.99))
print(dodawanieSald(salda: 1000.00, 5000.48, 456.10))
print(dodawanieSald(salda: 4674.34, 467.15, 6.10, 78773.67))



