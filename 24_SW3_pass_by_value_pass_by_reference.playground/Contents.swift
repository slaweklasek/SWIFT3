

import UIKit

// Przekazywanie przez wartość lub przez referencję

/*
 
 w poniższych przykładach pokazuję różnicę pomiędzy referencją a kopią
 
 */


// W Swifcie struktury (struct) są typem danych tzw. type value (pass by value)


struct Struktura
{
    var liczba: Int = 10
}

var struct1 = Struktura() // utworzyliśmy strukturę
var struct2 = struct1     // w tym momencie struct2 jest kopią struct1, czyli dokonaliśmy "pass by value"

struct2.liczba = 20       // zmieniliśmy wartość liczba struct2 na 20

print(struct2.liczba)     // jak widać liczba struct2 ma wartość 20
print(struct1.liczba)     // a w tym wypadku liczba struct1 ma swoją wartość 10




// Klasy są typu referencyjnego (pass by reference)

class JakasKlasa
{
    var numer: Int = 10
}

var klasa1 = JakasKlasa() // tworzymy instancję klasy (nowy obiekt)
var klasa2 = klasa1       // klasa2 jest referencją, odwołaniem do klasy1

klasa2.numer = 40         // przypisujemy klasie2 nową wartość

print(klasa1.numer)       // i tu właśnie widzimy że obiekt (instancja) klasa1 również zmieniła swoją wartość
print(klasa2.numer)



