import UIKit

// Funkcje, które zwracają wiele wartości


/*
 Możesz użyć tupla (tł. KROTKA to inaczej lista bez możliwości modyfikacji *) czyli uporządkowanego ciągu wartości jako wartość zwracaną funkcji tak aby zwracała wiele wartości jako jedną złożoną.
 
 Poniższy przykład, funkcja "licznik", która zlicza samogłoski, spółgłoski oraz inne znaki (chars) w Stringu
 "znak" z przykładu - to inaczej "char" po angielsku
 
 */




func licznik(jakisString: String) -> (samogloski: Int, spolgloski: Int, inne: Int)
{
  var samogloski = 0, spolgloski = 0, inne = 0
    
    for znak in jakisString.characters{
        switch String(znak).lowercased()
        {
        case "a", "e", "i", "u", "o":
            
            // w Swift 3 operator inkrementacji ++ znany z innych języków, został zastąpiony +=1...no comments
            samogloski+=1
            
            
        case "b", "c", "d", "e", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            
            spolgloski+=1
            
        default:
            
            inne+=1
        }
    }
    return (samogloski, spolgloski, inne)
    
}

// w tym miejscu wywołujemy funkcję "licznik" i zapisujemy jej wartość w stałej krotce "wynik"
let wynik = licznik(jakisString: "To_jest_jakis_Przyklad_hjjAAA@@")

print("Jest łącznie: \(wynik.samogloski) samogłosek, \(wynik.spolgloski) spółgłosek i \(wynik.inne) inne znaki")



//* więcej na temat krotek znajdziecie pod tym linkiem: http://users.uj.edu.pl/~ufkapano/algorytmy/lekcja02/tuple.html


