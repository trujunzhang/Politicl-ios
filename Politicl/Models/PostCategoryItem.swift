//
//  PostCategoryItem.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import AlamofireJsonToObjects
import EVReflection

class PostCategoryItem: EVObject {

    var id = 0
    var slug: String?
    var title: String?
    var description: String?
    var parent: String?
    var post_count = 0


}