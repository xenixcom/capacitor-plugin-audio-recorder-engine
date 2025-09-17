import Foundation

@objc public class RecorderEngine: NSObject {
    @objc public func echo(_ value: String) -> String {
        let result = "\(value) from ios"
        print("Echo: \(result)")
        return result
    }
}
