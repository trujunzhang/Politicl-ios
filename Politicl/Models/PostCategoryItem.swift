//
//  PostCategoryItem.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import SwiftyJSON

class PostCategoryItem {

    var id = 0
    var slug: String?
    var title: String?
    var descrip : String = ""

    var parent: String?
    var post_count = 0


    init(json: JSON){
        id = json["id"].intValue
        slug = json["slug"].stringValue
        title = json["title"].stringValue
        descrip = json["description"].stringValue

        parent = json["parent"].stringValue
        post_count = json["post_count"].intValue
    }


}