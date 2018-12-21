//
//  wxValidator.swift
//  wxSwift
//
//  Created by Юрий Вовк on 02/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxValidator_Create")
fileprivate func wxValidator_Create() -> CVoidPtr
internal func _wxc_wxValidator_Create() -> CVoidPtr {
    return wxValidator_Create()
}

@_silgen_name("wxValidator_Delete")
fileprivate func wxValidator_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxValidator_Delete(_ ptr: CVoidPtr) -> Void {
    wxValidator_Delete(ptr)
}

@_silgen_name("wxValidator_GetWindow")
fileprivate func wxValidator_GetWindow(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxValidator_GetWindow(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxValidator_GetWindow(ptr)
}

@_silgen_name("wxValidator_SetWindow")
fileprivate func wxValidator_SetWindow(_ ptr: CVoidPtr, _ window: CVoidPtr) -> Void
internal func _wxc_wxValidator_SetWindow(_ ptr: CVoidPtr, _ window: CVoidPtr) -> Void {
    wxValidator_SetWindow(ptr, window)
}

open class wxValidator: wxEvtHandler {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public required init() {
        super.init(rawValue: _wxc_wxValidator_Create())!
    }
    
    public override func delete() {
        guard rawValue != nil else {
            return
        }
        
        _wxc_wxValidator_Delete(rawValue)
        rawValue = nil
    }
    
    internal var _window: wxWindow?
    open var window: wxWindow? {
        get {
            return getWindow()
        }
        
        set {
            setWindow(newValue)
        }
    }
    
    open func getWindow<T: wxWindow>() -> T? {
        guard _window != nil else {
            return T(rawValue: _wxc_wxValidator_GetWindow(rawValue))
        }
        
        return _window as? T
    }
    
    open func setWindow(_ window: wxWindow?) {
        _wxc_wxValidator_SetWindow(rawValue, window?.rawValue)
        _window = window
    }
}
