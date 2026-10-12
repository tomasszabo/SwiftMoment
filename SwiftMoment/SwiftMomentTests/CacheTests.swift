import XCTest
@testable import SwiftMoment

final class CacheTests: XCTestCase {
    func testConcurrentCalendarRequestsKeepTheirTimeZoneAndLocale() {
        DispatchQueue.concurrentPerform(iterations: 256) { index in
            let zone = TimeZone(secondsFromGMT: index.isMultiple(of: 2) ? 0 : 3600)!
            let locale = Locale(identifier: index.isMultiple(of: 3) ? "de_DE" : "en_US")
            let calendar = MomentCache.calendar(timeZone: zone, locale: locale)
            XCTAssertEqual(calendar.timeZone, zone)
            XCTAssertEqual(calendar.locale, locale)
        }
    }

    func testMutatingReturnedCalendarDoesNotChangeCachedValue() {
        let zone = TimeZone(secondsFromGMT: 0)!
        let locale = Locale(identifier: "en_US")
        var calendar = MomentCache.calendar(timeZone: zone, locale: locale)
        calendar.timeZone = TimeZone(secondsFromGMT: 3600)!
        XCTAssertEqual(MomentCache.calendar(timeZone: zone, locale: locale).timeZone, zone)
    }
}
