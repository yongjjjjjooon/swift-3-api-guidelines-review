
enum NSTextBlockValueType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case absoluteValueType
  case percentageValueType
}
enum NSTextBlockDimension : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case width
  case minimumWidth
  case maximumWidth
  case height
  case minimumHeight
  case maximumHeight
}
enum NSTextBlockLayer : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case padding
  case border
  case margin
}
enum NSTextBlockVerticalAlignment : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case topAlignment
  case middleAlignment
  case bottomAlignment
  case baselineAlignment
}
enum NSTextTableLayoutAlgorithm : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case automaticLayoutAlgorithm
  case fixedLayoutAlgorithm
}
class NSTextBlock : Object, Coding, Copying {
  init()
  func setValue(val: CGFloat, type: NSTextBlockValueType, forDimension dimension: NSTextBlockDimension)
  func valueFor(dimension: NSTextBlockDimension) -> CGFloat
  func valueTypeFor(dimension: NSTextBlockDimension) -> NSTextBlockValueType
  func setContentWidth(val: CGFloat, type: NSTextBlockValueType)
  var contentWidth: CGFloat { get }
  var contentWidthValueType: NSTextBlockValueType { get }
  func setWidth(val: CGFloat, type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer, edge: RectEdge)
  func setWidth(val: CGFloat, type: NSTextBlockValueType, forLayer layer: NSTextBlockLayer)
  func widthFor(layer: NSTextBlockLayer, edge: RectEdge) -> CGFloat
  func widthValueTypeFor(layer: NSTextBlockLayer, edge: RectEdge) -> NSTextBlockValueType
  var verticalAlignment: NSTextBlockVerticalAlignment
  @NSCopying var backgroundColor: NSColor?
  func setBorderColor(color: NSColor?, forEdge edge: RectEdge)
  func setBorderColor(color: NSColor?)
  func borderColorFor(edge: RectEdge) -> NSColor?
  func rectForLayoutAt(startingPoint: Point, in rect: Rect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> Rect
  func boundsRectFor(contentRect contentRect: Rect, in rect: Rect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> Rect
  func drawBackground(frame frameRect: Rect, in controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
}
class NSTextTableBlock : NSTextBlock {
  init(table: NSTextTable, startingRow row: Int, rowSpan: Int, startingColumn col: Int, columnSpan colSpan: Int)
  var table: NSTextTable { get }
  var startingRow: Int { get }
  var rowSpan: Int { get }
  var startingColumn: Int { get }
  var columnSpan: Int { get }
  convenience init()
  init?(coder aDecoder: Coder)
}
class NSTextTable : NSTextBlock {
  var numberOfColumns: Int
  var layoutAlgorithm: NSTextTableLayoutAlgorithm
  var collapsesBorders: Bool
  var hidesEmptyCells: Bool
  func rectFor(block: NSTextTableBlock, layoutAt startingPoint: Point, in rect: Rect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> Rect
  func boundsRectFor(block: NSTextTableBlock, contentRect: Rect, in rect: Rect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> Rect
  func drawBackgroundFor(block: NSTextTableBlock, withFrame frameRect: Rect, in controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
  init()
  init?(coder aDecoder: Coder)
}