import Foundation

func add(number1:Int?, number2:Int?) ->Int?{
    
    if number1 != nil && number2 != nil {
        
        return number1! + number2!
        
    }
    
    return nil
    
}

var test = add(3,5)

println(test)

func sub(number1:Int?, number2:Int?) ->Int?{
    
    if number1 != nil && number2 != nil {
        
        return number1! - number2!
        
    }
    
    return nil
    
}

test = sub(3,4)

println(test)

func mul(number1:Int?, number2:Int?) ->Int?{
    
    if number1 != nil && number2 != nil {
        
        return number1! * number2!
        
    }
    
    return nil
    
}

test = mul(3,4)

println(test)

func divi(number1:Int?, number2:Int?) ->Double?{
    
    if number1 != nil && number2 != nil {
        
        return Double(number1!) / Double(number2!)
        
    }
    
    return nil
    
}

var test1 = divi(4,3)

println(test1)

func calc2ints(number1:Int?, number2:Int?, op:String?) -> Double?{
    
    var result:Double = 0.0
    
    if number1 != nil && number2 != nil && op != nil {
        
        switch op! {
            
        case "add", "+":
            
            result = Double(number1! + number2!)
            
        case "sub", "-":
            
            result = Double(number1! - number2!)
            
        case "mul", "*":
            
            result = Double(number1! * number2!)
            
        case "div", "/":
            
            result = Double(number1!)/Double(number2!)
            
        default:
            
            print("I don't understand.")
            
        }
        
        return result
        
    }
    
    return nil
    
}

test1 = calc2ints(3, 4, "sub")

println(test1)

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

test = calcArrAdd([1,2,3,4,5])

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

println(test)

func calcArrCount(numbers:[Int?]) ->Int? {
    
    for index in 0...numbers.count-1{
        
        if numbers[index] == nil {
            
            return nil
        }
    }
    
    return numbers.count
    
}

test = calcArrCount([1,2,3,4,5])

println(test)

func calcArrAvg(numbers:[Int?]) ->Double? {
    
    var result = 0.0
    
    for index in 0...numbers.count-1{
        
        if numbers[index] == nil {
            
            return Double(nilHandleErr)
            
        } else {
            
            result = result + Double(numbers[index]!)
            
        }
        
    }
    
    return result/Double(numbers.count)
    
}

test1 = calcArrAvg([1,2,3,4,5])

println(test1)

func calcArrAll(numbers:[Int?], op:String!) ->Double? {
    
    var result:Double = 0.0
    
    for index in 0...numbers.count-1{
        
        if numbers[index] == nil {
            
            return Double(nilHandleErr)
            
        } else {
            
            switch op {
                
            case "add", "+":
                
                for index in 0...numbers.count-1{
                    
                    result = result + Double(numbers[index]!)
                    
                }
                
            case "mul", "*":
                
                result = 1.0
                
                for index in 0...numbers.count-1{
                    
                    result = result * Double(numbers[index]!)
                    
                }
                
            case "count":
                
                result = Double(numbers.count)
                
            case "avg":
                
                for index in 0...numbers.count-1{
                    
                    result = result + Double(numbers[index]!)
                    
                }
                
                return result/Double(numbers.count)
                
            default:
                
                print("I don't understand.")
                
            }
            
        }
        
    }
    
    return result
    
}

test1 = calcArrAll([1,2,3,4,2],"count")

println(test1)

func addPoint(point1:(Double,Double), point2:(Double,Double)) -> (Double, Double){
    
    let result = ((point1.0 + point2.0), (point1.1 + point2.1))
    
    return result
    
}

var test2 = addPoint((1,2.2),(2.5,3))

println(test2)

func subPoint(point1:(Double,Double), point2:(Double,Double)) -> (Double, Double){
    
    let result = ((point1.0 - point2.0), (point1.1 - point2.1))
    
    return result
    
}

test2 = subPoint((1,2.2),(2.5,3))

println(test2)