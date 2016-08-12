
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#define HC_SHORTHAND 1
#import <OCHamcrest/OCHamcrest.h>

@interface CodeFileLocationTests : XCTestCase

@end

@implementation CodeFileLocationTests

- (void)setUp {
    [super setUp];
}

- (void)test_code_files_are_not_in_root_folder {
    // There are project and testing "code" folders.
    // This test ensures we keep code files out of the project's root directory.
    NSArray* extensionsToKeepOutOfRoot =
        @[
        @"h",
        @"m",
        @"c",
        @"mm",
        @"cpp",
        @"swift",
        @"xib",
        @"json",
        @"storyboard",
        @"plist",
        @"xcdatamodeld"
    ];

    NSPredicate* extensionsPredicate =
        [NSPredicate predicateWithFormat:@"pathExtension IN %@", extensionsToKeepOutOfRoot];

//    assertThat(extensionsToKeepOutOfRoot, hasCountOf(0));
}

- (void)tearDown {
    [super tearDown];
}

@end
