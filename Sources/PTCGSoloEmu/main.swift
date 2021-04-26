import TokamakDOM
import PTCGPlayerBoard
import TokamakHTMLFunctionBuilder
import Closswift

public struct PTCGSoloEmuApp: App {
    @State public var sum = 0
    
    public init() {}
    
    public var body: some Scene {
        WindowGroup("PTCGSoloEmu App") {
            html("button",
                 attributes: ["class": closs("uk-button", "uk-default-button")],
                 listeners: [.click: { e in
                    sum += 1
                 }]) {
                Text(sum % 2 == 0 ? "hello world" : "bye bye")
            }
        }
    }
}

// @main attribute is not supported in SwiftPM apps.
// See https://bugs.swift.org/browse/SR-12683 for more details.
PTCGSoloEmuApp.main()
