import UIKit

var greeting = "Hello, playground"

var stringArray1: [String]
stringArray1 = ["one", "two", "three", "four", "five"]
stringArray1.sort(by: {$0 > $1})
print(stringArray1)


//3- List: [“aa”, “aba”, “b”, “aabbb”}
//Criteria: Descending based on the length of the items
var stringArray2: [String]
stringArray2 = ["aa", "aba", "b", "aabbb"]
let descendingStrings = stringArray2.sorted { $0.count > $1.count }
print(descendingStrings)

func sorter(_ list: [String]?, by criteria: (String, String) -> Bool) -> [String]?{
    //add
    guard let words = list
    else {
        return nil
    }

    let sortedWords = words.sorted(by: criteria)
    return sortedWords
}

print(sorter(stringArray1, by: { $0 > $1 }))
print(sorter(stringArray1, by: { $0 < $1 }))
print(sorter(stringArray2, by: { $0.count < $1.count }))
print(sorter(stringArray2, by: { $0.count > $1.count }))



