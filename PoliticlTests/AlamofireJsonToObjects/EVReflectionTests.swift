import Quick
import Nimble
import Foundation
import SwiftyJSON
import Mockingjay

class EVReflectionSpec: QuickSpec {
    override func spec() {
        describe("Reflect the recent posts to an object instance") {
            
            beforeEach() {
                if let path = NSBundle.mainBundle().pathForResource("get_recent_posts", ofType: "json") {
                    do {
                        let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: NSDataReadingOptions.DataReadingMappedIfSafe)
                        self.stub(http(.GET, uri: "http://www.politicl.com/api/get_recent_posts/?page=1"), builder: json(data))
                    } catch let error as NSError {
                        print(error.localizedDescription)
                    }
                } else {
                    print("Invalid filename/path.")
                }
            }
            
        }
        
        it("Fetching the AggregatedFeedContent object") {
            let expectation = self.expectationWithDescription("Alamofire")
            
            PWPFeedFetcher.fetchingRecentPosts(1, completionHandler: {response in
                switch response{
                case .Success:
                    let content = response.value
                    break
                case .Failure(let error):
                    print(error)
                }
                expectation.fulfill()
            })
            self.waitForExpectationsWithTimeout(50.0, handler: nil)
        }
        
        //            it("to the AggregatedFeedContent object") {
        //
        //                if let path = NSBundle.mainBundle().pathForResource("get_recent_posts", ofType: "json") {
        //                    do {
        //                        let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: NSDataReadingOptions.DataReadingMappedIfSafe)
        //                        var text = String(data: data, encoding: NSUTF8StringEncoding)
        //                        let content = AggregatedFeedContent(json: JSON.parse(text!))
        ////                        let posts = content.posts
        //
        //                        let x = 0
        //
        //                    } catch let error as NSError {
        //                        print(error.localizedDescription)
        //                    }
        //                } else {
        //                    print("Invalid filename/path.")
        //                }
        //            }
        
    }
}