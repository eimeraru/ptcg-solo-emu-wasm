import TokamakDOM
import PTCGPlayerBoard
import TokamakHTMLFunctionBuilder
import Closswift
import Foundation
import TokamakCore
import TailwindSwift

public struct Props {
    @State var name: String = ""
}
public var SomeView = { (props: Props) in
    html(props.name, content: "")
}

public struct PTCGSoloEmuApp: App {
    @State public var sum = 0
    @State var name: String = ""
    
    public init() {}
    
    public var body: some Scene {
        WindowGroup("PTCGSoloEmu App") {
            ContentView()
        }
    }
}

let url = "https://i2.wp.com/neetola.com/wp-content/uploads/2020/01/sanshoku-cheez-gyudon.jpg?w=500&ssl=1"
public let ChatView = { (title: String, content: String) in
    html("div",
         attributes: ["class" : closs(
                        "p-6",
                        "\(Tailwind.Margin.all(5))",
                        "max-w-sm",
                        "bg-white",
                        "rounded-xl",
                        "shadow-md",
                        "flex",
                        "items-center",
                        "space-x-4")]) {
        html("div", attributes: ["class" : "flex-shrink-0"])
        html("img", attributes: ["class" : "h-12 w-12", "src" : url])
        html("div") {
            html("div", attributes: ["class" : "text-xl font-medium text-black"], content: title)
            html("p", attributes: ["class" : "text-gray-500"], content: content)
        }
    }
}

public struct ContentView: View {
    public var body: some View {
        return ChatView("たいとる", "はろー")
    }
}

// @main attribute is not supported in SwiftPM apps.
// See https://bugs.swift.org/browse/SR-12683 for more details.
PTCGSoloEmuApp.main()

public extension View {

    func apply() -> Self {
        self
    }
}
