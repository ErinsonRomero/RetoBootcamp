func Genera(_ text: String) {
    var letras = text.lowercased().map{$0}
    for letra in letras {
        var suma = 0
        let iguales = letras.map{$0 == letra}
        for valido in iguales {
            if valido { suma += 1 }
        }
        if suma > 0 && letra != " " {
            print(letra,"= \(suma)")
        }
        letras.removeAll(where: {$0 == letra})
    }
}
Genera("La historia de mi vida")
