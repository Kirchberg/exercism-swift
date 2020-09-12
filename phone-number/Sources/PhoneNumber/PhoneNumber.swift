extension String {
    mutating func removeCountryCode() {
        if self.first == "1" {
            self.removeFirst()
        }
    }
}

extension Substring {
    func toString() -> String {
        String(self)
    }
}

extension PhoneNumber: CustomStringConvertible{
    var description: String {
        return "(\(number.prefix(3))) \(number.dropLast(4).suffix(3))-\(number.suffix(4))"
    }
}

struct PhoneNumber{
    let number: String
    let areaCode: String
    init(_ startingNumber: String) {
        var sourceNumber = startingNumber
        
        sourceNumber.removeCountryCode()
        var telephoneNumber = sourceNumber
        areaCode = sourceNumber.prefix(3).toString()
        telephoneNumber.removeAll(where: {("- ().").contains($0)})
        number = (telephoneNumber.count != 10) ? String(repeating: "0", count: 10) : telephoneNumber
    }
}
