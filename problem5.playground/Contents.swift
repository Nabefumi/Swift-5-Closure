import UIKit

var greeting = "Problrm5"
print(greeting)

// 1- A list of numbers (positive integers)
var positiveIntegers: [Int]? = [1, 4, 7]

// 2- An array of predicates. (A predicate is a function type of type (Int)->Bool).
var arrayOfPredicates: [(Int) -> Bool] = []

// And returns an Optional Array of Integer.
// Them define the following constant predicate and add them to a list of predicates.

// Predicate1: Returns true if a number is odd
func predicate1(_ num: Int) -> Bool {
    var isPrime: Bool = true
    for i in 0..<num {
        if i % 2 == 0{
            isPrime = false
        }
    }
    return isPrime
}
arrayOfPredicates.append(predicate1)

// Predicate2: Returns true if a number is prime

func predicate2(_ num: Int) -> Bool {
    var isNum = 2
    if num == 1 {
        return false
    }
    if num == 2 || num == 3{
        return true
    }
    
    for isNum in 2 ... Int(sqrt(Double(num))) {
        if num % isNum == 0 {
            return false
        }
    }
    return true
}
arrayOfPredicates.append(predicate2)

// Predicate3: Returns true if a number is prime and odd
func predicate3(_ num: Int) -> Bool {
    var isNum = 2
    if num == 1 {
        return false
    }
    if num == 2 || num == 3{
        return true
    }
    
    for isNum in 2 ... Int(sqrt(Double(num))) {
        for i in 0..<num {
            if isNum % 2 == 0 && num % isNum == 0{
                return false
            }
        }
    }
    return true
}
arrayOfPredicates.append(predicate3)

// Predicate4: Returns true if a number is divisible by 7
func predicate4(_ num: Int) -> Bool {
    for i in 0..<num {
        if i % 7 == 0 {
            return true
        }
    }
    return false
}
arrayOfPredicates.append(predicate4)

// Add the above predicates to a list of predicates.
// Then implement the filter function mentioned above. The filter function return the list of all
// numbers from the input list on which all predicates return true.

func filterFunction(_ listNumbers: Int) -> Bool {
    var result: Bool = true
    for value in arrayOfPredicates {
        let listOfAllNumbers = value(listNumbers)
        if !listOfAllNumbers {
          result = false
        }
      }
    return result
}
print(filterFunction(7))

//func convertInt(_ nums: Int) -> Void {
//    for i in 0..<nums {
//        print(filterFunction(i))
//    }
//}
//convertInt(positiveIntegers)

