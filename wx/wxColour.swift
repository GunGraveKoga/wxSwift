//
//  wxColour.swift
//  wxSwift
//
//  Created by Юрий Вовк on 11/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxColour: wxObject, wxCopying {
    
    public static var nullColour = wxColour(rawValue: _wxc_Null_Colour())!
    public static var blackColour = wxColour(rawValue: _wxc_wxColour_CreateFromStock(0))!
    public static var whiteColour = wxColour(rawValue: _wxc_wxColour_CreateFromStock(1))!
    public static var redColour = wxColour(rawValue: _wxc_wxColour_CreateFromStock(2))!
    public static var blueColour = wxColour(rawValue: _wxc_wxColour_CreateFromStock(3))!
    public static var greenColour = wxColour(rawValue: _wxc_wxColour_CreateFromStock(4))!
    public static var cyanColour = wxColour(rawValue: _wxc_wxColour_CreateFromStock(5))!
    public static var lightGreyColour = wxColour(rawValue: _wxc_wxColour_CreateFromStock(6))!
    
    public class func validName(_ name: String) -> Bool {
        return name.withWxString {
            return _wxc_wxColour_ValidName($0)
        }
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public required init() {
        super.init(rawValue: _wxc_wxColour_CreateEmpty())!
    }
    
    public init(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        super.init(rawValue: _wxc_wxColour_CreateRGB(red, green, blue, alpha))!
    }
    
    public init(name: String) {
        let _name = _wxc_wxString_CreateUTF8(name)
        
        defer {
            _wxc_wxString_Delete(_name)
        }
        super.init(rawValue: _wxc_wxColour_CreateByName(_name))!
    }
    
    deinit {
        _wxc_wxColour_Delete(rawValue)
    }
    
    open var isOK: Bool {
        get {
            return _wxc_wxColour_IsOk(rawValue)
        }
    }
    
    open func copy() -> Self {
        let copy = type(of: self).init()
        
        _wxc_wxColour_Copy(rawValue, copy.rawValue)
        
        return copy
    }
    
    open func set(byName name: String) {
        name.withWxString {
            _wxc_wxColour_SetByName(rawValue, $0)
        }
    }
    
    open func set(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        _wxc_wxColour_Set(rawValue, red, green, blue, alpha)
    }
    
    open func set(other: wxColour) {
        _wxc_wxColour_Assign(rawValue, other.rawValue)
    }
    
    open var red: UInt8 {
        get {
            return _wxc_wxColour_Red(rawValue)
        }
    }
    
    open var green: UInt8 {
        get {
            return _wxc_wxColour_Green(rawValue)
        }
    }
    
    open var blue: UInt8 {
        get {
            return _wxc_wxColour_Blue(rawValue)
        }
    }
    
    open var alpha: UInt8 {
        get {
            return _wxc_wxColour_Alpha(rawValue)
        }
    }
}
