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
    
    static func foldLeft(_ sourceArray: [Int], accumulated: Int, combine:  ) -> Int {
        return 0 
    }
}
