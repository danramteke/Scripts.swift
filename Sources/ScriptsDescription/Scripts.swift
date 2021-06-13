import Foundation
/// import ScriptDescription
///
/// let scripts = Scripts(
///   name: "MyScripts",
///   scripts: [
///     .script("clean", "rm -fr .build; rm -fr tmp"),
///     .script("build", "swift build"),
///     .script("test", "swift test"),
///     .script("clean", "rm -fr"),
///     .script("icons", "swift run icons"),
///     .target("pototato", MyTarget.pototato)
///     .command("star", StarCommand())
///   ]
/// )


/// import ScriptDescription
///
/// let scripts = Scripts(
///   name: "MyScripts",
///   scripts: [
///     "clean": "rm -fr .build; rm -fr tmp",
///     "build": "swift build",
///     "test": "swift test",
///     "clean", "rm -fr",
///     "icons", "swift run icons",
///     "stew", "swift run --package-path swift-scripts stew"
///     "stew", .swift(path: "swift-scripts", target: "stew")
///     "pototato": MyTarget.pototato,
///     "star": StarCommand(),
///   ]
/// )

public struct Scripts {
	public let name: String
	public let scripts: [String: Script]
	public init(name: String, scripts: [String: Script]) {
		self.name = name
		self.scripts = scripts
	}
}

public enum Script: ExpressibleByStringLiteral {

	case text(String)
//	 case target(T)

	public init(extendedGraphemeClusterLiteral value: Self.StringLiteralType) {
		self = .text(value)
	}

	public init(stringLiteral value: Self.StringLiteralType) {
		self = .text(value)
	}

	public typealias StringLiteralType = String
	public typealias ExtendedGraphemeClusterLiteralType = String
}

