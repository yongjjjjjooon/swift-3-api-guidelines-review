
struct NSFileVersionAddingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var byMoving: NSFileVersionAddingOptions { get }
}
struct NSFileVersionReplacingOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var byMoving: NSFileVersionReplacingOptions { get }
}
@available(OSX 10.7, *)
class NSFileVersion : NSObject {
  class func currentVersionOfItem(at url: NSURL) -> NSFileVersion?
  class func otherVersionsOfItem(at url: NSURL) -> [NSFileVersion]?
  class func unresolvedConflictVersionsOfItem(at url: NSURL) -> [NSFileVersion]?
  @available(OSX 10.10, *)
  class func getNonlocalVersionsOfItem(at url: NSURL, completionHandler completionHandler: ([NSFileVersion]?, NSError?) -> Void)
  /*not inherited*/ init?(ofItemAt url: NSURL, forPersistentIdentifier persistentIdentifier: AnyObject)
  @available(OSX 10.7, *)
  class func addOfItem(at url: NSURL, withContentsOf contentsURL: NSURL, options options: NSFileVersionAddingOptions = []) throws -> NSFileVersion
  @available(OSX 10.7, *)
  class func temporaryDirectoryURLForNewVersionOfItem(at url: NSURL) -> NSURL
  @NSCopying var url: NSURL { get }
  var localizedName: String? { get }
  var localizedNameOfSavingComputer: String? { get }
  @NSCopying var modificationDate: NSDate? { get }
  var persistentIdentifier: NSCoding { get }
  var isConflict: Bool { get }
  var isResolved: Bool
  @available(OSX 10.7, *)
  var isDiscardable: Bool
  @available(OSX 10.10, *)
  var hasLocalContents: Bool { get }
  @available(OSX 10.10, *)
  var hasThumbnail: Bool { get }
  func replaceItem(at url: NSURL, options options: NSFileVersionReplacingOptions = []) throws -> NSURL
  func remove() throws
  class func removeOtherVersionsOfItem(at url: NSURL) throws
}
