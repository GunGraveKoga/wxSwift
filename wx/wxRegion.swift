//
//  wxRegion.swift
//  wxSwift
//
//  Created by Юрий Вовк on 02/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxRegion_CreateDefault")
fileprivate func wxRegion_CreateDefault() -> CVoidPtr
internal func _wxc_wxRegion_CreateDefault() -> CVoidPtr {
    return wxRegion_CreateDefault()
}

@_silgen_name("wxRegion_CreateFromRect")
fileprivate func wxRegion_CreateFromRect(_ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_wxRegion_CreateFromRect(_ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CVoidPtr {
    return wxRegion_CreateFromRect(x, y, w, h)
}

@_silgen_name("wxRegion_Assign")
fileprivate func wxRegion_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxRegion_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxRegion_Assign(ptr, other)
}

@_silgen_name("wxRegion_ContainsPoint")
fileprivate func wxRegion_ContainsPoint(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CBool
internal func _wxc_wxRegion_ContainsPoint(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CBool {
    return wxRegion_ContainsPoint(ptr, x, y)
}

@_silgen_name("wxRegion_ContainsRect")
fileprivate func wxRegion_ContainsRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxRegion_ContainsRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxRegion_ContainsRect(ptr, x, y, w, h)
}

@_silgen_name("wxRegion_Clear")
fileprivate func wxRegion_Clear(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxRegion_Clear(_ ptr: CVoidPtr) -> Void {
    wxRegion_Clear(ptr)
}

@_silgen_name("wxRegion_Delete")
fileprivate func wxRegion_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxRegion_Delete(_ ptr: CVoidPtr) -> Void {
    wxRegion_Delete(ptr)
}

@_silgen_name("wxRegion_IsEmpty")
fileprivate func wxRegion_IsEmpty(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxRegion_IsEmpty(_ ptr: CVoidPtr) -> CBool {
    return wxRegion_IsEmpty(ptr)
}

@_silgen_name("wxRegion_GetBox")
fileprivate func wxRegion_GetBox(_ ptr: CVoidPtr, _ x: UnsafeMutableRawPointer, _ y: UnsafeMutableRawPointer, _ w: UnsafeMutableRawPointer, _ h: UnsafeMutableRawPointer) -> Void
internal func _wxc_wxRegion_GetBox(_ ptr: CVoidPtr, _ x: UnsafeMutablePointer<CInt>, _ y: UnsafeMutablePointer<CInt>, _ w: UnsafeMutablePointer<CInt>, _ h: UnsafeMutablePointer<CInt>) -> Void {
    wxRegion_GetBox(ptr, x, y, w, h)
}

@_silgen_name("wxRegion_IntersectRect")
fileprivate func wxRegion_IntersectRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxRegion_IntersectRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxRegion_IntersectRect(ptr, x ,y, w, h)
}

@_silgen_name("wxRegion_IntersectRegion")
fileprivate func wxRegion_IntersectRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool
internal func _wxc_wxRegion_IntersectRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool {
    return wxRegion_IntersectRegion(ptr, other)
}

@_silgen_name("wxRegion_SubtractRect")
fileprivate func wxRegion_SubtractRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxRegion_SubtractRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxRegion_SubtractRect(ptr, x, y, w ,h)
}

open class wxRegion: wxGDIObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public required init() {
        super.init(rawValue: _wxc_wxRegion_CreateDefault())!
    }
    
    public init(rect: Rect) {
        super.init(rawValue: _wxc_wxRegion_CreateFromRect(rect.x, rect.y, rect.width, rect.height))!
    }
    
    open func assign(_ other: wxRegion) {
        _wxc_wxRegion_Assign(rawValue, other.rawValue)
    }
    
    open func contains(_ point: Point) -> Bool {
        return _wxc_wxRegion_ContainsPoint(rawValue, point.x, point.y)
    }
    
    open func contains(_ rect: Rect) -> Bool {
        return _wxc_wxRegion_ContainsRect(rawValue, rect.x, rect.y, rect.width, rect.height)
    }
    
    open func clear() {
        _wxc_wxRegion_Clear(rawValue)
    }
    
    override open func delete() {
        guard rawValue != nil else {
            return
        }
        
        _wxc_wxRegion_Delete(rawValue)
        rawValue = nil
    }
    
    open func isEmpty() -> Bool {
        return _wxc_wxRegion_IsEmpty(rawValue)
    }
    
    open func getBox() -> Rect {
        var x: wxCoord = 0, y: wxCoord = 0, w: wxCoord = 0, h: wxCoord = 0
        
        getBox(x: &x, y: &y, width: &w, height: &h)
        
        return Rect(x: x, y: y, width: w, height: h)
    }
    
    open func getBox(x: inout wxCoord, y: inout wxCoord, width: inout wxCoord, height: inout wxCoord) {
        _wxc_wxRegion_GetBox(rawValue, &x, &y, &width, &height)
    }
    
    @discardableResult
    open func formIntersection(_ rect: Rect) -> Bool {
        return _wxc_wxRegion_IntersectRect(rawValue, rect.x, rect.y, rect.width, rect.height)
    }
    
    @discardableResult
    open func formIntersection(_ region: wxRegion) -> Bool {
        return _wxc_wxRegion_IntersectRegion(rawValue, region.rawValue)
    }
    
    @discardableResult
    open func subtract(_ rect: Rect) -> Bool {
        return _wxc_wxRegion_SubtractRect(rawValue, rect.x, rect.y, rect.width, rect.height)
    }
}
