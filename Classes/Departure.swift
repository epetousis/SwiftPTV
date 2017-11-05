
import Foundation

public struct Departure: Codable {
    public let stopID: Int?
    public let routeID: Int?
    public let runID: Int?
    public let directionID: Int?
    public let disruptionIDs: [Int]?
    public let scheduledDeparture: Date?
    public let estimatedDeparture: Date?
    public let atPlatform: Bool?
    public let platformNumber: String?
    public let flags: String?
    
    internal enum CodingKeys: String, CodingKey {
        case stopID = "stop_id"
        case routeID = "route_id"
        case runID = "run_id"
        case directionID = "direction_id"
        case disruptionIDs = "disruption_ids"
        case scheduledDeparture = "scheduled_departure_utc"
        case estimatedDeparture = "estimated_departure_utc"
        case atPlatform = "at_platform"
        case platformNumber = "platform_number"
        case flags = "flags"
    }
}

public extension Departure {

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        let stopID = try? container.decode(Int.self, forKey: .stopID)
        let routeID = try? container.decode(Int.self, forKey: .routeID)
        let runID = try? container.decode(Int.self, forKey: .runID)
        let directionID = try? container.decode(Int.self, forKey: .directionID)
        let disruptionIDs = try? container.decode([Int].self, forKey: .disruptionIDs)
        let scheduledDepartureString = try? container.decode(String.self, forKey: .scheduledDeparture)
        let estimatedDepartureString = try? container.decode(String.self, forKey: .estimatedDeparture)
        let atPlatform = try? container.decode(Bool.self, forKey: .atPlatform)
        let platformNumber = try? container.decode(String.self, forKey: .platformNumber)
        let flags = try? container.decode(String.self, forKey: .flags)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let scheduledDeparture = scheduledDepartureString != nil ? dateFormatter.date(from: scheduledDepartureString!) : nil
        let estimatedDeparture = estimatedDepartureString != nil ? dateFormatter.date(from: estimatedDepartureString!) : nil
        
        self.init(stopID: stopID, routeID: routeID, runID: runID, directionID: directionID, disruptionIDs: disruptionIDs, scheduledDeparture: scheduledDeparture, estimatedDeparture: estimatedDeparture, atPlatform: atPlatform, platformNumber: platformNumber, flags: flags)
    }

}
