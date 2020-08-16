struct DNA {
    private var dna = [String]()
    func count(_ char: String) -> Int {
        dna.lazy.filter { String($0) == char }.count
    }

    func counts() -> [String: Int] {
        let resultDna: [String: Int] = [ "A": 0, "T": 0, "C": 0, "G": 0 ]
        return dna.reduce(into: resultDna) { acc,char in acc[char]! += 1 }
    }

    init?(strand: String) {
        for char in strand {
            switch char {
            case "A":
                self.dna.append("A")
            case "C":
                self.dna.append("C")
            case "G":
                self.dna.append("G")
            case "T":
                self.dna.append("T")
            default:
                return nil
            }
        }
    }
}
