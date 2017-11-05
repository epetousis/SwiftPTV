
import Foundation

public extension SwiftPTV {

    func retrieveStopsOnRoute(routeID: Int, routeType: RouteType, _ closure: @escaping (StopsOnRouteResponse?) -> ()) {
        guard let routeType = routeType.type else {
            closure(nil)
            return
        }
        
        retrieveURL(endpoint: "/v3/stops/route/\(routeID)/route_type/\(routeType)", parameters: nil) { data in
            if let data = data {
                let response = try? self.decoder.decode(StopsOnRouteResponse.self, from: data)
                closure(response)
            } else {
                closure(nil)
            }
        }
    }

}
