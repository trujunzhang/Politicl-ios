//
//  JSONDecodable.swift
//  Politicl
//
//  Created by djzhang on 8/12/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol JSONDecodable {
    init(json: JSON)
}