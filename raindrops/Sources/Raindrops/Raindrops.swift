class Raindrops {
    
    let digit: Int
    
    lazy var sounds: String = {
        var resultStr = String()
        if digit % 3 == 0 {
            resultStr += "Pling"
        }
        if digit % 5 == 0 {
            resultStr += "Plang"
        }
        if digit % 7 == 0 {
            resultStr += "Plong"
        }
        return (!resultStr.isEmpty) ? resultStr : "\(digit)"
    }()
    
    init(_ digit: Int) {
        self.digit = digit
    }
}
