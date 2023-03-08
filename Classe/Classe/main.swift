//
//  main.swift
//  Classe
//
//  Created by Yuri Alencar on 2023-03-07.
//

import Foundation

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

//class Automovel {
//    
//    var cor: String
//    var numeroDePortas: Int
//    var marca: String
//    var eEletrico: Bool
//    var quantidadeDePassageiros: Int
//    var farol: Bool
//    
//    init(cor: String, numeroDePortas: Int, marca: String, eEletrico: Bool, quantidadeDePassageiros: Int, farol: Bool) {
//        self.cor = cor
//        self.numeroDePortas = numeroDePortas
//        self.marca = marca
//        self.eEletrico = eEletrico
//        self.quantidadeDePassageiros = quantidadeDePassageiros
//        self.farol = farol
//    }
//    
//    func ligarFarol() {
//        if farol {
//            print("O Farol está ligado")
//        } else{
//            print("O Farol não está ligado")
//        }
//        
//        func ligarOCarro() {
//            print("O carro está ligado")
//        }
//    }
//}
//var propriedadesAutomovel = Automovel(cor: "Preto", numeroDePortas: 6, marca: "Honda", eEletrico: false, quantidadeDePassageiros: 5, farol: true)
//var propriedadesAutomovel2 = Automovel(cor: "Branco", numeroDePortas: 5, marca: "Renault", eEletrico: true, quantidadeDePassageiros: 3, farol: false)
//
//propriedadesAutomovel.ligarFarol()
//propriedadesAutomovel2.ligarFarol()
//
//
//class Bicicleta {
//
//    var cor: String = "Veermelho"
//    var rodas: Int = 2
//    var categoria: String = "Speed"
//    var temSeguro: Bool = true
//    var lanternaNoturna:Bool = true
//
//
//    func seguro () {
//            print("Fique Tranquilo!")
//        }
//
//        func corBike () {
//            print("A melhor cor é a vermelha")
//        }
//    }
//
//var propriedadesBike: Bicicleta = Bicicleta()
//propriedadesBike.corBike()
//
//
//class Casa {
//
//    var quartos: Int
//    var banheiro: Int
//    var garagem: Bool
//    var geladeira: Int
//    var cama:Int
//
//    init(quartos: Int, banheiro: Int, garagem: Bool, geladeira: Int, cama: Int) {
//        self.quartos = quartos
//        self.banheiro = banheiro
//        self.garagem = garagem
//        self.geladeira = geladeira
//        self.cama = cama
//    }
//    
//    func qtsQuartos () {
//        print("A casa tem \(quartos) quartos")
//        }
//
//    func temGaragem () {
//        print("A casa tem garagem")
//    }
//}
//
//var propriedadesCasa = Casa(quartos: 3, banheiro: 2, garagem: true, geladeira: 2, cama: 2)
//propriedadesCasa.qtsQuartos()
//
//
//
//
//class Restaurante {
//
//    var mesas: Int
//    var temCerveja: Bool
//    var estilo: String
//    var localizacao: String
//    var preprecoPratoCaro :Double
//
//    init(mesas: Int, temCerveja: Bool, estilo: String, localizacao: String, preco: Double) {
//        self.mesas = mesas
//        self.temCerveja = temCerveja
//        self.estilo = estilo
//        self.localizacao = localizacao
//        self.preprecoPratoCaro = preco
//    }
//
//    func preco () {
//        print("O preço do prato mais caro é \(preprecoPratoCaro) reais")
//        }
//
//    func temCervejaRestaurante () {
//        print("A casa tem cerveja")
//    }
//}
//
//var propriedadesRestaurante = Restaurante(mesas: 3, temCerveja: true, estilo: "Japones", localizacao: "Liberdade", preco: 490.90)
//propriedadesRestaurante.preco()
//



// CODIGO CAIO


// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

// Dar vida ao objeto -> quando geramos a instancia -> ()
var meuCarro: Automovel = Automovel()


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)
