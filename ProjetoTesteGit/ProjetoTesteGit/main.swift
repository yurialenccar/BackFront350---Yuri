//
//  main.swift
//  ProjetoTesteGit
//
//  Created by Yuri Alencar on 2023-03-02.
//

//import Foundation
//
////func square(numbers: [Int]) {
////    for number in numbers {
////        let squared = number * number
////        print("\(number) squared is \(squared).")
////    }
////}
////square(numbers: [2, 3, 4])
//
//func read(books: [String]) -> Bool {
//    for book in books {
//        print("I'm reading \(book)")
//    }
//    return true
//}
//
//func writeToLog(message: String) -> Bool {
//    if message != "" {
//        print("Log: \(message)")
//        return true
//    } else {
//        return false
//    }
//}
//
//func countMultiplesOf10(numbers: [Int]) -> Int {
//    var result = 0
//    for number in numbers {
//        if number % 10 == 0 {
//            result += 1
//        }
//    }
//    return result
//}
//countMultiplesOf10(numbers: [5, 10, 15, 20, 25])
//
//func estimateCost(units: Int) -> Int {
//    switch units {
//    case 0...10:
//        return (units * 10)
//    case 11...50:
//        return (units * 9)
//    case 51...100:
//        return (units * 8)
//    default:
//        return 0
//    }
//}
//
//func isEveryoneAdult(ages: [Int]) -> Bool {
//    for age in ages {
//        if age < 18 {
//            return false
//        }
//    }
//    return true
//}
//isEveryoneAdult(ages: [10, 20, 16, 24])

import Cocoa

enum sqrtError: Error {
    case short, long, impossible
}

func sqrt (number: Int) throws -> Int {
    if number < 1 {
        throw sqrtError.short
    }
    if number > 10000 {
        throw sqrtError.long
    }
    
    var sqrt2: Int = 0
    for i in 1...100 {
        if (i*i) == number {
            sqrt2 = i
            break 
        }
    }
    if sqrt2 < 2 {
        throw sqrtError.impossible
    }
        
    return sqrt2
    
}

do {
    let result = try sqrt(number: 7)
    print("The sqrt of your number is \(result)")
}catch  sqrtError.short {
    print("Out of bounds.")
} catch sqrtError.long {
    print("Out of bounds")
} catch sqrtError.impossible {
    print("No root")
} catch {
    print("Error!")
}

