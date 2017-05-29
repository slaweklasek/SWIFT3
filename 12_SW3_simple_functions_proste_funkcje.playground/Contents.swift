

import UIKit


//Simple Functions
// Proste funkcje





/*
 
 Funkcje w Swift zaczynamy je słowem "func" następnie piszemy jej nazwę a w nawiasie jako argument wpisujemy typ danych oraz symbol -> który pokazuje jaki typ danych będzie typem wyjściowym.
 Samo działanie funkcji zawarte jest w nawiasie wąsatym.
 
 
 W pierwszej kolejności omówimy funkcję, która przyjmuje jeden parametr oraz zwraca jakąś wartość.
 Nic nie stoi na przeszkodzie aby wynik funkcji (w tym wypadku String) przypisać do zmiennej i ją wydrukować na konsolę

*/



func powiedzCzesc(imie: String) -> String
{
    let pozdrowienie = "Witaj, " + imie + " "
    return pozdrowienie
}

print(powiedzCzesc(imie: "Maria"))
print(powiedzCzesc(imie: "Monika"))

let x = powiedzCzesc(imie: "Iza")
print(x)





/*

W drugiej kolejności omówimy funkcję, która przyjmuje dwa parametry oraz zwraca jakąś wartość.


*/

func dodawanieLiczb(liczba: Int, liczba2: Int) -> Int
{
    let suma = liczba + liczba2
    return suma
}

print(dodawanieLiczb(liczba: 12, liczba2: 100))






/*

W trzeciej kolejności omówimy funkcję, która nic nie przyjmuje jako parametr ale zwraca jakąś wartość
 

*/


func powiedzmyHej() -> String {
    return "Hej, cześć"
}

print(powiedzmyHej())






/*
 
 W czwartej kolejności omówimy funkcję, która nic nie zwaraca ale jako parametr przyjmuje String
 
 */

func doWidzenia(imieKogos: String) -> Void
{
    print("Żegnaj \(imieKogos)")
}

doWidzenia(imieKogos: "Andrzej")






/*
 
 kolejna funkcja nie ma parametru oraz nic nie zwraca

 
 */

func pozdrowienia()
{
    print("Helloooooo")
}

pozdrowienia()



