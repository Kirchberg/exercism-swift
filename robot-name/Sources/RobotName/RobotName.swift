class Robot {
    var name: String = ""
    init() {
        self.name = generateName()
    }
    func resetName() {
        self.name = generateName()
    }
    private func generateName() -> String {
        let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let numbers = "0123456789"
        var robotName = String()
        robotName.append(contentsOf: (0..<2).compactMap({_ in characters.randomElement()}))
        robotName.append(contentsOf: (0..<3).compactMap({_ in numbers.randomElement()}))
        return robotName
    }
}
