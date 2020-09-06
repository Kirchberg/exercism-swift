extension String {
    mutating func removeCountryCode() {
        if self.first == "1" {
            self.removeFirst()
        }
    }
    subscript(bounds: CountableClosedRange<Int>) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: bounds.lowerBound)
        let endIndex = self.index(self.startIndex, offsetBy: bounds.upperBound)
        return String(self[startIndex...endIndex])
    }
}

extension PhoneNumber: CustomStringConvertible{
    var description: String {
        var arrayString = Array(number)
        arrayString.insert("(", at: arrayString.startIndex)
        arrayString.insert(")", at: arrayString.index(arrayString.startIndex, offsetBy: 4))
        arrayString.insert(" ", at: arrayString.index(arrayString.startIndex, offsetBy: 5))
        arrayString.insert("-", at: arrayString.index(arrayString.startIndex, offsetBy: 9))
        return String(arrayString)
    }
}

class PhoneNumber{
    var number: String
    let areaCode: String
    init(_ startingNumber: String) {
        var sourceNumber = startingNumber
        sourceNumber.removeCountryCode()
        var telephoneNumber = Array(sourceNumber)
        areaCode = sourceNumber[0...2]
        telephoneNumber.removeAll(where: {["-", " ", "(", ")", "."].contains($0)})
        if telephoneNumber.count <= 9 || telephoneNumber.count >= 11 {
            number = String(repeating: "0", count: 10)
        } else {
            number = String(telephoneNumber)
        }
    }
}
