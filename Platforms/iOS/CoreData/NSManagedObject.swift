
struct NSSnapshotEventType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var undoInsertion: NSSnapshotEventType { get }
  static var undoDeletion: NSSnapshotEventType { get }
  static var undoUpdate: NSSnapshotEventType { get }
  static var rollback: NSSnapshotEventType { get }
  static var refresh: NSSnapshotEventType { get }
  static var mergePolicy: NSSnapshotEventType { get }
}
@available(iOS 3.0, *)
class NSManagedObject : Object {
  @available(iOS 3.0, *)
  class func contextShouldIgnoreUnmodeledPropertyChanges() -> Bool
  init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?)
  unowned(unsafe) var managedObjectContext: @sil_unmanaged NSManagedObjectContext? { get }
  var entity: NSEntityDescription { get }
  var objectID: NSManagedObjectID { get }
  var isInserted: Bool { get }
  var isUpdated: Bool { get }
  var isDeleted: Bool { get }
  @available(iOS 5.0, *)
  var hasChanges: Bool { get }
  @available(iOS 7.0, *)
  var hasPersistentChangedValues: Bool { get }
  var isFault: Bool { get }
  @available(iOS 3.0, *)
  func hasFaultFor(relationshipNamed key: String) -> Bool
  @available(iOS 8.3, *)
  func objectIDsFor(relationshipNamed key: String) -> [NSManagedObjectID]
  @available(iOS 3.0, *)
  var faultingState: Int { get }
  func willAccessValueFor(key key: String?)
  func didAccessValueFor(key key: String?)
  func willChangeValueFor(key key: String)
  func didChangeValueFor(key key: String)
  func willChangeValueFor(key inKey: String, withSetMutation inMutationKind: KeyValueSetMutationKind, usingObjects inObjects: Set<Object>)
  func didChangeValueFor(key inKey: String, withSetMutation inMutationKind: KeyValueSetMutationKind, usingObjects inObjects: Set<Object>)
  func awakeFromFetch()
  func awakeFromInsert()
  @available(iOS 3.0, *)
  func awakeFrom(snapshotEvents flags: NSSnapshotEventType)
  @available(iOS 3.0, *)
  func prepareForDeletion()
  func willSave()
  func didSave()
  @available(iOS 3.0, *)
  func willTurnIntoFault()
  func didTurnIntoFault()
  func valueFor(key key: String) -> AnyObject?
  func setValue(value: AnyObject?, forKey key: String)
  func primitiveValueFor(key key: String) -> AnyObject?
  func setPrimitiveValue(value: AnyObject?, forKey key: String)
  func committedValuesFor(keys keys: [String]?) -> [String : AnyObject]
  func changedValues() -> [String : AnyObject]
  @available(iOS 5.0, *)
  func changedValuesForCurrentEvent() -> [String : AnyObject]
  func validateValue(value: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey key: String) throws
  func validateForDelete() throws
  func validateForInsert() throws
  func validateForUpdate() throws
  convenience init()
}