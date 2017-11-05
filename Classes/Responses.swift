
import Foundation

public enum Health: Int, Codable {
    case Offline, Online
}

public struct Status: Codable {
    public let version: String?
    public let health: Health? // 0 == Offline, 1 == Online
}

public struct RouteTypesResponse: Codable {
    public let routeTypes: [RouteType]?
    public let status: Status?
    
    internal enum CodingKeys: String, CodingKey {
        case routeTypes = "route_types", status
    }
}

public struct RoutesResponse: Codable {
    public let routes: [Route]?
    public let status: Status?
}

public struct StopsOnRouteResponse: Codable {
    public let stops: [StopOnRoute]?
    public let status: Status?
}

public struct DeparturesResponse: Codable {
    public let departures: [Departure]?
    public let status: Status?
}
