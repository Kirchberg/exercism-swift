enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}

class Nucleotide {
    private let strand: String
    func complementOfDNA() throws -> String {
        var resultStr = [String]()
        for char in strand {
            switch char {
            case "A":
                resultStr.append("U")
            case "C":
                resultStr.append("G")
            case "G":
                resultStr.append("C")
            case "T":
                resultStr.append("A")
            default:
                let content = "\(char) is not a valid Nucleotide"
                throw TranscriptionError.invalidNucleotide(message: content)
            }
        }
        return resultStr.reduce("", +)
    }
    init(_ str: String) {
        self.strand = str
    }
}
