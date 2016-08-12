//
//  PostCard.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import SwiftyJSON


class PostCard {

    var id: Int = 0

    var type: String?
    var slug: String?
    var url: String?
    var status: String?
    var title: String?
    var title_plain: String?
    var content: String?
    var excerpt: String?
    var date: String?
    var modified: String?


    var comment_count = 0
    var comment_status: String?
    var thumbnail: String?
    var thumbnail_size: String?
    
    init(json:JSON){
        id = json["id"].intValue
        type = json["type"].stringValue
        slug = json["slug"].stringValue
    }

//    var author: AuthorItem?
//    var thumbnail_images: ThumbnailItem?
//    var tags: [TagItem] = [TagItem]()
//    var categories: [PostCategoryItem] = [PostCategoryItem]()
//    var custom_fields: CustomFieldsItem?

}