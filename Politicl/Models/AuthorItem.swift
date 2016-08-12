//
//  PostCard.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import SwiftyJSON

class AuthorItem{

    var id = 0
    var slug: String?
    var name: String?
    var first_name: String?
    var last_name: String?
    var nickname: String?

    var url: String?
    var descrip : String = ""

    init(json: JSON){
         id = json["id"].intValue
         slug = json["slug"].stringValue
         name = json["name"].stringValue
         first_name = json["first_name"].stringValue
         last_name = json["last_name"].stringValue
         nickname = json["nickname"].stringValue

         url = json["url"].stringValue
         descrip = json["description"].stringValue
    }

}