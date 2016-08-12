import Quick
import Nimble
import Foundation
import SwiftyJSON

class EVReflectionSpec: QuickSpec {
    override func spec() {
        describe("Reflect the recent posts to an object instance") {
            
            it("to the AggregatedFeedContent object") {

                if let path = NSBundle.mainBundle().pathForResource("get_recent_posts", ofType: "json") {
                    do {
                        let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: NSDataReadingOptions.DataReadingMappedIfSafe)
                        var text = String(data: data, encoding: NSUTF8StringEncoding)
                        let content = AggregatedFeedContent(json: JSON.parse(text!))
//                        let posts = content.posts
                        
                        let x = 0

                    } catch let error as NSError {
                        print(error.localizedDescription)
                    }
                } else {
                    print("Invalid filename/path.")
                }
            }
            
//            it("fetch the recent posts"){
//
//                let URL = "http://www.politicl.com/api/get_recent_posts/?page=1"
//                Alamofire.request(.GET, URL)
//                    .responseObject { (response: Result<AggregatedFeedContent, NSError>) in
//                        if let result = response.value {
//                            // That was all... You now have a WeatherResponse object with data
//                        }
//                }
//
//            }
            
        }
    }
}