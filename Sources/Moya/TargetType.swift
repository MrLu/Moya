import Foundation

/// The protocol used to define the specifications necessary for a `MoyaProvider`.
public protocol TargetType {

    /// The target's base `URL`.
    var baseURL: URL { get }

    /// The path to be appended to `baseURL` to form the full `URL`.
    var path: String { get }

    /// The HTTP method used in the request.
    var method: Moya.Method { get }

    /// Provides stub data for use in testing.
    var sampleData: Data { get }

    /// The type of HTTP task to be performed.
    var task: Task { get }

    /// A Boolean value determining whether the embedded target performs Alamofire validation. Defaults to `false`.
    var validate: Bool { get }

    /// The headers to be used in the request.
    var headers: [String: String]? { get }
    
    /// The query
    var query: String? {get}
}

public extension TargetType {
    /// Defaults to `false`.
    var validate: Bool {
        return false
    }
    
    /// The query
    var query: String? {
        return nil
    }
}
