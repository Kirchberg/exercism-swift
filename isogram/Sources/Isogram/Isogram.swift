struct Isogram {
    private static let punctuation: Set<Character> = [" ", "-"]
    static func isIsogram(_ word: String) -> Bool {
        var isIsogram: Bool = true
        var setOfUniqueCharacters: Set<Character> = []
        var wordWithoutPunctuation = word.lowercased()
        wordWithoutPunctuation.removeAll(where: { punctuation.contains($0) })
        for char in wordWithoutPunctuation {
            if !setOfUniqueCharacters.contains(char) {
                setOfUniqueCharacters.insert(char)
            } else {
                isIsogram = false
                break
            }
        }
        return isIsogram
    }
}
