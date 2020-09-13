private enum TriangleKind: String {
    case equilateral = "Equilateral"
    case isosceles = "Isosceles"
    case scalene = "Scalene"
    case errorKind = "ErrorKind"
}

struct Triangle {
    private let firstSide: Float
    private let secondSide: Float
    private let thirdSide: Float
    var kind = String()
    
    init(_ firstSide: Float, _ secondSide: Float, _ thirdSide: Float) {
        self.firstSide = firstSide
        self.secondSide = secondSide
        self.thirdSide = thirdSide
        self.kind = defineTriangleKind()
    }
    
    private func defineTriangleKind() -> String {
        guard secondSide + thirdSide >= firstSide,
              thirdSide + firstSide >= secondSide,
              firstSide + secondSide >= thirdSide,
              firstSide > 0,
              secondSide > 0,
              thirdSide > 0
        else { return TriangleKind.errorKind.rawValue }
        
        if firstSide == secondSide && secondSide == thirdSide && firstSide == thirdSide {
            return TriangleKind.equilateral.rawValue
        } else if firstSide == secondSide || secondSide == thirdSide || firstSide == thirdSide {
            return TriangleKind.isosceles.rawValue
        }
        return TriangleKind.scalene.rawValue
    }
}
