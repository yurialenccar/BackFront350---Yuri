//
//  main.swift
//  Polimorfismo
//
//  Created by Yuri Alencar on 2023-03-14.
//

import Foundation

// MARK: - Polimorfismo

class Centauro {
    func totalDeDesconto(valorTotal: Double) -> Double {
        return valorTotal * 0.3
    }
}

class Loja1: Centauro {
    override func totalDeDesconto(valorTotal: Double) -> Double {
        return valorTotal * 0.1
    }
}

class Loja2: Centauro {

}


var lojaDoCaio: Loja1 = Loja1()
print(lojaDoCaio.totalDeDesconto(valorTotal: 1000))


var lojaDoBruno: Loja2 = Loja2()
print(lojaDoBruno.totalDeDesconto(valorTotal: 1000))




