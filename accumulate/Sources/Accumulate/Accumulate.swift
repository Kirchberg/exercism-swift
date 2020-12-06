extension Array {
    func accumulate<T>(_ completion: (T) -> T) -> [T] {
        return self.map { (element) -> T in
            completion(element as! T)
        }
    }
}
