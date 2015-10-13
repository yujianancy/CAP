//
//  main.swift
//  CAP
//
//  Created by iGuest on 10/12/15.
//  Copyright (c) 2015 Jia Yu. All rights reserved.
//

import Foundation

println("Enter an expression separated by returns:")

func input() -> String {
    
    let standardInput = NSFileHandle.fileHandleWithStandardInput()
    
    let inputData = standardInput.availableData
    
    let strData = NSString(data: inputData, encoding: NSUTF8StringEncoding) as! String
    
    return strData.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

func convertInt(incoming:String) -> Int {
    
    return NSNumberFormatter().numberFromString(incoming)!.integerValue
    
}

func add(number1:Int, number2:Int) ->Int{
    
    var result:Int = number1 + number2
    
    return result
    
}

func sub(number1:Int, number2:Int) ->Int{
    
    var result:Int = number1 - number2
    
    return result
    
}

func mul(number1:Int, number2:Int) ->Int{
    
    var result:Int = number1 * number2
    
    return result
    
}

func div(number1:Int, number2:Int) ->Double{
    
    var result:Double = Double(number1 / number2)
    
    return result
    
}

func calc2ints(number1:Int, number2:Int, op:String) -> Double {
    
    var result:Double = 0.0
    
    switch op {
        
    case "add", "+":
        
        result = Double(number1 + number2)
        
    case "sub", "-":
        
        result = Double(number1 - number2)
        
    case "mul", "*":
        
        result = Double(number1 * number2)
        
    case "div", "/":
        
        result = Double(number1 / number2)
    
    default:
    
        println("I don't understand.")
        
    }
    
    return result
}

func calcArrAdd(numbers:[Int]) ->Int {
    
    var result = 0
    
    for index in 0...numbers.count-1{
        
        result = result + numbers[index]
        
    }
    
    return result
    
}

func calcArrMul(numbers:[Int]) ->Int {
    
    var result = 1
    
    for index in 0...numbers.count-1{
        
        result = result * numbers[index]
        
    }
    
    return result
    
}

func calcArrCount(numbers:[Int]) ->Int {
    
    var result = numbers.count - 1
    
    return result
    
}

func calcArrAvg(numbers:[Int]) ->Double {
    
    var result = 0.0
    
    for index in 0...numbers.count-1{
        
        result = result + Double(numbers[index])
        
    }
    
    return result/Double(numbers.count-1)
    
}

func calcArrAll
var inputStr = input()





