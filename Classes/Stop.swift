
import Foundation

public struct StopOnRoute: Codable {
    public let name: String?
    public let ID: Int?
    public let routeType: Int?
    public let latitude: Double?
    public let longitude: Double?
    
    internal enum CodingKeys: String, CodingKey {
        case name = "stop_name"
        case ID = "stop_id"
        case routeType = "route_type"
        case latitude = "stop_latitude"
        case longitude = "stop_longitude"
    }
}
