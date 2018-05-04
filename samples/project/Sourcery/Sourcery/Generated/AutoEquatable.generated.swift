// Generated using Sourcery 0.13.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

fileprivate func compareOptionals<T>(lhs: T?, rhs: T?, compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    switch (lhs, rhs) {
    case let (lValue?, rValue?):
        return compare(lValue, rValue)
    case (nil, nil):
        return true
    default:
        return false
    }
}

fileprivate func compareArrays<T>(lhs: [T], rhs: [T], compare: (_ lhs: T, _ rhs: T) -> Bool) -> Bool {
    guard lhs.count == rhs.count else { return false }
    for (idx, lhsItem) in lhs.enumerated() {
        guard compare(lhsItem, rhs[idx]) else { return false }
    }

    return true
}


// MARK: - AutoEquatable for classes, protocols, structs
// MARK: - User AutoEquatable
extension User: Equatable {}
internal func == (lhs: User, rhs: User) -> Bool {
    guard lhs.id == rhs.id else { return false }
    guard lhs.name == rhs.name else { return false }
    guard lhs.username == rhs.username else { return false }
    guard lhs.emailAddress == rhs.emailAddress else { return false }
    guard lhs.phone == rhs.phone else { return false }
    return true
}

// MARK: - AutoEquatable for Enums
