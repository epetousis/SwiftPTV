
import Foundation

public extension SwiftPTV {
    
    func retrieveRouteTypes(_ closure: @escaping (RouteTypesResponse?) -> ()) {
        retrieveURL(endpoint: "/v3/route_types", parameters: nil) { data in
            if let data = data {
                let response = try? self.decoder.decode(RouteTypesResponse.self, from: data)
                if let routeTypes = response?.routeTypes {
                    self.routeTypes = routeTypes
                }
                closure(response)
            } else {
                closure(nil)
            }
        }
    }
    
    func routeType(number: Int) -> RouteType? {
        guard let routeTypes = routeTypes else {
            return nil
        }
        
        for routeType in routeTypes {
            if routeType.type != nil && routeType.type == number {
                return routeType
            }
        }
        
        return nil
    }

}
