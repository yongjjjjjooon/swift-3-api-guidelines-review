
var kCMSimpleQueueError_AllocationFailed: OSStatus { get }
var kCMSimpleQueueError_RequiredParameterMissing: OSStatus { get }
var kCMSimpleQueueError_ParameterOutOfRange: OSStatus { get }
var kCMSimpleQueueError_QueueIsFull: OSStatus { get }
class CMSimpleQueue {
}
@available(tvOS 5.0, *)
func CMSimpleQueueGetTypeID() -> CFTypeID
@available(tvOS 5.0, *)
func CMSimpleQueueCreate(_ allocator: CFAllocator?, _ capacity: Int32, _ queueOut: UnsafeMutablePointer<CMSimpleQueue?>) -> OSStatus
@available(tvOS 5.0, *)
func CMSimpleQueueEnqueue(_ queue: CMSimpleQueue, _ element: UnsafePointer<Void>) -> OSStatus
@available(tvOS 5.0, *)
func CMSimpleQueueDequeue(_ queue: CMSimpleQueue) -> UnsafePointer<Void>
@available(tvOS 5.0, *)
func CMSimpleQueueGetHead(_ queue: CMSimpleQueue) -> UnsafePointer<Void>
@available(tvOS 5.0, *)
func CMSimpleQueueReset(_ queue: CMSimpleQueue) -> OSStatus
@available(tvOS 5.0, *)
func CMSimpleQueueGetCapacity(_ queue: CMSimpleQueue) -> Int32
@available(tvOS 5.0, *)
func CMSimpleQueueGetCount(_ queue: CMSimpleQueue) -> Int32
