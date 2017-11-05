
import Foundation

public extension SwiftPTV {

    func retrieveRoutes(routeTypes: [RouteType]?, _ closure: @escaping (RoutesResponse?) -> ()) {
        var parameters: [String : [Int]]? = nil

        if let routeTypes = routeTypes {
            let routeTypeInts = routeTypes.map({rt in return rt.type ?? 0})
            parameters = ["route_types" : routeTypeInts]
        }

        retrieveURL(endpoint: "/v3/routes", parameters: parameters) { data in
            if let data = data {
                let response = try? self.decoder.decode(RoutesResponse.self, from: data)
                closure(response)
            } else {
                closure(nil)
            }
        }
    }

}
