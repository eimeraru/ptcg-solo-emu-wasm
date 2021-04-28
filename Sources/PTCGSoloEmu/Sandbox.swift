//
//  Sandbox.swift
//  PTCGSoloEmu
//
//  Created by Eimer on 2021/04/27.
//

import Foundation
import TokamakStaticHTML
import TailwindSwift
import Closswift
import TokamakHTMLFunctionBuilder

extension TailwindStyle: ClosswiftCombinable {
    
//    public var clossValue: Array<String> {
//        [self.sizing.]
//    }
}

public struct HelloView: View {
    
    public var style = TailwindStyle()
    
    public var body: some View {
        return html("")
    }
}
