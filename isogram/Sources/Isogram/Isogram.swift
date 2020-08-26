struct Isogram {
    static func isIsogram(_ word: String) -> Bool {
        var isIsogram: Bool = true
        var setOfUniqueCharacters: Set<Character> = []
        var wordWithoutPunctuation = word.lowercased()
        wordWithoutPunctuation.removeAll(where: { [" ", "-"].contains($0) })
        for char in wordWithoutPunctuation {
            if !setOfUniqueCharacters.allSatisfy({$0 != char}) {
                isIsogram = false
                break
            }
            setOfUniqueCharacters.insert(char)
        }
        return isIsogram
    }
}
