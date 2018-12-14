//
//  wxStatusBar.swift
//  wxSwift
//
//  Created by Юрий Вовк on 14/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public struct wxStatusBarStyle: OptionSet {
    public let rawValue: CLong
    
    public static let wxSTB_SIZEGRIP = wxStatusBarStyle(rawValue: 0x0010)
    public static let wxSTB_SHOW_TIPS = wxStatusBarStyle(rawValue: 0x0020)
    public static let wxSTB_ELLIPSIZE_START = wxStatusBarStyle(rawValue: 0x0040)
    public static let wxSTB_ELLIPSIZE_MIDDLE = wxStatusBarStyle(rawValue: 0x0080)
    public static let wxSTB_ELLIPSIZE_END = wxStatusBarStyle(rawValue: 0x0100)
    public static let wxSTB_DEFAULT_STYLE: wxStatusBarStyle = [.wxSTB_SIZEGRIP, .wxSTB_ELLIPSIZE_END, .wxSTB_SHOW_TIPS, wxStatusBarStyle(rawValue: wxWindowStyle.wxFULL_REPAINT_ON_RESIZE.rawValue)]
    public static let wxST_SIZEGRIP: wxStatusBarStyle = .wxSTB_SIZEGRIP
    
    public init(rawValue: CLong) {
        self.rawValue = rawValue
    }
}

open class wxStatusBar: wxWindow {
    
    
}
