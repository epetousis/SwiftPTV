//
//  SearchResults.swift
//  SwiftPTV
//
//  Copyright (c) 2018 evilgoldfish.
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

public struct ResultStop: Codable {
    public let distance: Double?
    public let name: String?
    public let ID: Int?
    public let routeType: Int?
    public let latitude: Double?
    public let longitude: Double?

    internal enum CodingKeys: String, CodingKey {
        case distance = "stop_distance"
        case name = "stop_name"
        case ID = "stop_id"
        case routeType = "route_type"
        case latitude = "stop_latitude"
        case longitude = "stop_longitude"
    }
}

public struct ResultRoute: Codable {
    public let name: String?
    public let number: String?
    public let type: Int?
    public let ID: Int?

    internal enum CodingKeys: String, CodingKey {
        case name = "route_name"
        case number = "route_number"
        case type = "route_type"
        case ID = "route_id"
    }
}

public struct ResultOutlet: Codable {
    public let distance: Double?
    public let name: String?
    public let business: String?
    public let latitude: Double?
    public let longitude: Double?
    public let suburb: String?

    internal enum CodingKeys: String, CodingKey {
        case distance = "outlet_distance"
        case name = "outlet_name"
        case business = "outlet_business"
        case latitude = "outlet_latitude"
        case longitude = "outlet_longitude"
        case suburb = "outlet_suburb"
    }
}
