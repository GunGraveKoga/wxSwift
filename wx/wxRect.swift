//
//  wxRect.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxRect_Create")
fileprivate func wxRect_Create(_ x: CInt, _ y: CInt, _ width: CInt, _ height: CInt) -> CVoidPtr
internal func _wxc_wxRect_Create(_ x: CInt, _ y: CInt, _ width: CInt, _ height: CInt) -> CVoidPtr {
    return wxRect_Create(x, y, width, height)
}

@_silgen_name("wxRect_Delete")
fileprivate func wxRect_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxRect_Delete(_ ptr: CVoidPtr) -> Void {
    wxRect_Delete(ptr)
}

@_silgen_name("wxRect_GetX")
fileprivate func wxRect_GetX(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxRect_GetX(_ ptr: CVoidPtr) -> CInt {
    return wxRect_GetX(ptr)
}

@_silgen_name("wxRect_GetY")
fileprivate func wxRect_GetY(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxRect_GetY(_ ptr: CVoidPtr) -> CInt {
    return wxRect_GetY(ptr)
}

@_silgen_name("wxRect_GetWidth")
fileprivate func wxRect_GetWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxRect_GetWidth(_ ptr: CVoidPtr) -> CInt {
    return wxRect_GetWidth(ptr)
}

@_silgen_name("wxRect_GetHeight")
fileprivate func wxRect_GetHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxRect_GetHeight(_ ptr: CVoidPtr) -> CInt {
    return wxRect_GetHeight(ptr)
}

@_silgen_name("wxRect_SetX")
fileprivate func wxRect_SetX(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxRect_SetX(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxRect_SetX(ptr, value)
}

@_silgen_name("wxRect_SetY")
fileprivate func wxRect_SetY(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxRect_SetY(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxRect_SetY(ptr, value)
}

@_silgen_name("wxRect_SetWidth")
fileprivate func wxRect_SetWidth(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxRect_SetWidth(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxRect_SetWidth(ptr, value)
}

@_silgen_name("wxRect_SetHeight")
fileprivate func wxRect_SetHeight(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxRect_SetHeight(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxRect_SetHeight(ptr, value)
}

public final class wxRect: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(x: CInt, y: CInt, width: CInt, height: CInt) {
        super.init(rawValue: _wxc_wxRect_Create(x, y, width, height))!
    }
    
    deinit {
        _wxc_wxRect_Delete(rawValue)
    }
    
    public var x: CInt {
        get {
            return _wxc_wxRect_GetX(rawValue)
        }
        
        set {
            _wxc_wxRect_SetX(rawValue, newValue)
        }
    }
    
    public var y: CInt {
        get {
            return _wxc_wxRect_GetY(rawValue)
        }
        
        set {
            _wxc_wxRect_SetY(rawValue, newValue)
        }
    }
    
    public var width: CInt {
        get {
            return _wxc_wxRect_GetWidth(rawValue)
        }
        
        set {
            _wxc_wxRect_SetWidth(rawValue, newValue)
        }
    }
    
    public var height: CInt {
        get {
            return _wxc_wxRect_GetHeight(rawValue)
        }
        
        set {
            _wxc_wxRect_SetHeight(rawValue, newValue)
        }
    }
}
