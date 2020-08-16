struct SpaceAge {
    let seconds: Double
    private let yearsOnEarth: Double
    var onEarth: Double {
        return (yearsOnEarth * 100).rounded() / 100
    }
    var onMercury: Double {
        return (yearsOnEarth / 0.2408467 * 100).rounded() / 100
    }
    var onVenus: Double {
        return (yearsOnEarth / 0.61519726 * 100).rounded() / 100
    }
    var onMars: Double {
        return (yearsOnEarth / 1.8808158 * 100).rounded() / 100
    }
    var onJupiter: Double {
        return (yearsOnEarth / 11.862615 * 100).rounded() / 100
    }
    var onUranus: Double {
        return (yearsOnEarth / 84.016846 * 100).rounded() / 100
    }
    var onNeptune: Double {
        return (yearsOnEarth / 164.79132 * 100).rounded() / 100
    }
    var onSaturn: Double {
        return (yearsOnEarth / 29.447498 * 100).rounded() / 100
    }
    init(_ seconds: Double) {
        self.seconds = seconds
        self.yearsOnEarth = seconds / (365.25 * 60 * 60 * 24)
    }
}
