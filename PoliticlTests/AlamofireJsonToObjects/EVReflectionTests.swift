import Quick
import Nimble
import Foundation

class EVReflectionSpec: QuickSpec {
    override func spec() {
        describe("Reflect the recent posts to an object instance") {
            it("to the AggregatedFeedContent object") {

                if let path = NSBundle.mainBundle().pathForResource("get_recent_posts", ofType: "json") {
                    do {
                        let data = try NSData(contentsOfURL: NSURL(fileURLWithPath: path), options: NSDataReadingOptions.DataReadingMappedIfSafe)
                        var json = String(data: data, encoding: NSUTF8StringEncoding)
                        let content = AggregatedFeedContent(json: json)
                        
                        let x = 0

                    } catch let error as NSError {
                        print(error.localizedDescription)
                    }
                } else {
                    print("Invalid filename/path.")
                }
            }
        }
    }
}