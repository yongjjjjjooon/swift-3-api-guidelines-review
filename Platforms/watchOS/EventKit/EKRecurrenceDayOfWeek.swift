
@available(watchOS 2.0, *)
class EKRecurrenceDayOfWeek : NSObject, NSCopying {
  convenience init(_ dayOfTheWeek: EKWeekday)
  convenience init(_ dayOfTheWeek: EKWeekday, weekNumber weekNumber: Int)
  init(dayOfTheWeek dayOfTheWeek: EKWeekday, weekNumber weekNumber: Int)
  var dayOfTheWeek: EKWeekday { get }
  var weekNumber: Int { get }
  @available(watchOS 2.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
