struct Scrabble {
    let score: Int
    static private let resultTable: [String : Int] = [
        "AEIOULNRST" : 1,
        "DG"         : 2,
        "BCMP"       : 3,
        "FHVWY"      : 4,
        "K"          : 5,
        "JX"         : 8,
        "QZ"         : 10
    ]
    
    init(_ initialString: String?) {
        score = Scrabble.score(initialString)
    }
    
    static func score(_ initialString: String?) -> Int {
        guard let initialString = initialString?.uppercased() else { return 0 }

        let counter = initialString.reduce(into: Int(), { (score, character) in
            resultTable.forEach { (stringOfLetters: String, valueToAdd: Int) in
                if stringOfLetters.contains(character) {
                    score += valueToAdd
                }
            }
        })
        return counter
    }
}
