//
//  Stop.swift
//  SwiftPTV
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

public struct StopOnRoute: Codable {
    public let name: String?
    public let ID: Int?
    public let routeType: Int?
    public let latitude: Double?
    public let longitude: Double?
    
    internal enum CodingKeys: String, CodingKey {
        case name = "stop_name"
        case ID = "stop_id"
        case routeType = "route_type"
        case latitude = "stop_latitude"
        case longitude = "stop_longitude"
    }
}

public struct StopDetails: Codable {
    let type: String?
    let description: String?
    let routeType: Int?
    let location: StopLocation?
    let amenities: StopAmenityDetails?
    let accessibility: StopAccessibility?
    let ID: Int?
    let name: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "station_type"
        case description = "station_description"
        case routeType = "route_type"
        case location = "stop_location"
        case amenities = "stop_amenities"
        case accessibility = "stop_accessibility"
        case ID = "stop_id"
        case name = "stop_name"
    }
    
}

public struct StopLocation: Codable {
    let gps: StopGPS?
}

public struct StopGPS: Codable {
    let latitude: Int?
    let longitude: Int?
}

public struct StopAmenityDetails: Codable {
    let toilet: Bool?
    let taxiRank: Bool?
    let carParking: String?
    let cctv: Bool?
    
    enum CodingKeys: String, CodingKey {
        case toilet = "toilet"
        case taxiRank = "taxi_rank"
        case carParking = "car_parking"
        case cctv = "cctv"
    }
    
}

public struct StopAccessibility: Codable {
    let lighting: Bool?
    let stairs: Bool?
    let escalator: Bool?
    let lifts: Bool?
    let hearingLoop: Bool?
    let tactileTiles: Bool?
    let wheelchair: StopAccessibilityWheelchair?
    
    enum CodingKeys: String, CodingKey {
        case lighting = "lighting"
        case stairs = "stairs"
        case escalator = "escalator"
        case lifts = "lifts"
        case hearingLoop = "hearing_loop"
        case tactileTiles = "tactile_tiles"
        case wheelchair = "wheelchair"
    }
    
}

public struct StopAccessibilityWheelchair: Codable {
    let accessibleRamp: Bool?
    let accessibleParking: Bool?
    let accessiblePhone: Bool?
    let accessibleToilet: Bool?
    
    enum CodingKeys: String, CodingKey {
        case accessibleRamp = "accessible_ramp"
        case accessibleParking = "accessible_parking"
        case accessiblePhone = "accessible_phone"
        case accessibleToilet = "accessible_toilet"
    }
    
}
