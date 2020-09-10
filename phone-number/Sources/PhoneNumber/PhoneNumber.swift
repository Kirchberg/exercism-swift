extension String {
    mutating func removeCountryCode() {
        if self.first == "1" {
            self.removeFirst()
        }
    }
}

extension PhoneNumber: CustomStringConvertible{
    var description: String {
        return "(\(number.prefix(3))) \(number.dropLast(4).suffix(3))-\(number.suffix(4))"
    }
}

class PhoneNumber{
    var number: String
    let areaCode: String
    init(_ startingNumber: String) {
        var sourceNumber = startingNumber
        
        sourceNumber.removeCountryCode()
        var telephoneNumber = Array(sourceNumber)
        areaCode = String(sourceNumber.prefix(3))
        telephoneNumber.removeAll(where: {["-", " ", "(", ")", "."].contains($0)})
        number = (telephoneNumber.count <= 9 || telephoneNumber.count >= 11) ? String(repeating: "0", count: 10) : String(telephoneNumber)
    }
}
