extension String {
    func isQuestion() -> Bool {
        let numbersArray = self.filter {("0"..."9").contains($0)}
        let containsDigits = ((Int(numbersArray)) != nil) ? true : false
        return (self.last == "?" && (self.uppercased() != self || containsDigits))
    }
    func isShouting() -> Bool {
        let str = self.lowercased().filter({("a"..."z").contains($0)})
        let containsCharacters = (str != "") ? true : false
        return self.uppercased() == self && containsCharacters
    }
    func isEmpty() -> Bool {
        let str = self.filter {!(" ").contains($0)}
        return (str == "") ? true : false
    }
}

class Bob {
    static func hey(_ sentence: String) -> String {
        if sentence.isQuestion() {
            return "Sure."
        } else if sentence.isShouting() {
            return "Whoa, chill out!"
        } else if sentence.isEmpty() {
            return "Fine. Be that way!"
        } else {
            return "Whatever."
        }
    }
}
