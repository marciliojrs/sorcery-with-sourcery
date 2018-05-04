struct User: AutoCodable, AutoEquatable {
    let id: Int
    let name: String
    let username: String
    //sourcery: key="email"
    let emailAddress: String
    let phone: String
    let company: Company
}

struct Company: AutoCodable, AutoEquatable {
    let name: String
    let bs: String
}
