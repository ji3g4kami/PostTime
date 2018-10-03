import XCTest
@testable import PostTime

class PostTimeTests: XCTestCase {
    
    var nowDate: Date!
    var nowTimeInterval: TimeInterval!
    
    override func setUp() {
        super.setUp()
        nowDate = Date()
        nowTimeInterval = nowDate.timeIntervalSince1970
    }
    
    override func tearDown() {
        nowDate = nil
        nowTimeInterval = nil
    }

    func testPostedSecondesAgo() {
        // given and when
        let second = Int.random(in: 1...10)
        let postTime = PostTime(postDate: nowTimeInterval - Double(second))
        
        // then
        XCTAssertEqual(postTime.howLongAgo(), "\(second) sec.")
    }
    
    func testPostedMinutesAgo() {
        // given and when
        let minutes = Int.random(in: 1...59)
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .minute, value: -(minutes), to: nowDate)?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)

        // then
        XCTAssertEqual(postTime.howLongAgo(), "\(minutes) min.")
    }

    func testPostedHoursAgo() {
        // given and when
        let hours = Int.random(in: 1...24)
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .hour, value: -(hours), to: nowDate)?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)


        // then
        XCTAssertEqual(postTime.howLongAgo(), "\(hours) hr.")
    }
    
    func testPostedADayAgo() {
        // given and when
        let days = 1
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .day, value: -(days), to: Date())?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)
        
        // then
        XCTAssertEqual(postTime.howLongAgo(), "A day")
    }

    func testPostedDaysAgo() {
        // given and when
        let days = Int.random(in: 2...6)
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .day, value: -(days), to: Date())?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)

        // then
        XCTAssertEqual(postTime.howLongAgo(), "\(days) days")
    }
    
    func testPostedAWeekAgo() {
        // given and when
        let weeks = 1
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .weekOfYear, value: -(weeks), to: nowDate)?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)
        
        // then
        XCTAssertEqual(postTime.howLongAgo(), "A week.")
    }

    func testPostedWeeksAgo() {
        // given and when
        let weeks = Int.random(in: 2...4)
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .weekOfYear, value: -(weeks), to: nowDate)?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)
        
        // then
        XCTAssertEqual(postTime.howLongAgo(), "\(weeks) weeks.")
    }
    
    func testPostedAMonthAgo() {
        // given and when
        let months = 1
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .month, value: -(months), to: nowDate)?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)
        
        // then
        XCTAssertEqual(postTime.howLongAgo(), "A month.")
    }
    
    func testPostedMonthsAgo() {
        // given and when
        let months = Int.random(in: 2...11)
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .month, value: -(months), to: nowDate)?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)
        
        // then
        XCTAssertEqual(postTime.howLongAgo(), "\(months) months.")
    }
    
    func testPostedAYearAgo() {
        // given and when
        let years = 1
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .year, value: -(years), to: nowDate)?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)
        
        // then
        XCTAssertEqual(postTime.howLongAgo(), "A year.")
    }
    
    func testPostedYearsAgo() {
        // given and when
        let years = Int.random(in: 2...5)
        guard let postDayTimeInterval = Calendar.current.date(byAdding: .year, value: -(years), to: nowDate)?.timeIntervalSince1970 else { return }
        let postTime = PostTime(postDate: postDayTimeInterval)
        
        // then
        XCTAssertEqual(postTime.howLongAgo(), "\(years) years.")
    }

}
