import Foundation

func add(number1:Int?, number2:Int?) ->Int?{
    
    if number1 != nil && number2 != nil {
        
        return number1! + number2!
        
    }
    
    return nil
    
}

var test = add(3,5)

println(test!)

func sub(number1:Int?, number2:Int?) ->Int?{
    
    if number1 != nil && number2 != nil {
        
        return number1! - number2!
        
    }
    
    return nil
    
}

test = sub(3,nil)

println(test)

func mul(number1:Int?, number2:Int?) ->Int?{
    
    if number1 != nil && number2 != nil {
        
        return number1! * number2!
        
    }
    
    return nil
    
}

test = mul(3,4)

println(test!)

func divi(number1:Int?, number2:Int?) ->Int?{
    
    if number1 != nil && number2 != nil {
        
        return number1!/number2!
        
    }
    
    return nil
    
}

test = divi(4,3)

println(test!)

func calc2ints(number1:Int?, number2:Int?, op:(Int?, Int?) -> Int?) -> Int?{
    
    return op(number1,number2)
    
}

test = calc2ints(3, 4, sub)

println(test!)

func calcArrAdd(numbers:[Int?]) ->Int?{
    
    var result = 0
    
    for index in 0...numbers.count-1{
        
        if numbers[index] == nil {
            
            return nil
            
        } else {
            
            result = result + numbers[index]!
            
        }
        
    }
    
    return result
    
}

test = calcArrAdd([nil,2,3,4,5])

println(test)

func calcArrMul(numbers:[Int?]) ->Int? {
    
    var result = 1
    
    for index in 0...numbers.count-1{
        
        if numbers[index] == nil {
            
            return nil
            
        } else {
            
            result = result * numbers[index]!
            
        }
        
    }
    
    return result
    
}

test = calcArrMul([1,2,3,4,5])

println(test!)

func calcArrCount(numbers:[Int?]) ->Int? {
    
    for index in 0...numbers.count-1{
        
        if numbers[index] == nil {
            
            return nil
        }
    }
    
    return numbers.count
    
}

test = calcArrCount([1,2,3,4,5])

println(test!)

func calcArrAvg(numbers:[Int?]) ->Int? {
    
    var result = 0
    
    for index in 0...numbers.count-1{
        
        if numbers[index] == nil {
            
            return nil
            
        } else {
            
            result = result + numbers[index]!
            
        }
        
    }
    
    return result/numbers.count
    
}

test = calcArrAvg([1,2,3,4,5])

println(test!)

func calcArrAll(numbers:[Int?], op:[Int?] -> Int?) ->Int? {
    
    return op(numbers)
}

test = calcArrAll([1,2,3,4,3],calcArrCount)

println(test!)

func addPoint(point1:(Double,Double), point2:(Double,Double)) -> (Double, Double){
    
    let result = ((point1.0 + point2.0), (point1.1 + point2.1))
    
    return result
    
}

var test2 = addPoint((1,2.2),(2.5,3))

println(test2)

func addPoint(point1:Dictionary<String,Double>, point2:Dictionary<String,Double>) ->Dictionary<String,Double>{
    
    var dic = Dictionary<String,Double>()
    
    if point1["x"] == nil || point2["x"] == nil || point1["y"] == nil || point2["y"] == nil{
        
        println("Please enter values of x and y")
        
    } else{
        
        dic = ["x": point1["x"]!+point2["x"]!, "y":point1["y"]!+point2["y"]!]
        
    }
    return dic
}

var test3 = addPoint(["y":2.2],["x":1.0,"y":3.6])

println(test3)

func subPoint(point1:(Double,Double), point2:(Double,Double)) -> (Double, Double){
    
    let result = ((point1.0 - point2.0), (point1.1 - point2.1))
    
    return result
    
}

test2 = subPoint((1,2.2),(2.5,3))

println(test2)

func subPoint(point1:Dictionary<String,Double>, point2:Dictionary<String,Double>) ->Dictionary<String,Double>{
    
    var dic = Dictionary<String,Double>()
    
    if point1["x"] == nil || point2["x"] == nil || point1["y"] == nil || point2["y"] == nil{
        
        println("Please enter values of x and y")
        
    } else{
        
        dic = ["x": point1["x"]!-point2["x"]!, "y":point1["y"]!-point2["y"]!]
        
    }
    return dic
}

test3 = addPoint(["x":3.5,"y":2.2],["x":1.0,"y":3.6])

println(test3)