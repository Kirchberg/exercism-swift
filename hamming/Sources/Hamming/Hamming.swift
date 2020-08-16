struct Hamming {
    static func compute(_ firstDNAStrand: String, against secondDNAStrand: String) -> Int? {
        guard firstDNAStrand.count == secondDNAStrand.count else {return nil}
        return zip(firstDNAStrand, secondDNAStrand).filter(!=).count
    }
}
