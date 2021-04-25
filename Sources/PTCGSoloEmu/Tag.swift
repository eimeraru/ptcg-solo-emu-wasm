//
//  Element.swift
//  PTCGSoloEmu
//
//  Created by evdwarf on 2021/04/24.
//

import Foundation
import TokamakCore
import TokamakStaticHTML

public struct Tag<Content>: View, AnyHTML {
    
    public var innerHTML: String?
    
    public var tag: String
    
    public var attributes: [HTMLAttribute : String]
    
    public let content: Content
    
    public var body: Never {
      neverBody("HTML")
    }
}

public extension Tag where Content: StringProtocol {
    init(_ tag: String,
         classNames: Array<String> = [],
         attr attributes: [HTMLAttribute: String] = [:],
         content: Content
    ) {
        self.tag = tag
        self.attributes = attributes.merging(
            ["class" : classNames.joined(separator: " ")],
            uniquingKeysWith: { (new, _) in new })
        self.content = content
        innerHTML = String(content)
    }
}

extension Tag: ParentView where Content: View {
    
    public init(_ tag: String,
                class classNames: Array<String> = [],
                attr attributes: [HTMLAttribute : String] = [:],
                @ViewBuilder content: () -> Content
    ) {
        self.tag = tag
        self.attributes = attributes.merging(
            ["class" : classNames.joined(separator: " ")],
            uniquingKeysWith: { (new, _) in new })
        self.content = content()
        innerHTML = nil
    }
    
    public var body: some View {
        return HTML.init(tag, attributes, content: {
            self.content
        })
    }
    
    public var children: [AnyView] {
        [AnyView(content)]
    }
}
