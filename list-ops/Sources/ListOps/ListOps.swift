struct ListOps {
    
    static func append<T>(_ firstArray: [T], _ secondArray: [T]) -> [T] {
        return firstArray + secondArray
    }
    
    static func concat<T>(_ arrays: [T]...) -> [T] {
        var newArray = [T]()
        for singleArray in arrays {
            newArray += singleArray
        }
        return newArray
    }
    
    static func filter<T>(_ sourceArray: [T], _ completion: (T) -> Bool) -> [T] {
        var newArray = [T]()
        for elem in sourceArray {
            if completion(elem) {
                newArray += [elem]
            }
        }
        return newArray
    }
    
    static func length<T>(_ sourceArray: [T]) -> Int {
        var count: Int = 0
        for _ in sourceArray {
            count += 1
        }
        return count
    }
    
    static func map<T>(_ sourceArray: [T], _ completion: (T) -> T) -> [T] {
        var newArray = [T]()
        for elem in sourceArray {
            newArray += [completion(elem)]
        }
        return newArray
    }
    
    static func foldLeft(_ sourceArray: [Int], accumulated: Int, combine:  (Int, Int) -> Int) -> Int {
        var sum: Int = 0
        for elem in sourceArray {
            sum += elem
        }
        return combine(accumulated, sum)
    }

    static func foldRight<T>(_ sourceArray: [T], accumulated: T, combine: (T,T) -> T) -> T {
        var sum: T
        for elem in sourceArray where T.self == Int.self {
            sum += elem
        }
        return combine(sum, accumulated)
    }
    
    static func reverse<T>(_ sourceArray: [T]) -> [T] {
        var newArray = [T]()
        let count = ListOps.length(sourceArray) - 1
        guard count > 0 else { return [] }
        for index in stride(from: count, through: 0, by: -1) {
            newArray += [sourceArray[index]]
        }
        return newArray
    }
}
