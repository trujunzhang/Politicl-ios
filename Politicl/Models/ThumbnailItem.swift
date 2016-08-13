//
//  PostCard.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import SwiftyJSON

class ThumbnailItem {

    var full: MediumItem?
    var thumbnail: MediumItem?
    var medium: MediumItem?

    init(json:JSON){
        full = MediumItem(json: json["full"])
        thumbnail = MediumItem(json: json["thumbnail"])
        medium = MediumItem(json: json["medium"])
    }

}