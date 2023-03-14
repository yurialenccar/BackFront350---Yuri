//
//  main.swift
//  Desafios
//
//  Created by Yuri Alencar on 2023-03-10.
//

import Foundation
import SwiftUI

//Crie uma classe chamada "Livro" que tenha as propriedades "titulo", "autor" e "preço". Em seguida, crie uma subclasse chamada "LivroDigital" que herde da classe "Livro" e tenha uma propriedade adicional chamada "formato". Crie dois construtores para a classe "LivroDigital". O primeiro deve aceitar o "formato" como parâmetro enquanto o segundo não deve aceitá-lo. Quando o "formato" não for fornecido, defina-o como "PDF". Defina então um método chamado "analisarPreco" que receba o "titulo" e o "preço" do livro como parâmetros e imprima "Livro caro" se o preço for maior que 25 ou "Livro barato", caso contrário.

//class Livro {
//    var titulo:String?
//    var autor: String?
//    var preco: Double?
//
//    init(titulo: String, autor: String, preco: Double) {
//        self.titulo = titulo
//        self.autor = autor
//        self.preco = preco
//    }
//
//}
//
//class LivroDigital: Livro {
//    var formato: String?
//
//        init(titulo: String, autor: String, preco: Double, formato: String = "PDF") {
//        self.formato = formato
//        super.init(titulo: titulo, autor: autor, preco: preco)
//    }
//
//    func analisarPreco() {
//        if preco ?? 0.0  > 25 {
//            print("Livro Caro")
//        } else {
//            print("Livro Barato")
//        }
//    }
//}
//
//var livroNovo = LivroDigital(titulo: "Bambo", autor: "Browoski", preco: 6.0)
//print(livroNovo.analisarPreco())


//Crie uma classe chamada "FormaGeometrica" com as propriedades "largura" e "altura". Em seguida, crie uma subclasse chamada "Retangulo" que tenha um método "calcularArea" que calcula a área do retângulo (largura * altura). Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir a largura e a altura e imprima o resultado.


//class FormaGeometrica {
//    var largura: Double
//    var altura: Double
//
//    init(largura: Double, altura: Double) {
//        self.largura = largura
//        self.altura = altura
//    }
//}
//
//class Retangulo:FormaGeometrica {
//
//    override init(largura: Double, altura: Double) {
//        super.init(largura: largura, altura: altura)
//    }
//
//    func calcularArea () {
//        print(largura*altura)
//    }
//}
//
//var area = Retangulo(largura: 2, altura: 5)
//print(area.calcularArea())

//Crie uma classe chamada "ContaBancaria" com as propriedades "saldo" e "tipo". Em seguida, crie uma subclasse chamada "ContaCorrente" que tenha uma propriedade adicional chamada "limite" e um método "atualizarSaldo" que adiciona o limite ao saldo da conta. Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir o "saldo" e o "tipo". Você pode ainda criar um método "imprimirSaldo" que imprime o saldo atualizado da conta.

//class ContaBancaria {
//    var saldo: Double
//    var tipo: String
//
//    init(saldo: Double, tipo: String) {
//        self.saldo = saldo
//        self.tipo = tipo
//    }
//}
//
//class ContaCorrente:ContaBancaria {
//    var saque: Double
//    var deposito: Double
//
//    init(saldo: Double, tipo: String, saque:Double, deposito:Double) {
//        self.saque = saque
//        self.deposito = deposito
//         super.init(saldo: saldo, tipo: tipo)
//    }
//
//    func atualizarSaldo() ->  Double {
//        saldo -= saque
//        saldo += deposito
//        return saldo
//
//    }
//
//    func imprimirSaldo() {
//        print("O saldo atualizado da conta é: \(saldo)")
//    }
//}
//
//var contaBank = ContaCorrente(saldo: 100, tipo: "Corrente", saque: 900, deposito: 1400)
//print(contaBank.atualizarSaldo(),contaBank.imprimirSaldo())


//Desafios de Lógica:
//
// 1) Escreva uma função chamada "somaArray" que receba um array de números inteiros como parâmetro e retorne a soma de todos os elementos do array.
// Exemplo de entrada: [1, 2, 3, 4, 5]
// Saída esperada: 15

//func somaArray (_ numeros:[Int]) -> Int {
//    var soma = 0
//    for numero in numeros {
//        soma += numero
//    }
//    return soma
//}

// 2) Escreva uma função chamada "elefantesIncomodam" que receba um número inteiro positivo n como parâmetro e retorne a letra correspondente da música "Um Elefante Incomoda Muita Gente" até o n-ésimo elefante.
// Exemplo de entrada: 5
// Saída esperada:
// 1 elefante incomoda muita gente
// 2 elefantes incomodam, incomodam muito mais
// 3 elefantes incomodam muita gente
// 4 elefantes incomodam, incomodam, incomodam, incomodam muito mais
// 5 elefantes incomodam muita gente

//func elefantesIncomodam(_ n: Int) {
//    if n < 1 {
//        print("There is no elephant")
//    }
//
//    for i in 1...n {
//        if i == 1 {
//            print("1 elefante incomoda muita gente")
//        } else {
//            var str = "\(i) elefantes incomodam"
//            for _ in 1..<i {
//                str += ", incomodam"
//            }
//            str += " muito mais"
//            print(str)
//        }
//    }
//}



//func elefantesIncomodam(_ n: Int) {
//    guard n >= 1 else {
//        print("There is no elephant")
//        return
//    }
//
//    for i in 1...n {
//        switch i {
//        case 1:
//            print("1 elefante incomoda muita gente")
//        default:
//            let str = "\(i) elefantes incomodam" + Array(repeating: ", incomodam", count: i-1).joined() + " muito mais"
//            print(str)
//        }
//    }
//}
//




// 3) Escreva uma função chamada "solucaoEquacaoSegundoGrau" que receba três números reais a, b e c como parâmetros e retorne as soluções da equação ax² + bx + c = 0, ou uma mensagem indicando que não há soluções reais.
// Exemplo de entrada: a = 2, b = 5, c = 3
// Saída esperada: (-1.5, -1)
// Dica: A solução da equação do segundo grau pode ser encontrada usando a fórmula de Bhaskara, que é:
// x = (-b ± sqrt(b² - 4ac)) / 2a
// Se o discriminante b² - 4ac for negativo, a equação não tem soluções reais. Se for zero, a equação tem uma solução real. Se for positivo, a equação tem duas soluções reais distintas. É importante lembrar que em Swift, a função sqrt() pode ser usada para calcular a raiz quadrada.

//func solucaoEquacaoSegundoGrau (a:Double, b:Double, c:Double) {
//    var delta = b * b - 4 * a * c
//
//    if delta < 0 {
//        print("Não há soluções reais!")
//    } else if delta == 0 {
//        let x = -b / (2*a)
//        print( "A única solução real é x = \(x)")
//    } else {
//        let x1 = (-b + sqrt(delta)/(2*a))
//        let x2 = (-b - sqrt(delta)/(2*a))
//        print( "As soluções reais são x1 = \(x1) e x2 = \(x2)")
//    }
//}
//    print(solucaoEquacaoSegundoGrau(a: 2, b: 3, c: 4))



// 4) Escreva uma função chamada "fibonacci" que receba um número inteiro positivo n como parâmetro e retorne o n-ésimo número da sequência de Fibonacci. A sequência de Fibonacci começa com os números 0 e 1, e a partir do terceiro número cada número é a soma dos dois números anteriores.
// Exemplo de entrada: 7
// Saída esperada: 13 (pois o sétimo número da sequência de Fibonacci é 13)


//func fibonacci(_ numero:Int) -> Int {
//    if numero < 0 {
//        print("Não há soluções reais!")
//        return 0
//    } else if numero == 0 || numero == 1 {
//        return numero
//    } else {
//        return fibonacci(numero-1) + fibonacci(numero-2)
//    }
//}
//
//print(fibonacci(7))

// 5) Escreva uma função chamada "somaDosPrimos" que receba um número inteiro como parâmetro e retorne a soma de todos os números primos menores ou iguais a esse número.
// Exemplo de entrada: 10
// Saída esperada: 17 (pois 2 + 3 + 5 + 7 = 17)


func somaDosPrimos (_ numero:Int) -> Int {
    //Aqui vc verifica se a entrada é maior ou igual a 2 utilizando o guard. A função recebe um número inteiro como entrada e retorna a soma de todos os números primos menores ou iguais a esse número.
//    Para fazer isso, a função começa verificando se o número de entrada é maior ou igual a 2. Isso porque o número 2 é o primeiro número primo, então não faz sentido procurar por números primos menores do que 2.
    guard numero >= 2 else {
        return 0
    }
    
    // Agora você define a soma como zero, para ser calculada futuramente com a adição.
    var soma = 0
    // Após isso, será necessário iterar (percorrer todos os números) a fim de verificar se o número é primo ou não.
    for i in 2...numero{
        var primo = true
        
        //Se o número i for divisível por j, isso significa que ele não é primo, pois um número primo é aquele que é divisível apenas por 1 e por ele próprio. Nesse caso, a variável primo é definida como false e o loop é interrompido com o comando break, pois não é necessário continuar testando os números restantes.
        for j in 2..<i {
            if i % j == 0 {
                primo = false
                break
            }
        }
        //Se o loop terminar sem encontrar nenhum número que divida i sem resto, isso significa que i é primo e a variável primo permanece como true.
        if primo {
            soma += i
            
        }
        
    }
    //No final do loop, a função retorna a variável soma contendo a soma de todos os números primos menores ou iguais a numero.
    return soma
    
}

var result = somaDosPrimos(5)
print(result)
