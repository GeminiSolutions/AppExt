import XCTest
@testable import PlacesAppModel

class PlacesAppModelTests: XCTestCase {
    func TestPlacesAppModel() {
        XCTAssertNil(PlaceExt())
        XCTAssertNil(UserExt())
    }

    
    static var allTests = [
        ("testPlacesAppModel", TestPlacesAppModel),
    ]
}
