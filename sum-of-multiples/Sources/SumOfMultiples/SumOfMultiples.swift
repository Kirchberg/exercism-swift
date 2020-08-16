struct SumOfMultiples {
    static func toLimit(_ limitDigit: Int, inMultiples: Set<Int>) -> Int {
        var particularNumberSet = Set<Int>()
        for digit in inMultiples where digit != 0 {
            var counter: Int = 1
            for digit in stride(from: digit, to: limitDigit, by: digit * counter) {
                particularNumberSet.insert(digit)
                counter += 1
            }
        }
        return particularNumberSet.reduce(0, +)
    }
}
