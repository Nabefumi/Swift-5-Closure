// Problem1

// function 1
var func1: (Int, Int) -> Int
func funcFuntion1(num1: Int, num2: Int) -> Int {
    let totalNum = num1 + num2
    return totalNum
}
func1 = funcFuntion1;

//var func11: (Int, Int) -> Int = {(a,b) in return a + b}
var func11: (Int, Int) -> Int = {$0 + $1}
func11(10,20)

// function 2
var func2: (String) -> Void
func funcFuntion2(s1: String) -> Void {
    print(s1)
}
func2 = funcFuntion2;

//Consumer
//var func12 = (String) -> Void = {(s) in print(s)}
var func12: (String) -> Void = {print($0 + "Taka")}
func12("Hello")


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

let func13: () -> Int = {10}
print(func13())

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

let func14:  () -> [() -> Void] = { () in
    
    let f1: () -> Void = {print("1")}
    let f2: () -> Void = {print("2")}
    let f3: () -> Void = {print("3")}

    let array = [f1, f2, f3, f1, f2, f1]
    return array
}

let result = func14()
for f in result{
    f()
}


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


let func15: ([(Int) -> Void]) -> [String] = {(functions) in
    
    var array: [String] = []
    for _ in functions {
        array.append("Taka")
    }
    return array
}
let func15_1: (Int) -> Void = {print($0 + 5)}
let func15_2: (Int) -> Void = {print(String($0) + "Taka")}
let func15_3: (Int) -> Void = {print($0 + 20)}

let result1 = func15([func15_1, func15_2, func15_3])
for a in result1{
    print(a)
}


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

var func6: ([(Int) -> Void]) -> [(Int) -> Void] = {$0}
let res6 = func6([func15_1, func15_2, func15_3])
for res in res6 {
    res(10)
}

// function 7
//var func7: ([(Int) -> Void]?) -> [(Int) -> Void]?
//var funcArray7: ([(Int) -> Void]?) = []
//func funcFunction7(number7: Int) -> Void {
//  print("input \(number7)")
//}
//funcArray7.append(funcFunction7(number7: 7))
//func7 = funcFunction7


var func7: ([(Int) -> Void]?) -> [(Int) -> Void]? = {$0}
//et res7 = func7([nil])
let res7 = func7([func15_1, func15_2, func15_3])

if let result2 = res7 {
    for res in result2 {
        res(10)
    }
}

func test(){
    guard  let retusl3 = res7 else {
        print("The results in nil")
        return
    }
    for res1 in retusl3 {
        res1(10)
    }
}
test()

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

var func8: ([(Int) -> Void]?) -> [(Int) -> Void]?


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

var func9: () -> ((Int) -> Int, Int)? = {
    let f1: (Int) -> Int = {$0 + 1}
    var result5:  ((Int) -> Int, Int)? = nil
    result5 = (f1, 10)
    return result5
}

if let t = func9() {
    print(t.0(t.1), t.1)
}
