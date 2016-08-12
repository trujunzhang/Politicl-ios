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

    var author: AuthorItem?
//    var thumbnail_images: ThumbnailItem?
//    var tags: [TagItem] = [TagItem]()
//    var categories: [PostCategoryItem] = [PostCategoryItem]()
//    var custom_fields: CustomFieldsItem?
    
    init(json:JSON){
        id = json["id"].intValue
        type = json["type"].stringValue
        slug = json["slug"].stringValue
        url = json["url"].stringValue
        status = json["status"].stringValue
        title = json["title"].stringValue
        title_plain = json["title_plain"].stringValue
        content = json["content"].stringValue
        excerpt = json["excerpt"].stringValue
        date = json["date"].stringValue
        modified = json["modified"].stringValue

        comment_count = json["modified"].intValue
        comment_status = json["comment_status"].stringValue
        thumbnail = json["thumbnail"].stringValue
        thumbnail_size = json["thumbnail_size"].stringValue

//        author = AuthorItem(json: json["author"].Element)
//        thumbnail_images = ThumbnailItem(json["thumbnail_images"].Element)

    }



}