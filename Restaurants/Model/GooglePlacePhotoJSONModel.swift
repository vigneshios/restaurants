//
//  GooglePlacePhotoJSONModel.swift
//  Restaurants
//
//  Created by Nicholas Gresham on 17/12/17.
//  Copyright © 2017 Nicholas Gresham. All rights reserved.
//

import Foundation
import ObjectMapper

final class GooglePlacePhoto: Mappable, CustomStringConvertible {

  public fileprivate(set) var photoReference: String?

  required convenience init?(map: Map) {
    self.init()
  }

  func mapping(map: Map) {
    photoReference <- map["photo_reference"]
  }

  var description: String {
    return "\(toJSON())"
  }
}
