struct ETL {
    
    static func transform(_ listOfLettersPerScore: [Int : [String]]) -> [String : Int] {
        var listOfScoresPerLetter = [String : Int]()
        
        for (key, value) in listOfLettersPerScore {
            for char in value {
                listOfScoresPerLetter[char] = key
            }
        }
        let tupleArray = listOfScoresPerLetter.map { ($0.lowercased(), $1) }
        listOfScoresPerLetter = Dictionary(uniqueKeysWithValues: tupleArray)
        return listOfScoresPerLetter
    }
}
