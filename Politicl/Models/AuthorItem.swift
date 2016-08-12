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

class AuthorItem: EVObject {

    var id = 0
    var slug: String?
    var name: String?
    var first_name: String?
    var last_name: String?
    var nickname: String?

    var url: String?
    var description: String?

}