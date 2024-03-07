@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    func testCards() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)

        try app.test(.GET, "cards", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
        })
    }

    func testCategories() async throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try await configure(app)

        try app.test(.GET, "categories", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
        })
    }
}
