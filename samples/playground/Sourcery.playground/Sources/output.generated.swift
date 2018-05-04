// Generated using Sourcery 0.11.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT



extension Direction {
    static var allCases: [Direction] = [
      .north, 
      .south, 
      .east, 
      .west
    ]
}


extension Person: Equatable {
    public static func == (lhs: Person, rhs: Person) -> Bool {
        guard lhs.username == rhs.username else { return false }
        return true
    }
}
