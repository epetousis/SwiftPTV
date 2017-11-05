
import Foundation

public extension SwiftPTV {

    func retrieveDepartures(stopID: Int, routeType: RouteType, _ closure: @escaping (DeparturesResponse?) -> ()) {
        guard let routeType = routeType.type else {
            closure(nil)
            return
        }
        
        retrieveURL(endpoint: "/v3/departures/route_type/\(routeType)/stop/\(stopID)", parameters: nil) { data in
            if let data = data {
                let response = try? self.decoder.decode(DeparturesResponse.self, from: data)
                closure(response)
            } else {
                closure(nil)
            }
        }
    }

}
