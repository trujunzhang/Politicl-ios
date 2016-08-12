//
//  PostCard.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import SwiftyJSON

class MediumItem {
    var url: String = ""
    var width = 0
    var height = 0

    init(json: JSON){
        url = json["url"].stringValue

        width = json["width"].intValue
        height = json["height"].intValue
    }
}