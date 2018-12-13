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

public struct Rect {
    
    public var origin: Point
    public var size: Size
    
    public var x: CInt {
        get {
            return origin.x
        }
        
        set {
            origin.x = newValue
        }
    }
    
    public var y: CInt {
        get {
            return origin.y
        }
        
        set {
            origin.y = newValue
        }
    }
    
    public var width: CInt {
        get {
            return size.width
        }
        
        set {
            size.width = newValue
        }
    }
    
    public var height: CInt {
        get {
            return size.height
        }
        
        set {
            size.height = newValue
        }
    }
    
    public init?(wxRect: CVoidPtr) {
        guard let wxRect = wxRect else {
            return nil
        }
        
        defer {
            _wxc_wxRect_Delete(wxRect)
        }
        origin = Point(x: _wxc_wxRect_GetX(wxRect), y: _wxc_wxRect_GetY(wxRect))
        size = Size(width: _wxc_wxRect_GetWidth(wxRect), height: _wxc_wxRect_GetHeight(wxRect))
    }
    
    public init(x: CInt, y: CInt, width: CInt, height: CInt) {
        origin = Point(x: x, y: y)
        size = Size(width: width, height: height)
    }
    
    public func withWxRect<Result>(_ body: (CVoidPtr) throws -> Result) rethrows -> Result {
        let wxRect = _wxc_wxRect_Create(x, y, width, height)
        
        defer {
            _wxc_wxRect_Delete(wxRect)
        }
        
        return try body(wxRect)
    }
}
