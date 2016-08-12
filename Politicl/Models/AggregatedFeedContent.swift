//
//  AggregatedFeedContent.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import SwiftyJSON

class AggregatedFeedContent {
    var status: String?
    var count = 0
    var count_total = 0
    var pages = 0
    
    var posts: [PostCard] = [PostCard]()
    //    var category: PostCategoryItem?
    
     init(json: JSON) {
        status = json["status"].stringValue
        count  = json["count"].intValue
        count_total    = json["count_total"].intValue
        pages          = json["pages"].intValue
        
        if let posts_dict = json["posts"].array{
            for p in posts_dict{
                posts.append(PostCard(json: p))
            }
        }

        
        let x = 0

    }
}

