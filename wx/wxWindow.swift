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

public typealias wxWindowID = CInt

open class wxWindow: wxEvtHandler {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public func addChild(_ child: wxWindow) {
        _wxc_wxWindow_AddChild(rawValue, child.rawValue)
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
}
