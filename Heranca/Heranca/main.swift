//
//  main.swift
//  Heranca
//
//  Created by Yuri Alencar on 2023-03-09.
//

import Foundation
import Cocoa

//let names = ["Arya", "Bran", "Robb", "Sansa"]
//let chosen = names.randomElement()?.uppercased() ?? "No one!"
//print("Next in line: \(chosen)")

//struct Book {
//    let title: String
//    let author: String?
//}
//
//var book: Book? = nil
//let author = book?.author?.first?.uppercased() ?? "A"
//print(author)



//struct Book {
//    let title: String?
//    let author: String
//}
//    var book: Book? = nil
//    let title = book?.title?.first?.uppercased() ?? "A"
//    print(title)
//


//var myVar: Int? = 3
//
//if let unwrapped = myVar {
//    print("Run if myVar has a value inside")
//}
//
//guard let unwrapped = myVar else {
//    print("Run if myVar doesn't have a value inside")
//}



//let captains = [
//    "Enterprise": "Picard",
//    "Voyager": "Janeway",
//    "Defiant": "Sisko"
//]
//
//let new = captains["Serenity"]
//
//let new = captains["Serenity"] ?? "N/A"
//
//let new = captains["Serenity", default: "N/A"]


// DESAFIO PARA PASSAR PARA CASA

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
// Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.


//class Pai {
//    var idade: Int
//    var cidade: String
//    var salario: Double
//
//    init(idade: Int, cidade: String, salario: Double) {
//        self.idade = idade
//        self.cidade = cidade
//        self.salario = salario
//    }
//
//    func mesada () {
//        print("Meu salário é de  \(salario) r$, sua mesada é de \(salario*0.1)")
//    }
//
//    func idadeTempo () {
//        print("Minha idade é \(idade) anos")
//    }
//}
//
//class Filho1:Pai {
//    var escola: String
//    var mesada: Double
//    var timeDeFutebol: String
//
//    init(escola: String, mesada: Double, timeDeFutebol: String, idade: Int, cidade: String, salario: Double) {
//        self.escola = escola
//        self.mesada = mesada
//        self.timeDeFutebol = timeDeFutebol
//        super.init(idade:idade, cidade:cidade, salario:salario)
//
//    }
//
//}
//
//class Filho2:Pai {
//
//    var escola: String = "KOKO"
//    var mesada: Double = 12390.0
//    var timeDeFutebol: String = "Mtl"
//
//    }
//
//
//var grandeFamilia = Pai(idade: 5, cidade: "mtl", salario: 1234.5)
//var filho1 = Filho1(escola: "Huck", mesada: 12345.6, timeDeFutebol: "Flu", idade: 34, cidade: "BSB", salario: 12345.6)
//var filho2 = Filho2(idade: 45, cidade: "bsb", salario: 456.89)
//
//
//print(grandeFamilia.cidade)
//print(filho1.escola)
//print(filho2.salario)


//enum UserError: Error {
//    case badID, networkFailed
//}
//
//func getUser(id: Int) throws -> String {
//    throw UserError.networkFailed
//}
//
//if let user = try? getUser(id: 23) {
//    print("User: \(user)")
//}
//
//let user = (try? getUser(id: 23)) ?? "Anonymous"
//print(user)

//func num(_ array:[Int]?) -> Int {
//    return array?.randomElement() ?? Int.random(in: 1...100)
//}
//
//print(num([]))


//for i in 1...12 {
//    print(" 5 x \(i) is \(5*i)")
//}
//
//var lyric = "Haters Gonna"
//
//for _ in 1...5 {
//    lyric += " Hate"
//}
//
//print(lyric)

//-> Really Important
//let files = ["me.jpg", "work.txt", "sophie.jpg"]
//
//for file in files {
//    if file.hasSuffix(".jpg") == false {
//        continue
//    }
//    print("Found picture: \(file)")
//
//}

//
//let team = ["Gloria", "Suzanne", "Tifanny", "Tasha"]
//let team2 = ["Ryka", "Treva", "Bomba", "Fuddl"]
//
//let onlyT = team2.filter({$0.hasPrefix("T")})
//
//print(onlyT)

//
//let fruits = ["apple", "banana", "orange"]
//let fruitsWithIndex = fruits.enumerated().map({ "\($1) is at index \($0)" })
//print(fruitsWithIndex) // Output: ["apple is at index 0", "banana is at index 1", "orange is at index 2"]


//let numbers = [1, 2, 3, 4, 5]
//let squaredNumbers = numbers.map({ $0 * $0 })
//print(squaredNumbers) // Output: [1, 4, 9, 16, 25]

//func divideNumbers(_ a: Int, _ b: Int) throws -> Int {
//    guard b != 0 else {
//        throw NSError(domain: "Division Error", code: 0, userInfo: nil)
//    }
//    return a / b
//}
//
//if let result = try? divideNumbers(10, 0) {
//    print("The result is: \(result)")
//} else {
//    print("Error: Could not divide by zero")
//}

//extension String {
//    func trimmed() -> String {
//        self.trimmingCharacters(in: .whitespacesAndNewlines)
//    }
//}
//
//var quote = "   The truth is rarely pure and never simple   "
//let trimmed = quote.trimmed()


