import UIKit

var greeting = "Problem3"
print(greeting)

//sum, division, difference, complement, power, multiplication
var dictionaryArray: [String: (Int, Int) -> Double] = ["sum": { num1, num2 in Double( num1 + num2 ) }, "division": { num1, num2 in Double( num1 / num2 ) },"difference": { num1, num2 in Double( num1 - num2 ) }, "power": { num1, num2 in Double( num1 ^ num2 )},"multiplication": { num1, num2 in Double( num1 * num2) } ]

//Define a dictionary as following
//o The type of key is String
//o The type of the value is a function type (Int, Int) -> Double

let dictionayNames: Dictionary<String, String> = ["key1": "sum", "key2": "division", "key3": "difference", "key4": "complement", "key5": "power", "key6": "multiplication"]

func sum(num1: Int, num2: Int) -> (Double) {
    let sum = num1 + num2
    return Double(sum)
}
let resultSum = sum(num1: 30, num2: 70)
print(resultSum, dictionayNames["key1"])


func division(num1: Int, num2: Int) -> Double {
    let division = num1 / num2
    return Double(division)
}
let resultdivision = division(num1: 20, num2: 2)
print(resultdivision, dictionayNames["key2"])

func difference(num1: Int, num2: Int) -> Double {
    let difference = num1 - num2
    return Double(difference)
}
let resultdifference = difference(num1: 10, num2: 2)
print(resultdifference, dictionayNames["key3"])

func power(num1: Int, num2: Int) -> Double {
    let power = num1 ^ num2
    return Double(power)
}
let resultpower = power(num1: 10, num2: 10)
print(resultpower, dictionayNames["key5"])

func multiplication(num1: Int, num2: Int) -> Double {
    let multiplication = num1 * num2
    return Double(multiplication)
}
let resultmultiplication = power(num1: 10, num2: 10)
print(resultmultiplication, dictionayNames["key6"])


//o The calculator function returns a tuple with two parameters:
//1- the result of the operation
//and 2- the operation’s corresponding function. For instance of the operation sent to the
//function is sum, and the two numbers are 10 and 20 the function will return a tuple which
//is (20, the sum function from the dictionary).

func calculator(n1: Int, n2: Int, operation: String) -> (Double, (Int, Int) -> Double)? {
//1- the result of the operation
  if let operationOfFunction: (_ num1: Int,_ num2: Int) -> Double = dictionaryArray[operation] {
    //2- the operation’s corresponding function.
    let tuple1: Double = operationOfFunction(n1, n2)
    return (tuple1, operationOfFunction)
  }
  return nil
}

// o Write a for-loop and iterate over the items of the array of the operations and call the
//calculator function for each item of the array.

func calculatorFunctionForEachItem(numbers1: Int, numbers2: Int) -> [(Double, (Int, Int) -> Double)] {
  var resultArray:[(Double, (Int, Int) -> Double)] = []
  for (_, value) in dictionaryArray {
    let result: Double = value(numbers1, numbers2)
    let tuple2: (Double, (Int, Int) -> Double) = (result, value)
    resultArray.append(tuple2)
  }
  return resultArray
}
