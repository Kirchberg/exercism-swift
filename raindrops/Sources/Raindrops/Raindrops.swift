class Raindrops {
    
    let digit: Int
    
    lazy var sounds: String = {
        var resultStr = String()
        if digit.isMultiple(of: 3) {
            resultStr += "Pling"
        }
        if digit.isMultiple(of: 5) {
            resultStr += "Plang"
        }
        if digit.isMultiple(of: 7) {
            resultStr += "Plong"
        }
        return (!resultStr.isEmpty) ? resultStr : "\(digit)"
    }()
    
    init(_ digit: Int) {
        self.digit = digit
    }
}
