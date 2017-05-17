import XCTest
@testable import AppExt

class AppExtTests: XCTestCase {
    func TestAppExt() {
        XCTAssertNil(PlaceExt())
        XCTAssertNil(UserExt())
    }

    
    static var allTests = [
        ("testAppExt", TestAppExt),
    ]
}
