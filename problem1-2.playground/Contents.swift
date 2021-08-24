// Problem1

// function 1
var func1: (Int, Int) -> Int
func funcFuntion1(num1: Int, num2: Int) -> Int {
    let totalNum = num1 + num2
    return totalNum
}
func1 = funcFuntion1;


// function 2
var func2: (String) -> Void
func funcFuntion2(s1: String) -> Void {
    print(s1)
}
func2 = funcFuntion2;


// function 3
//var func3: () -> Int
//func fakeFunction3() -> Int {
//  return 1
//}

let func3: () -> Int
func funcFuntion3() -> Int {
   var count = 0
     count += 1
     return count
}
func3 = funcFuntion3

// function 4
var func4: () -> [() -> Void]
func funcFuntion4() -> [() -> Void] {
  var Array: [() -> Void] = []
    
    func returnFunc() -> Void {
    print("AABBCC")
    }
    Array.append(returnFunc);
    return Array
}

func4 = funcFuntion4

// function 5
let func5: ([(Int) -> Void]) -> [String]
var array5: [(Int) -> Void] = []

func funcFuntion5(arrays :[(Int) -> Void]) -> [String] {
    var funcFunctionArrayList: [String] = []
    let returnString = "TestReturn"
    funcFunctionArrayList.append(returnString);
    return funcFunctionArrayList
    print(returnString)
    }

func funcNumberOfVoid(number :Int) -> Void {
    print("To gave number \(number)")
}
//array5.append(funcNumberOfVoid(number: 10))


// function 6
//var func6: ([(Int) -> Void]) -> [(Int) -> Void]
//func funcFuntion6(numArray6: [(Int) -> Void]) {
//    var arrayOfFunction6: [(Int) -> Void] = [6]
//}
//
//func secondFuncFunction6(num: [(Int) -> Void]) -> [(Int) -> Void] {
//  var secondArrayOfFunction6: [(Int) -> Void] = []
//  func nestedForfakeFunciton6(number6: Int) -> Void {
//    print("input \(number6)")
//  }
//    secondArrayOfFunction6.append(nestedForfakeFunciton6(number6: 666));
//}

// function 7
//var func7: ([(Int) -> Void]?) -> [(Int) -> Void]?
//var funcArray7: ([(Int) -> Void]?) = []
//func funcFunction7(number7: Int) -> Void {
//  print("input \(number7)")
//}
//funcArray7.append(funcFunction7(number7: 7))
//func7 = funcFunction7

// function 8
//var func8: ([(Int) -> Void]?) -> [(Int) -> Void]?
//var funcArray8: ([(Int) -> Void]?) = []
//
//func funcFunction8(number8: Int) -> Void {
//  print("input \(number8)")
//}
//
//funcArray8.append(funcFunction8(number8: 8))
//func8 = funcArray8


// function 9
//var func9: () -> ((Int) -> Int, Int)?
//
//func funcArray9 () -> ((Int) -> Int, Int) {
//  func secondFunction9(nubmer: (Int) -> Int) {
//    return nubmer
//  }
//  return secondFunction9
//}
//
//func9 = funcArray9


