
class TimeZone : Object, Copying, SecureCoding {
  var name: String { get }
  @NSCopying var data: Data { get }
  func secondsFromGMTFor(aDate: Date) -> Int
  func abbreviationFor(aDate: Date) -> String?
  func isDaylightSavingTimeFor(aDate: Date) -> Bool
  @available(OSX 10.5, *)
  func daylightSavingTimeOffsetFor(aDate: Date) -> TimeInterval
  @available(OSX 10.5, *)
  func nextDaylightSavingTimeTransitionAfter(aDate: Date) -> Date?
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension TimeZone {
  class func system() -> TimeZone
  class func resetSystemTimeZone()
  class func defaultTimeZone() -> TimeZone
  class func setDefaultTimeZone(aTimeZone: TimeZone)
  class func local() -> TimeZone
  class func knownTimeZoneNames() -> [String]
  class func abbreviationDictionary() -> [String : String]
  @available(OSX 10.6, *)
  class func setAbbreviationDictionary(dict: [String : String])
  @available(OSX 10.6, *)
  class func timeZoneDataVersion() -> String
  var secondsFromGMT: Int { get }
  var abbreviation: String? { get }
  var isDaylightSavingTime: Bool { get }
  @available(OSX 10.5, *)
  var daylightSavingTimeOffset: TimeInterval { get }
  @available(OSX 10.5, *)
  @NSCopying var nextDaylightSavingTimeTransition: Date? { get }
  var description: String { get }
  func isEqualTo(aTimeZone: TimeZone) -> Bool
  @available(OSX 10.5, *)
  func localizedName(style: TimeZoneNameStyle, locale: Locale?) -> String?
}
enum TimeZoneNameStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case standard
  case shortStandard
  case daylightSaving
  case shortDaylightSaving
  case generic
  case shortGeneric
}
extension TimeZone {
  init?(name tzName: String)
  init?(name tzName: String, data aData: Data?)
  convenience init(forSecondsFromGMT seconds: Int)
  convenience init?(abbreviation: String)
}
@available(OSX 10.5, *)
let systemTimeZoneDidChangeNotification: String