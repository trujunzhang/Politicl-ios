//
//  PostCard.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import AlamofireJsonToObjects
import EVReflection

class PostCard: EVObject {

    var id: Int = 0
    var status: String?

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



}