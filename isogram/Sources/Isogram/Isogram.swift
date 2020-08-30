struct Isogram {
    static func isIsogram(_ word: String) -> Bool {
        var setOfUniqueCharacters: Set<Character> = []
        var wordWithoutPunctuation = word.lowercased()
        wordWithoutPunctuation.removeAll(where: { [" ", "-"].contains($0) })
        return wordWithoutPunctuation.lazy.allSatisfy({setOfUniqueCharacters.insert($0).inserted})
    }
}
