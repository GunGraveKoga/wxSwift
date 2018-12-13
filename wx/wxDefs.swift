//
//  wxDefs.swift
//  wxSwift
//
//  Created by Yury Vovk on 13/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public typealias wxWindowID = CInt

public struct wxOrientation: OptionSet {
    public let rawValue: CInt
    
    public static let wxHORIZONTAL = wxOrientation(rawValue: 0x0004)
    public static let wxVERTICAL = wxOrientation(rawValue: 0x0008)
    public static let wxBOTH: wxOrientation = [.wxVERTICAL, wxVERTICAL]
    public static let wxORIENTATION_MASK: wxOrientation = .wxBOTH
    
    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
}

public struct wxBorder: OptionSet {
    public let rawValue: Int32
    
    public static let wxBORDER_DEFAULT = wxBorder(rawValue: 0)
    public static let wxBORDER_NONE = wxBorder(rawValue: 0x00200000)
    public static let wxBORDER_STATIC = wxBorder(rawValue: 0x01000000)
    public static let wxBORDER_SIMPL = wxBorder(rawValue: 0x02000000)
    public static let wxBORDER_RAISED = wxBorder(rawValue: 0x04000000)
    public static let wxBORDER_SUNKEN = wxBorder(rawValue: 0x08000000)
    @available(*, deprecated)
    public static let wxBORDER_DOUBLE = wxBorder(rawValue: 0x10000000)
    public static let wxBORDER_THEME = wxBorder(rawValue: 0x10000000)
    public static let wxBORDER_MASK = wxBorder(rawValue: 0x1f200000)
    
    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
}

public let wxDEFAULT_CONTROL_BORDER: wxBorder = .wxBORDER_SUNKEN
