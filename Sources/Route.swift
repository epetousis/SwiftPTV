
import Foundation

public struct RouteType: Codable {
    let name: String?
    let type: Int?
    
    internal enum CodingKeys: String, CodingKey {
        case name = "route_type_name"
        case type = "route_type"
    }
}

public struct Route: Codable {
    let type: Int?
    let ID: Int?
    let name: String?
    let number: String?
    
    internal enum CodingKeys: String, CodingKey {
        case type = "route_type"
        case ID = "route_id"
        case name = "route_name"
        case number = "route_number"
    }
}
