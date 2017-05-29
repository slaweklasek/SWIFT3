import UIKit

// Domyślne parametry (argumenty) funkcji




/*
 
 Parametry domyślne pozwalają zdefiniować funkcje które będą miały ustalone wcześniej argumenty
 
 Dla przykładu załóżmy, że chcesz napisać funkcję, której zadaniem są przelewy bankowe. Funkcja będzie potrzebować 2 parametry: dane osoby której będziemy przelewać pieniądze oraz kwotę. Normalnie zawsze będziesz potrzebował tych informacji ale możemy skonfigurować je domyślnie tak aby były już wcześniej podane, mimo, że nie przekażemy ich w argumencie funkcji
 
 */



func wyslijPrzelew(odbiorca: String = "Domyślny", kwota: String = "10") -> String
{
    
    return "Wyślij przelew dla: " + odbiorca + " na kwotę: " + kwota
    
}

//wywołujemy funkcję bez podawania parametrów, jak widać zostaną użyte argumenty domyślne, które zdefiniowaliśmy podczas pisania kodu

wyslijPrzelew()




// wywołanie tej funkcji z podaniem dwóch parametrów

wyslijPrzelew(odbiorca: "Jan Kowalski", kwota: "200")







