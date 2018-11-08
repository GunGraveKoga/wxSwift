//
//  wxSize.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxSize_Create")
fileprivate func wxSize_Create(_ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_wxSize_Create(_ w: CInt, _ h: CInt) -> CVoidPtr {
    return wxSize_Create(w, h)
}

@_silgen_name("wxSize_Delete")
fileprivate func wxSize_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxSize_Delete(_ ptr: CVoidPtr) -> Void {
    wxSize_Delete(ptr)
}

@_silgen_name("wxSize_GetHeight")
fileprivate func wxSize_GetHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxSize_GetHeight(_ ptr: CVoidPtr) -> CInt {
    return wxSize_GetHeight(ptr)
}

@_silgen_name("wxSize_GetWidth")
fileprivate func wxSize_GetWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxSize_GetWidth(_ ptr: CVoidPtr) -> CInt {
    return wxSize_GetWidth(ptr)
}

@_silgen_name("wxSize_SetHeight")
fileprivate func wxSize_SetHeight(_ ptr: CVoidPtr, _ h: CInt) -> Void
internal func _wxc_wxSize_SetHeight(_ ptr: CVoidPtr, _ h: CInt) -> Void {
    return wxSize_SetHeight(ptr, h)
}

@_silgen_name("wxSize_SetWidth")
fileprivate func wxSize_SetWidth(_ ptr: CVoidPtr, _ w: CInt) -> Void
internal func _wxc_wxSize_SetWidth(_ ptr: CVoidPtr, _ w: CInt) -> Void {
    return wxSize_SetWidth(ptr, w)
}

public final class wxSize: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(width: CInt, height: CInt) {
        super.init(rawValue: _wxc_wxSize_Create(width, height))!
    }
    
    deinit {
        _wxc_wxSize_Delete(rawValue)
    }
    
    public var width: CInt {
        get {
            return _wxc_wxSize_GetWidth(rawValue)
        }
        
        set {
            _wxc_wxSize_SetWidth(rawValue, newValue)
        }
    }
    
    public var height: CInt {
        get {
            return _wxc_wxSize_GetHeight(rawValue)
        }
        
        set {
            _wxc_wxSize_SetHeight(rawValue, newValue)
        }
    }
}
