class GradeSchool {
    
    var rosterOfStudents: [Int: [String]] = [:]
    
    lazy var roster: [Int: [String]] = {
        return rosterOfStudents
    }()
    
    lazy var sortedRoster: [Int: [String]] = {
        return rosterOfStudents.mapValues {$0.sorted(by: <)}
    }()
    
    func addStudent(_ nameOfStudent: String, grade number: Int) {
        rosterOfStudents[number, default: []].append(nameOfStudent)
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return rosterOfStudents[grade, default: []]
    }
}
