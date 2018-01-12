//
//  GooglePlacesSearchResponseJSONModel.swift
//  Restaurants
//
//  Created by Nicholas Gresham on 17/12/17.
//  Copyright © 2017 Nicholas Gresham. All rights reserved.
//

import Foundation
import ObjectMapper

final class GooglePlacesSearchResponseJSONModel: Mappable, CustomStringConvertible {

  public fileprivate(set) var places: [GooglePlaceJSONModel]?

  required convenience init?(map: Map) {
    self.init()
  }

  func mapping(map: Map) {
    places <- map["results"]
  }

  var description: String {
    return "\(toJSON())"
  }

}
