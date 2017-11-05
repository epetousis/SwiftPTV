
import Foundation

public struct RouteType: Codable {
    public let name: String?
    public let type: Int?
    
    internal enum CodingKeys: String, CodingKey {
        case name = "route_type_name"
        case type = "route_type"
    }
}

public struct Route: Codable {
    public let type: Int?
    public let ID: Int?
    public let name: String?
    public let number: String?
    
    internal enum CodingKeys: String, CodingKey {
        case type = "route_type"
        case ID = "route_id"
        case name = "route_name"
        case number = "route_number"
    }
}
