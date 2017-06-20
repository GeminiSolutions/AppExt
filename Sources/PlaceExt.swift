//
//  PlaceExt.swift
//  PlacesAppModel
//
//  Copyright © 2017 Gemini Solutions. All rights reserved.
//

import Foundation
import Places

public class PlaceExt: Place {
    public static let AddressStreetKey = "street"
    public static let AddressCityKey = "city"
    public static let AddressStateKey = "state"
    public static let AddressPostalCodeKey = "postal_code"
    public static let AddressCountryKey = "country"
    
    public var addressDictionary: [String:String]? {
        get {
            return content["address"] as? [String:String]
        }
        set {
            set(newValue, for: "address")
        }
    }

    public var description: String? {
        get {
            return content["description"] as? String
        }
        set {
            set(newValue, for: "description")
        }
    }

    public var phone: String? {
        get {
            return content["phone"] as? String
        }
        set {
            set(newValue, for: "phone")
        }
    }

    public var url: String? {
        get {
            return content["url"] as? String
        }
        set {
            set(newValue, for: "url")
        }
    }

    public var mediaItems: [String]? {
        get {
            return content["media"] as? [String]
        }
        set {
            set(newValue, for: "media")
        }
    }

    public var formattedAddress: String? {
        var addressComponents = [String]()
        
        if let street = addressDictionary?[PlaceExt.AddressStreetKey] {
            addressComponents.append(street)
        }
        if let city = addressDictionary?[PlaceExt.AddressCityKey] {
            addressComponents.append(city)
        }
        if let postalCode = addressDictionary?[PlaceExt.AddressPostalCodeKey] {
            addressComponents.append(postalCode)
        }
        if let state = addressDictionary?[PlaceExt.AddressStateKey] {
            addressComponents.append(state)
        }
        if let country = addressDictionary?[PlaceExt.AddressCountryKey] {
            addressComponents.append(country)
        }

        return addressComponents.joined(separator: ", ")
    }
    
    override class public func validate(_ json: JSONObjectType) -> Bool {
        guard super.validate(json) else { return false }
        //add validation
        return true
    }

    override class public var Fields: [[String:Any]] {
        return super.Fields +
               [["name":"address", "label": "Address", "type":"Dictionary<String:String>", "required":"false", "fields" : [
                    ["name": PlaceExt.AddressStreetKey, "label": PlaceExt.AddressStreetKey.capitalized, "type":"String", "required":"false"],
                    ["name": PlaceExt.AddressCityKey, "label": PlaceExt.AddressCityKey.capitalized, "type":"String", "required":"false"],
                    ["name": PlaceExt.AddressStateKey, "label": PlaceExt.AddressStateKey.capitalized, "type":"String", "required":"false"],
                    ["name": PlaceExt.AddressPostalCodeKey, "label": PlaceExt.AddressPostalCodeKey.capitalized, "type":"String", "required":"false"],
                    ["name": PlaceExt.AddressCountryKey, "label": PlaceExt.AddressCountryKey.capitalized, "type":"String", "required":"false"]]],
                ["name":"description", "label": "Description", "type":"String", "required":"false"],
                ["name":"phone", "label": "Phone Number", "type":"String", "required":"false"],
                ["name":"url", "label": "Site", "type":"String", "required":"false"]]
    }
}
