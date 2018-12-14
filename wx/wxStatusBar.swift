//
//  wxStatusBar.swift
//  wxSwift
//
//  Created by Юрий Вовк on 14/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public final class wxStatusBar: wxWindow {
    
    public struct Style: OptionSet {
        public let rawValue: CLong
        
        public static let wxSTB_SIZEGRIP = Style(rawValue: 0x0010)
        public static let wxSTB_SHOW_TIPS = Style(rawValue: 0x0020)
        public static let wxSTB_ELLIPSIZE_START = Style(rawValue: 0x0040)
        public static let wxSTB_ELLIPSIZE_MIDDLE = Style(rawValue: 0x0080)
        public static let wxSTB_ELLIPSIZE_END = Style(rawValue: 0x0100)
        public static let wxSTB_DEFAULT_STYLE: Style = [.wxSTB_SIZEGRIP, .wxSTB_ELLIPSIZE_END, .wxSTB_SHOW_TIPS, Style(rawValue: wxWindow.WindowStyleFlag.wxFULL_REPAINT_ON_RESIZE.rawValue)]
        public static let wxST_SIZEGRIP: Style = .wxSTB_SIZEGRIP
        
        public init(rawValue: CLong) {
            self.rawValue = rawValue
        }
    }
}
