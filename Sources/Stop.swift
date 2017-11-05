
import Foundation

public struct StopOnRoute: Codable {
    let name: String?
    let ID: Int?
    let routeType: Int?
    let latitude: Double?
    let longitude: Double?
    
    private enum CodingKeys: String, CodingKey {
        case name = "stop_name"
        case ID = "stop_id"
        case routeType = "route_type"
        case latitude = "stop_latitude"
        case longitude = "stop_longitude"
    }
}
