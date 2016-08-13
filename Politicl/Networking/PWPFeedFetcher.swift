//
//  PWPFeedFetcher.swift
//  Politicl
//
//  Created by djzhang on 8/13/16.
//  Copyright © 2016 djzhang. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class PWPFeedFetcher{
    static let politicl_host: String = "http://www.politicl.com/api"
    
    // like: http://www.politicl.com/api/get_recent_posts/?page={num}
    
    class func fetchingRecentPosts(num:Int,completionHandler: Alamofire.Result<AggregatedFeedContent, NSError> -> Void){
        Alamofire.request(.GET, politicl_host + "/get_recent_posts",parameters: ["page":num]).validate().responseJSON { response in
            switch response.result {
            case .Success:
                if let value = response.data {
                    if let text = String(data: value, encoding: NSUTF8StringEncoding){
                        let content = AggregatedFeedContent(json: JSON.parse(text))
                        completionHandler(Alamofire.Result<AggregatedFeedContent, NSError>.Success(content))
                    }
                }else{
                    let error = NSError(domain: "Politicl", code: -123, userInfo: ["message":"empty response"])
                    completionHandler(Alamofire.Result<AggregatedFeedContent, NSError>.Failure(error))
                }
            case .Failure(let error):
                completionHandler(Alamofire.Result<AggregatedFeedContent, NSError>.Failure(error))
            }
        }
        
    }
    
}