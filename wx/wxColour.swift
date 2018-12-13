//
//  wxColour.swift
//  wxSwift
//
//  Created by Юрий Вовк on 11/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public final class wxColour: wxObject {
    
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
    
    public init() {
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
    
    public var isOK: Bool {
        get {
            return _wxc_wxColour_IsOk(rawValue)
        }
    }
    
    public func copy() -> wxColour {
        var other: CVoidPtr?
        
        _wxc_wxColour_Copy(rawValue, &other)
        
        return wxColour(rawValue: other!)!
    }
    
    public func set(byName name: String) {
        name.withWxString {
            _wxc_wxColour_SetByName(rawValue, $0)
        }
    }
    
    public func set(red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8) {
        _wxc_wxColour_Set(rawValue, red, green, blue, alpha)
    }
    
    public func set(other: wxColour) {
        _wxc_wxColour_Assign(rawValue, other.rawValue)
    }
    
    public var red: UInt8 {
        get {
            return _wxc_wxColour_Red(rawValue)
        }
    }
    
    public var green: UInt8 {
        get {
            return _wxc_wxColour_Green(rawValue)
        }
    }
    
    public var blue: UInt8 {
        get {
            return _wxc_wxColour_Blue(rawValue)
        }
    }
    
    public var alpha: UInt8 {
        get {
            return _wxc_wxColour_Alpha(rawValue)
        }
    }
}
