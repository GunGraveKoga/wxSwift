//
//  wxColour.swift
//  wxSwift
//
//  Created by Юрий Вовк on 11/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxColour_CreateRGB")
fileprivate func wxColour_CreateRGB(_ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> CVoidPtr
internal func _wxc_wxColour_CreateRGB(_ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> CVoidPtr {
    return wxColour_CreateRGB(r, g, b, a)
}

@_silgen_name("wxColour_CreateEmpty")
fileprivate func wxColour_CreateEmpty() -> CVoidPtr
internal func _wxc_wxColour_CreateEmpty() -> CVoidPtr {
    return wxColour_CreateEmpty()
}

@_silgen_name("wxColour_CreateByName")
fileprivate func wxColour_CreateByName(_ name: CVoidPtr) -> CVoidPtr
internal func _wxc_wxColour_CreateByName(_ name: CVoidPtr) -> CVoidPtr {
    return wxColour_CreateByName(name)
}

@_silgen_name("wxColour_CreateFromStock")
fileprivate func wxColour_CreateFromStock(_ _id: CInt) -> CVoidPtr
internal func _wxc_wxColour_CreateFromStock(_ _id: CInt) -> CVoidPtr {
    return wxColour_CreateFromStock(_id)
}

@_silgen_name("wxColour_Delete")
fileprivate func wxColour_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxColour_Delete(_ ptr: CVoidPtr) -> Void {
    wxColour_Delete(ptr)
}

@_silgen_name("wxColour_IsOk")
fileprivate func wxColour_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxColour_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxColour_IsOk(ptr)
}

@_silgen_name("wxColour_Copy")
fileprivate func wxColour_Copy(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxColour_Copy(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxColour_Copy(ptr, other)
}

@_silgen_name("wxColour_ValidName")
fileprivate func wxColour_ValidName(_ name: CVoidPtr) -> CBool
internal func _wxc_wxColour_ValidName(_ name: CVoidPtr) -> CBool {
    return wxColour_ValidName(name)
}

@_silgen_name("wxColour_SetByName")
fileprivate func wxColour_SetByName(_ ptr: CVoidPtr, _ name: CVoidPtr) -> Void
internal func _wxc_wxColour_SetByName(_ ptr: CVoidPtr, _ name: CVoidPtr) -> Void {
    wxColour_SetByName(ptr, name)
}

@_silgen_name("wxColour_Set")
fileprivate func wxColour_Set(_ ptr: CVoidPtr, _ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> Void
internal func _wxc_wxColour_Set(_ ptr: CVoidPtr, _ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> Void {
    wxColour_Set(ptr, r, g, b, a)
}

@_silgen_name("wxColour_Assign")
fileprivate func wxColour_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxColour_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxColour_Assign(ptr, other)
}

@_silgen_name("wxColour_Alpha")
fileprivate func wxColour_Alpha(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxColour_Alpha(_ ptr: CVoidPtr) -> UInt8 {
    return wxColour_Alpha(ptr)
}

@_silgen_name("wxColour_Blue")
fileprivate func wxColour_Blue(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxColour_Blue(_ ptr: CVoidPtr) -> UInt8 {
    return wxColour_Blue(ptr)
}

@_silgen_name("wxColour_Green")
fileprivate func wxColour_Green(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxColour_Green(_ ptr: CVoidPtr) -> UInt8 {
    return wxColour_Green(ptr)
}

@_silgen_name("wxColour_Red")
fileprivate func wxColour_Red(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxColour_Red(_ ptr: CVoidPtr) -> UInt8 {
    return wxColour_Red(ptr)
}

@_silgen_name("Null_Colour")
fileprivate func Null_Colour() -> CVoidPtr
internal func _wxc_Null_Colour() -> CVoidPtr {
    return Null_Colour()
}

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
