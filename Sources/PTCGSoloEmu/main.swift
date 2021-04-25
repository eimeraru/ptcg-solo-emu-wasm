import TokamakDOM
import PTCGPlayerBoard

public struct PTCGSoloEmuApp: App {

    public var body: some Scene {
        WindowGroup("PTCGSoloEmu App") {
            ContentView()
        }
    }
    
    public init() {
        
    }
}

public struct Item {
    public var isCompleted: Bool = false
    public var text: String
}

public struct ContentView: View {
//    @State public var newItem = ""
//    @State public var items = [Item]()
//
//    func addNewItem() {
//        items.append(Item(text: newItem))
//        newItem = ""
//    }

    public var body: some View {
        Tag("div", class: ["uk-button", "uk-button-primary"]) {
            Text("たいとる")
        }
    }
    
    public init() {}
}

// @main attribute is not supported in SwiftPM apps.
// See https://bugs.swift.org/browse/SR-12683 for more details.
PTCGSoloEmuApp.main()
