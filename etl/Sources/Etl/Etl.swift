struct ETL {
    
    static func transform(_ listOfLettersPerScore: [Int : [String]]) -> [String : Int] {
        return Dictionary(uniqueKeysWithValues: listOfLettersPerScore.flatMap { digit, letters in
            letters.map {
                ($0.lowercased(), digit)
            }
        })
    }
}
