//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

print("Enter A Calculation")

func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
  switch opString {
  case "+":
    return {x, y in x + y }
  case "-":
    return {x, y in x - y }
  case "*":
    return {x, y in x * y }
  case "/":
    return {x, y in x / y }
  default:
    return {x, y in x + y }
  }
}

let mathFunction = mathStuffFactory(opString: "*")

let userInput = readLine() ?? "5  +  5"

//print(userInput.components(separatedBy: " "))

func takeInput(input: String) -> Double {
    
    let userInputAsArray = input.components(separatedBy: " ")
    
    let mathFunction = mathStuffFactory(opString: userInputAsArray[1])
  
    let num1 = Double(userInputAsArray[0]) ?? 0.0
    
    let num2 = Double(userInputAsArray[2]) ?? 0.0
    
    let calcu = mathFunction(num1, num2)
    
    return calcu
}

print(takeInput(input: userInput))


/* enum Calculator {
case
}

 */















//
//print("Enter Calculation Type")
//
//func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
//  switch opString {
//  case "+":
//    return {x, y in x + y }
//  case "-":
//    return {x, y in x - y }
//  case "*":
//    return {x, y in x * y }
//  case "/":
//    return {x, y in x / y }
//  default:
//    return {x, y in x + y }
//  }
//}
//
//var regCalculator = readLine() ?? "1 + 1"
//var correctMathSymbols = "+-/*"
//func regularCalc(input: String) -> (Double) {
//    regCalculator = readLine() ?? "1 + 1"
//    let regResArr = regCalculator.components(separatedBy: " ")
//
//    let mathSymbol = regResArr[1]
//
//    let number1 = Double(regResArr[0])
//
//    let number2 = Double(regResArr[2])
//
//    let operation = mathStuffFactory(opString: mathSymbol)
//
//    let result = operation(number1 ?? 0 , number2 ?? 0)
//
//    for _ in mathSymbol {
//        if mathSymbol.contains(correctMathSymbols) {
//            print(result)
//} else {
//            print("Use a correct math symbol: - + / *")
//            regCalculator = readLine() ?? "1 + 1"
//    }
//    }
//    return result
//}
//
////let closureOperation = mathStuffFactory(opString: "+")
////
////let result = closureOperation(45, 5)
////
////print("result of operation is: \(result)")
//
//
//// filter than supports a number greater than or less than a given number
//
//func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
//
//    return inputArray
//}
//
//// map that supports multiplying and dividing by a given number
//
//
//func myMap(inputArray: [Int], map: (Int) -> Int ) -> [Int] {
//
//    return inputArray
//}
//
//// reduce that supports summing an array starting at a given value, multiplying an array starting at a given function
//
//func myReduce(inputArray: [Int], reduce: (Int) -> Int) -> [Int] {
//
//    return inputArray
//}
//
//
//
