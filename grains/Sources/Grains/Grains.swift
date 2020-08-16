class Grains {
    enum GrainsError: Error {
        case inputTooHigh(message: String)
        case inputTooLow(message: String)
    }
    static let total: UInt = {
        var arrayOfGrains: [UInt] = (1...64).map {calcGrains($0)}
        return arrayOfGrains.reduce(0, +)
    }()
    static private func calcGrains(_ numberOfSquares: Int) -> UInt {
        return (1..<numberOfSquares).reduce(1, {acc, _ in acc * 2})
    }
    static func square(_ numberOfSquares: Int) throws -> UInt {
        guard numberOfSquares > 0 else {
            let content: String = "Input[\(Int(numberOfSquares))] invalid. Input should be between 1 and 64 (inclusive)"
            throw GrainsError.inputTooLow(message: content)
        }
        guard numberOfSquares <= 64 else {
            let content: String = "Input[\(Int(numberOfSquares))] invalid. Input should be between 1 and 64 (inclusive)"
            throw GrainsError.inputTooHigh(message: content)
        }
        return calcGrains(numberOfSquares)
    }
}
