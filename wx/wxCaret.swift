//
//  wxCaret.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxCaret_Create")
fileprivate func wxCaret_Create(_ window: CVoidPtr, _ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_wxCaret_Create(_ window: CVoidPtr, _ w: CInt, _ h: CInt) -> CVoidPtr {
    return wxCaret_Create(window, w, h)
}

@_silgen_name("wxCaret_GetBlinkTime")
fileprivate func wxCaret_GetBlinkTime() -> CInt
internal func _wxc_wxCaret_GetBlinkTime() -> CInt {
    return wxCaret_GetBlinkTime()
}

@_silgen_name("wxCaret_GetPosition")
fileprivate func wxCaret_GetPosition(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxCaret_GetPosition(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxCaret_GetPosition(ptr)
}

@_silgen_name("wxCaret_GetSize")
fileprivate func wxCaret_GetSize(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxCaret_GetSize(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxCaret_GetSize(ptr)
}

@_silgen_name("wxCaret_GetWindow")
fileprivate func wxCaret_GetWindow(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxCaret_GetWindow(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxCaret_GetWindow(ptr)
}

@_silgen_name("wxCaret_Hide")
fileprivate func wxCaret_Hide(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxCaret_Hide(_ ptr: CVoidPtr) -> Void {
    wxCaret_Hide(ptr)
}

@_silgen_name("wxCaret_IsOk")
fileprivate func wxCaret_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxCaret_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxCaret_IsOk(ptr)
}

@_silgen_name("wxCaret_IsVisible")
fileprivate func wxCaret_IsVisible(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxCaret_IsVisible(_ ptr: CVoidPtr) -> CBool {
    return wxCaret_IsVisible(ptr)
}

@_silgen_name("wxCaret_Move")
fileprivate func wxCaret_Move(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void
internal func _wxc_wxCaret_Move(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void {
    return wxCaret_Move(ptr, x, y)
}

@_silgen_name("wxCaret_SetBlinkTime")
fileprivate func wxCaret_SetBlinkTime(_ time: CInt) -> Void
internal func _wxc_wxCaret_SetBlinkTime(_ time: CInt) -> Void {
    return wxCaret_SetBlinkTime(time)
}

@_silgen_name("wxCaret_SetSize")
fileprivate func wxCaret_SetSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxCaret_SetSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void {
    wxCaret_SetSize(ptr, w, h)
}

@_silgen_name("wxCaret_Show")
fileprivate func wxCaret_Show(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxCaret_Show(_ ptr: CVoidPtr) -> Void {
    wxCaret_Show(ptr)
}

public final class wxCaret: wxObject {
    
    public class var blinkTime: CInt {
        get {
            return _wxc_wxCaret_GetBlinkTime()
        }
        
        set {
            _wxc_wxCaret_SetBlinkTime(newValue)
        }
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(window: wxWindow, width: CInt, height: CInt) {
        super.init(rawValue: _wxc_wxCaret_Create(window.rawValue, width, height))!
    }
    
    public var position: wxPoint {
        get {
            return wxPoint(rawValue: _wxc_wxCaret_GetPosition(rawValue))!
        }
    }
    
    public var size: wxSize {
        get {
            return wxSize(rawValue: _wxc_wxCaret_GetSize(rawValue))!
        }
        
        set {
            _wxc_wxCaret_SetSize(rawValue, newValue.width, newValue.height)
        }
    }
    
    public var window: wxWindow {
        get {
            return wxWindow(rawValue: _wxc_wxCaret_GetWindow(rawValue))!
        }
    }
    
    public func hide() {
        _wxc_wxCaret_Hide(rawValue)
    }
    
    public var isOK: Bool {
        get {
            return _wxc_wxCaret_IsOk(rawValue)
        }
    }
    
    public var isVisible: Bool {
        get {
            return _wxc_wxCaret_IsVisible(rawValue)
        }
    }
    
    public func move(to point: wxPoint) {
        _wxc_wxCaret_Move(rawValue, point.x, point.y)
    }
    
    public func show() {
        _wxc_wxCaret_Show(rawValue)
    }
}
