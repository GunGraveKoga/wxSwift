//
//  wxWindow.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxWindow_AddChild")
fileprivate func wxWindow_AddChild(_ ptr: CVoidPtr, _ child: CVoidPtr) -> Void
internal func _wxc_wxWindow_AddChild(_ ptr: CVoidPtr, _ child: CVoidPtr) -> Void {
    wxWindow_AddChild(ptr, child)
}

@_silgen_name("wxWindow_AddConstraintReference")
fileprivate func wxWindow_AddConstraintReference(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxWindow_AddConstraintReference(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxWindow_AddConstraintReference(ptr, other)
}

@_silgen_name("wxWindow_CaptureMouse")
fileprivate func wxWindow_CaptureMouse(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_CaptureMouse(_ ptr: CVoidPtr) -> Void {
    wxWindow_CaptureMouse(ptr)
}

@_silgen_name("wxWindow_Center")
fileprivate func wxWindow_Center(_ ptr: CVoidPtr, _ direction: CInt) -> Void
internal func _wxc_wxWindow_Center(_ ptr: CVoidPtr, _ direction: CInt) -> Void {
    wxWindow_Center(ptr, direction)
}

@_silgen_name("wxWindow_CenterOnParent")
fileprivate func wxWindow_CenterOnParent(_ ptr: CVoidPtr, _ direction: CInt) -> Void
internal func _wxc_wxWindow_CenterOnParent(_ ptr: CVoidPtr, _ direction: CInt) -> Void {
    wxWindow_CenterOnParent(ptr, direction)
}

@_silgen_name("wxWindow_ClearBackground")
fileprivate func wxWindow_ClearBackground(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_ClearBackground(_ ptr: CVoidPtr) -> Void {
    wxWindow_ClearBackground(ptr)
}

@_silgen_name("wxWindow_ClientToScreen")
fileprivate func wxWindow_ClientToScreen(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxWindow_ClientToScreen(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxWindow_ClientToScreen(ptr, x, y)
}

@_silgen_name("wxWindow_Close")
fileprivate func wxWindow_Close(_ ptr: CVoidPtr, _ force: CBool) -> CBool
internal func _wxc_wxWindow_Close(_ ptr: CVoidPtr, _ force: CBool) -> CBool {
    return wxWindow_Close(ptr, force)
}

@_silgen_name("wxWindow_ConvertDialogToPixels")
fileprivate func wxWindow_ConvertDialogToPixels(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxWindow_ConvertDialogToPixels(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxWindow_ConvertDialogToPixels(ptr, x, y)
}

@_silgen_name("wxWindow_ConvertPixelsToDialog")
fileprivate func wxWindow_ConvertPixelsToDialog(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxWindow_ConvertPixelsToDialog(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxWindow_ConvertPixelsToDialog(ptr, x, y)
}

@_silgen_name("wxWindow_Create")
fileprivate func wxWindow_Create(_ prt: CVoidPtr, _ _id: CInt, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ stl: CInt) -> CVoidPtr
internal func _wxc_wxWindow_Create(_ prt: CVoidPtr, _ _id: CInt, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ stl: CInt) -> CVoidPtr {
    return wxWindow_Create(prt, _id, x, y, w, h, stl)
}

@_silgen_name("wxWindow_DeleteRelatedConstraints")
fileprivate func wxWindow_DeleteRelatedConstraints(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_DeleteRelatedConstraints(_ ptr: CVoidPtr) -> Void {
    wxWindow_DeleteRelatedConstraints(ptr)
}

@_silgen_name("wxWindow_Destroy")
fileprivate func wxWindow_Destroy(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Destroy(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Destroy(ptr)
}

@_silgen_name("wxWindow_DestroyChildren")
fileprivate func wxWindow_DestroyChildren(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_DestroyChildren(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Destroy(ptr)
}

@_silgen_name("wxWindow_Disable")
fileprivate func wxWindow_Disable(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Disable(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Disable(ptr)
}

@_silgen_name("wxWindow_Enable")
fileprivate func wxWindow_Enable(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Enable(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Enable(ptr)
}

@_silgen_name("wxWindow_FindFocus")
fileprivate func wxWindow_FindFocus(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_FindFocus(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_FindFocus(ptr)
}

@_silgen_name("wxWindow_FindWindow")
fileprivate func wxWindow_FindWindow(_ ptr: CVoidPtr, _ name: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_FindWindow(_ ptr: CVoidPtr, _ name: CVoidPtr) -> CVoidPtr {
    return wxWindow_FindWindow(ptr, name)
}

@_silgen_name("wxWindow_Fit")
fileprivate func wxWindow_Fit(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_Fit(_ ptr: CVoidPtr) -> Void {
    wxWindow_Fit(ptr)
}

public typealias wxWindowID = CInt

open class wxWindow: wxEvtHandler {
    
    internal lazy var _children: [wxWindow] = [wxWindow]()
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(withRect rect: wxRect, parent: wxWindow? = nil, wxWindow windowID: wxWindowID, style: CInt) {
        super.init(rawValue: _wxc_wxWindow_Create(parent?.rawValue, windowID, rect.x, rect.y, rect.width, rect.height, style))!
    }
    
    @discardableResult
    public func destroy() -> Bool {
        let res = _wxc_wxWindow_Destroy(rawValue)
        
        if res {
            _children.removeAll()
        }
        
        return res
    }
    
    @discardableResult
    public func destroyChildren() -> Bool {
        let res = _wxc_wxWindow_DestroyChildren(rawValue)
        
        if res {
            _children.removeAll()
        }
        
        return res
    }
    
    public func addChild(_ child: wxWindow) {
        _wxc_wxWindow_AddChild(rawValue, child.rawValue)
        _children.append(child)
    }
    
    public func addConstraintReference(_ other: wxWindow) {
        _wxc_wxWindow_AddConstraintReference(rawValue, other.rawValue)
    }
    
    public func captureMouse() {
        _wxc_wxWindow_CaptureMouse(rawValue)
    }
    
    public func center(_ direction: CInt) {
        _wxc_wxWindow_Center(rawValue, direction)
    }
    
    public func centeronParent(_ direction: CInt) {
        _wxc_wxWindow_CenterOnParent(rawValue, direction)
    }
    
    public func clearBackground() {
        _wxc_wxWindow_ClearBackground(rawValue)
    }
    
    public func clientToScreen(_ point: wxPoint) -> wxPoint {
        return wxPoint(rawValue: _wxc_wxWindow_ClientToScreen(rawValue, point.x, point.y))!
    }
    
    @discardableResult
    public func close(force _force:Bool = false) -> Bool {
        return _wxc_wxWindow_Close(rawValue, _force)
    }
    
    public func convertDialogToPixels(_ point: wxPoint) -> wxPoint {
        return wxPoint(rawValue: _wxc_wxWindow_ConvertDialogToPixels(rawValue, point.x, point.y))!
    }
    
    public func convertPixelsToDialog(_ point: wxPoint) -> wxPoint {
        return wxPoint(rawValue: _wxc_wxWindow_ConvertPixelsToDialog(rawValue, point.x, point.y))!
    }
    
    public func deleteRelatedConstraints() {
        _wxc_wxWindow_DeleteRelatedConstraints(rawValue)
    }
    
    @discardableResult
    public func enable() -> Bool {
        return _wxc_wxWindow_Enable(rawValue)
    }
    
    @discardableResult
    public func disable() -> Bool {
        return _wxc_wxWindow_Disable(rawValue)
    }
    
    public func findFocus() -> wxWindow? {
        return wxWindow(rawValue: _wxc_wxWindow_FindFocus(rawValue))
    }
    
    public func findWindow<T: wxWindow>(_ name: String) -> T? {
        return T(rawValue: _wxc_wxWindow_FindWindow(rawValue, wxString(string: name).rawValue))
    }
    
    public func fit() {
        _wxc_wxWindow_Fit(rawValue)
    }
}
