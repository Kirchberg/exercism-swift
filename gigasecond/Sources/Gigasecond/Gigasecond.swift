import Foundation

extension TimeInterval {
  static let billion = 1_000_000_000.0
}

struct Gigasecond {
    let description: String
    private static let dateFormatter: DateFormatter = {
        let personalFormatter = DateFormatter()
        personalFormatter.timeZone = TimeZone(abbreviation: "UTC")
        personalFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return personalFormatter
    }()
    init?(from time: String) {
        guard let date = Gigasecond.dateFormatter.date(from: time) else {
            return nil
        }
        let gigasecond = date.addingTimeInterval(.billion)
        self.description = Gigasecond.dateFormatter.string(from: gigasecond)
    }
}
