struct ListOps {
    
    static func append(_ numbersCollection: [Int]...) -> [Int] {
        var resultArray = [Int]()
        for numberArray in numbersCollection {
            resultArray += numberArray
        }
        return resultArray
    }
    
    static func concat(_ numbersCollection: [Int]...) -> [Int] {
        var resultArray = [Int]()
        for numberArray in numbersCollection {
            resultArray += numberArray
        }
        return resultArray
    }
    
    //Stuck here
    static func filter(_ numbersArray: [Int], closure: () -> ()) -> [Int] {
        return [1]
    }
    
    static func length(_ numbersArray: [Int]) -> Int {
        var count: Int = 0
        for _ in numbersArray {
            count += 1
        }
        return count
    }
    
    static func reverse(_ numbersArray: [Int]) -> [Int] {
        var length: Int = ListOps.length(numbersArray)
        guard !(length == 0) else {
            return []
        }
        var resultArray = (Array(repeating: 0, count: length))
        var count: Int = 0
        while length != -1 {
            resultArray[count] = numbersArray[length]
            length -= 1
            count += 1
        }
        return resultArray
    }
}
