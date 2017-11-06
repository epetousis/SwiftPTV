//
//  PTVDirections.swift
//  SwiftPTViOS
//
//  Copyright (c) 2017 evilgoldfish.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

public extension SwiftPTV {

    /// Retrieve directions that a specified route travels in.
    ///
    /// - Parameters:
    ///   - routeID: Identifier of route, returned by Routes API.
    ///   - parameters: The parameters to be passed to the API as a query string. Can be `nil`.
    ///   - completionHandler: The completion handler to call when the request is complete.
    func retrieveDirections(routeID: Int, parameters: [String : Any]?, _ completionHandler: @escaping (DirectionsResponse?) -> ()) {
        retrieveURL(endpoint: "/v3/directions/route/\(routeID)", parameters: parameters) { data in
            if let data = data {
                let response = try? self.decoder.decode(DirectionsResponse.self, from: data)
                completionHandler(response)
            } else {
                completionHandler(nil)
            }
        }
    }

    /// Retrieve all routes that travel in the specified direction.
    ///
    /// - Parameters:
    ///   - directionID: Identifier of direction, returned by Directions API.
    ///   - parameters: The parameters to be passed to the API as a query string. Can be `nil`.
    ///   - completionHandler: The completion handler to call when the request is complete.
    func retrieveRoutesForDirection(directionID: Int, parameters: [String : Any]?, _ completionHandler: @escaping (DirectionsResponse?) -> ()) {
        retrieveURL(endpoint: "/v3/directions/\(directionID)", parameters: parameters) { data in
            if let data = data {
                let response = try? self.decoder.decode(DirectionsResponse.self, from: data)
                completionHandler(response)
            } else {
                completionHandler(nil)
            }
        }
    }

    /// Retrieve all routes of the specified route type that travel in the specified direction.
    ///
    /// - Parameters:
    ///   - directionID: Identifier of direction, returned by Directions API.
    ///   - routeType: Object identifying transport mode, returned by RouteTypes API.
    ///   - parameters: The parameters to be passed to the API as a query string. Can be `nil`.
    ///   - completionHandler: The completion handler to call when the request is complete.
    func retrieveRoutesOfTypeForDirection(directionID: Int, routeType: Int, parameters: [String : Any]?, _ completionHandler: @escaping (DirectionsResponse?) -> ()) {
        retrieveURL(endpoint: "/v3/directions/\(directionID)/route_type/\(routeType)", parameters: parameters) { data in
            if let data = data {
                let response = try? self.decoder.decode(DirectionsResponse.self, from: data)
                completionHandler(response)
            } else {
                completionHandler(nil)
            }
        }
    }

}
