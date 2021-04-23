import TokamakDOM
import PTCGPlayerBoard

struct PTCGSoloEmuApp: App {

    @State var count: Int = 0
    @State var playerBoard: PTCGPlayerBoard!
    
    var body: some Scene {
        WindowGroup("Tokamak App") {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
    }
}

// @main attribute is not supported in SwiftPM apps.
// See https://bugs.swift.org/browse/SR-12683 for more details.
PTCGSoloEmuApp.main()
