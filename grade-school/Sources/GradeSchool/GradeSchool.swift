class GradeSchool {
    
    private var rosterOfStudents: [Int: [String]] = [:]
    
    var roster: [Int: [String]] {
        rosterOfStudents
    }
    
    var sortedRoster: [Int: [String]] {
        rosterOfStudents.mapValues {$0.sorted(by: <)}
    }
    
    func addStudent(_ nameOfStudent: String, grade number: Int) {
        rosterOfStudents[number, default: []].append(nameOfStudent)
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        rosterOfStudents[grade, default: []]
    }
}
