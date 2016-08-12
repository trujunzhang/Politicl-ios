//
//  AggregatedFeedContent.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import AlamofireJsonToObjects
import EVReflection

class AggregatedFeedContent : EVObject{
    var status: String?
    var count: Int = 0
    var count_total: Int = 0
    var pages: Int = 0
    var posts: [PostCard] = [PostCard]()
    var category: PostCategoryItem?
}
