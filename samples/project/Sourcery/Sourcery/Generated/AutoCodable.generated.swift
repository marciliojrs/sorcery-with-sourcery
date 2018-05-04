// Generated using Sourcery 0.13.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// MARK: - AutoCodable

extension Company: Codable {
    public enum CodingKeys: String, CodingKey {
        case name 
        case bs 
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(bs, forKey: .bs)
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        bs = try values.decode(String.self, forKey: .bs)
    }
}
extension User: Codable {
    public enum CodingKeys: String, CodingKey {
        case id 
        case name 
        case username 
        case emailAddress = "email" 
        case phone 
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(username, forKey: .username)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encode(phone, forKey: .phone)
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        username = try values.decode(String.self, forKey: .username)
        emailAddress = try values.decode(String.self, forKey: .emailAddress)
        phone = try values.decode(String.self, forKey: .phone)
    }
}
