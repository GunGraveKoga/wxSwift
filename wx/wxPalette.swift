//
//  wxPalette.swift
//  wxSwift
//
//  Created by Юрий Вовк on 15/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxPalette: wxGDIObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init() {
        super.init(rawValue: _wxc_wxPalette_CreateDefault())!
    }
    
    public init(red: UnsafePointer<UInt8>, green: UnsafePointer<UInt8>, blue: UnsafePointer<UInt8>, count: CInt) {
        super.init(rawValue: _wxc_wxPalette_CreateRGB(count, red, green, blue))!
    }
    
    open func assign(_ other: wxPalette) {
        _wxc_wxPalette_Assign(rawValue, other.rawValue)
    }
    
    override public func delete() {
        _wxc_wxPalette_Delete(rawValue)
    }
    
    open func getPixel(red: UInt8, green: UInt8, blue: UInt8) -> CInt {
        return _wxc_wxPalette_GetPixel(rawValue, red, green, blue)
    }
    
    open func getRGB(pixel: CInt) -> (Bool, (red: UInt8, green: UInt8, blue: UInt8)) {
        var red: UInt8 = 0, green: UInt8 = 0, blue: UInt8 = 0
        
        let success = withUnsafeMutablePointer(to: &red) {_red in
            return withUnsafeMutablePointer(to: &green) {_green in
                return withUnsafeMutablePointer(to: &blue) {_blue in
                    return _wxc_wxPalette_GetRGB(rawValue, pixel, _red, _green, _blue)
                }
            }
        }
        
        return (success, (red, green, blue))
    }
    
    open func isEqual(_ other: wxPalette) -> Bool {
        return _wxc_wxPalette_IsEqual(rawValue, other.rawValue)
    }
    
    public static func == (lhs: wxPalette, rhs: wxPalette) -> Bool {
        guard lhs.rawValue == rhs.rawValue else {
            return lhs.isEqual(rhs)
        }
        
        return true
    }
    
    open func isOK() -> Bool {
        return _wxc_wxPalette_IsOk(rawValue)
    }
}
