//
//  wxIcon.swift
//  wxSwift
//
//  Created by Yury Vovk on 13/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxIcon: wxGDIObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init() {
        super.init(rawValue: _wxc_wxIcon_CreateDefault())!
    }
    
    public init(fromFile fileName: String, type: wxBitmapType, size: Size = wxDefaultSize) {
        let _fileName = _wxc_wxString_CreateUTF8(fileName)
        
        defer {
            _wxc_wxString_Delete(_fileName)
        }
        
        super.init(rawValue: _wxc_wxIcon_CreateLoad(_fileName, type.rawValue, size.width, size.height))!
    }
    
    public init(fromXPM data: UnsafePointer<UInt8>) {
        super.init(rawValue: _wxc_wxIcon_FromXPM(data))!
    }
    
    override public func delete() {
        if let rawValue = rawValue {
            _wxc_wxIcon_Delete(rawValue)
        }
    }
    
    override public func safeDelete() {
        if let rawValue = rawValue {
            _wxc_wxIcon_SafeDelete(rawValue)
        }
    }
    
    public func isStatic() -> Bool {
        return _wxc_wxIcon_IsStatic(rawValue)
    }
    
    open func assign(_ other: wxIcon) {
        _wxc_wxIcon_Assign(rawValue, other.rawValue)
    }
    
    open func copyFrom(bitmap: wxBitmap) {
        _wxc_wxIcon_CopyFromBitmap(rawValue, bitmap.rawValue)
    }
    
    open var depth: CInt {
        get {
            return _wxc_wxIcon_GetDepth(rawValue)
        }
        
        set {
            _wxc_wxIcon_SetDepth(rawValue, newValue)
        }
    }
    
    open var height: CInt {
        get {
            return _wxc_wxIcon_GetHeight(rawValue)
        }
        
        set {
            _wxc_wxIcon_SetHeight(rawValue, newValue)
        }
    }
    
    open var width: CInt {
        get {
            return _wxc_wxIcon_GetWidth(rawValue)
        }
        
        set {
            _wxc_wxIcon_SetWidth(rawValue, newValue)
        }
    }
    
    open func isEqual(_ other: wxIcon) -> Bool {
        return _wxc_wxIcon_IsEqual(rawValue, other.rawValue)
    }
    
    public static func == (lhs: wxIcon, rhs: wxIcon) -> Bool {
        guard lhs.rawValue == rhs.rawValue else {
            return lhs.isEqual(rhs)
        }
        
        return true
    }
    
    open func loadFile(name: String, type: wxBitmapType, size: Size = wxDefaultSize) -> Bool {
        return name.withWxString {
            return _wxc_wxIcon_Load(rawValue, $0, type.rawValue, size.width, size.height)
        }
    }
    
    open func isOK() -> Bool {
        return _wxc_wxIcon_IsOk(rawValue)
    }
}
