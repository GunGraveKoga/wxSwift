//
//  wxTopLevelWindow.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxTopLevelWindow_EnableCloseButton")
fileprivate func wxTopLevelWindow_EnableCloseButton(_ ptr: CVoidPtr, _ enable: CBool) -> CBool
internal func _wxc_wxTopLevelWindow_EnableCloseButton(_ ptr: CVoidPtr, _ enable: CBool) -> CBool {
    return wxTopLevelWindow_EnableCloseButton(ptr, enable)
}

@_silgen_name("wxTopLevelWindow_GetDefaultItem")
fileprivate func wxTopLevelWindow_GetDefaultItem(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxTopLevelWindow_GetDefaultItem(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxTopLevelWindow_GetDefaultItem(ptr)
}

@_silgen_name("wxTopLevelWindow_GetIcon")
fileprivate func wxTopLevelWindow_GetIcon(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxTopLevelWindow_GetIcon(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxTopLevelWindow_GetIcon(ptr)
}

@_silgen_name("wxTopLevelWindow_GetTitle")
fileprivate func wxTopLevelWindow_GetTitle(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxTopLevelWindow_GetTitle(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxTopLevelWindow_GetTitle(ptr)
}

open class wxTopLevelWindow: wxWindow {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    @discardableResult
    public func enableCloseButton(_ enable: Bool) -> Bool {
        return _wxc_wxTopLevelWindow_EnableCloseButton(rawValue, enable)
    }
    
    public func getDefaultButton<T: wxButton>() -> T? {
        return T(rawValue: _wxc_wxTopLevelWindow_GetDefaultItem(rawValue))
    }
    
    public var defaultIcon: wxIcon? {
        get {
            return wxIcon(rawValue: _wxc_wxTopLevelWindow_GetIcon(rawValue))
        }
    }
    
    public var defaultItem: wxWindow? {
        get {
            return wxWindow(rawValue: _wxc_wxTopLevelWindow_GetDefaultItem(rawValue))
        }
    }
    
    public var title: String? {
        get {
            return String(wxString: _wxc_wxTopLevelWindow_GetTitle(rawValue))
        }
    }
}
