import UIKit

// Funkcje zagnieżdżone




/*
 
 Funkcje zagnieżdżone to inaczej funkcje które są zapisane w innej funkcji
 
 Taki zapis stosuje się gdy chcemy ukryć bądź odizolować taką funkcję (jej funkcjonalność) od innych warstw 
 
 Jako przykład posłuży logowanie do naszej skrytki bankowej, jeśli zostanie podane błędne hasło, to zostaniemy pozbawieni zalogowania
 
 Pamiętajmy, że raz zdefiniowana w kodzie funkcja, jest dostępna dla wszystkich. Jeśli jednak zagnieździmy funkcję w innej, to nie będzie ona widoczna dla innych
 
 
 */


func skrytkaBankowa(haslo: String) -> String
{

    // poniżej umieszczamy 2 funkcje zagnieżdżone
    
    func otworzSkrzynke() -> String
    {
        return "Twoje hasło jest poprawne: skrzynka otwarta"
    }
    
    func zamknijSkrzynke() -> String
    {
        return "Twoje hasło jest niepoprawne: skrzynka zamknięta"
    }
    
    //powyższe dwie zagnieżdżone funkcje mogą być wywołane jedynie przez funkcję "nad nimi" czyli "skrytkaBankowa"
    
    
    
    //poniżej używamy instrukcji warunkowej "if" aby wywołać jedną z funkcji zagnieżdżonej
    
    if haslo == "1234"{
        return otworzSkrzynke()
    }
        else{
            return zamknijSkrzynke()
        }
}

//w tym miejscu wywołujemy funkcję główną przez podanie jej w argumencie wymaganego Stringa. Próby wywołania funkcji zagnieżdżonych, kończy się niepowodzeniem

print(skrytkaBankowa(haslo: "1111"))
print(skrytkaBankowa(haslo: "1234"))





