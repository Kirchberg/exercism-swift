class Squares {
    private let value: ClosedRange<Int>
    lazy var squareOfSum: Int = {
        let sum: Int = value.reduce(0, +)
        return sum * sum
    }()
    lazy var sumOfSquares: Int = {
        value.reduce(0, {$0 + $1 * $1})
    }()
    lazy var differenceOfSquares: Int = {
        self.squareOfSum - self.sumOfSquares
    }()
    init(_ number: Int) {
        self.value = (1...number)
    }
}
