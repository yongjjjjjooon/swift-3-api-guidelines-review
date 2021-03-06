
typealias CLLocationDegrees = Double
typealias CLLocationAccuracy = Double
typealias CLLocationSpeed = Double
typealias CLLocationDirection = Double
struct CLLocationCoordinate2D {
  var latitude: CLLocationDegrees
  var longitude: CLLocationDegrees
  init()
  init(latitude latitude: CLLocationDegrees, longitude longitude: CLLocationDegrees)
}
typealias CLLocationDistance = Double
let kCLDistanceFilterNone: CLLocationDistance
@available(OSX 10.7, *)
let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy
let kCLLocationAccuracyBest: CLLocationAccuracy
let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy
let kCLLocationAccuracyHundredMeters: CLLocationAccuracy
let kCLLocationAccuracyKilometer: CLLocationAccuracy
let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy
@available(OSX 10.7, *)
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
@available(OSX 10.7, *)
func CLLocationCoordinate2DIsValid(_ coord: CLLocationCoordinate2D) -> Bool
@available(OSX 10.7, *)
func CLLocationCoordinate2DMake(_ latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
@available(OSX 10.6, *)
class CLLocation : NSObject, NSCopying, NSSecureCoding {
  init(latitude latitude: CLLocationDegrees, longitude longitude: CLLocationDegrees)
  init(coordinate coordinate: CLLocationCoordinate2D, altitude altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp timestamp: NSDate)
  @available(OSX 10.7, *)
  init(coordinate coordinate: CLLocationCoordinate2D, altitude altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course course: CLLocationDirection, speed speed: CLLocationSpeed, timestamp timestamp: NSDate)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  @available(OSX 10.7, *)
  var course: CLLocationDirection { get }
  @available(OSX 10.7, *)
  var speed: CLLocationSpeed { get }
  @NSCopying var timestamp: NSDate { get }
  @available(OSX 10.6, *)
  func distance(from location: CLLocation) -> CLLocationDistance
  @available(OSX 10.6, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(OSX 10.6, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.6, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
