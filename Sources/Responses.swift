
import Foundation

public enum Health: Int, Codable {
    case Offline, Online
}

public struct Status: Codable {
    let version: String?
    let health: Health? // 0 == Offline, 1 == Online
}

public struct RouteTypesResponse: Codable {
    let routeTypes: [RouteType]?
    let status: Status?
    
    internal enum CodingKeys: String, CodingKey {
        case routeTypes = "route_types", status
    }
}

public struct RoutesResponse: Codable {
    let routes: [Route]?
    let status: Status?
}

public struct StopsOnRouteResponse: Codable {
    let stops: [StopOnRoute]?
    let status: Status?
}

public struct DeparturesResponse: Codable {
    let departures: [Departure]?
    let status: Status?
}
