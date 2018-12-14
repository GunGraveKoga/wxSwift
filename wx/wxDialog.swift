//
//  wxDialog.swift
//  wxSwift
//
//  Created by Yury Vovk on 14/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxDialog_Create")
fileprivate func wxDialog_Create(_ parent: CVoidPtr, _ windowId: CInt, _ text: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ style: CLong) -> CVoidPtr
internal func _wxc_wxDialog_Create(_ parent: CVoidPtr, _ windowId: CInt, _ text: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ style: CLong) -> CVoidPtr {
    return wxDialog_Create(parent, windowId, text, x, y, w, h, style)
}

@_silgen_name("wxDialog_EndModal")
fileprivate func wxDialog_EndModal(_ ptr: CVoidPtr, _ rc: CInt) -> Void
internal func _wxc_wxDialog_EndModal(_ ptr: CVoidPtr, _ rc: CInt) -> Void {
    wxDialog_EndModal(ptr, rc)
}

@_silgen_name("wxDialog_GetReturnCode")
fileprivate func wxDialog_GetReturnCode(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxDialog_GetReturnCode(_ ptr: CVoidPtr) -> CInt {
    return wxDialog_GetReturnCode(ptr)
}

@_silgen_name("wxDialog_IsModal")
fileprivate func wxDialog_IsModal(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxDialog_IsModal(_ ptr: CVoidPtr) -> CBool {
    return wxDialog_IsModal(ptr)
}

@_silgen_name("wxDialog_SetReturnCode")
fileprivate func wxDialog_SetReturnCode(_ ptr: CVoidPtr, _ rc: CInt) -> Void
internal func _wxc_wxDialog_SetReturnCode(_ ptr: CVoidPtr, _ rc: CInt) -> Void {
    wxDialog_SetReturnCode(ptr, rc)
}

@_silgen_name("wxDialog_ShowModal")
fileprivate func wxDialog_ShowModal(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxDialog_ShowModal(_ ptr: CVoidPtr) -> CInt {
    return wxDialog_ShowModal(ptr)
}

open class wxDialog: wxTopLevelWindow {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(withRect rect: Rect, title: String, parent: wxWindow? = nil, windowId: wxWindowID, style: wxWindowStyle = .wxDEFAULT_DIALOG_STYLE) {
        let _title = _wxc_wxString_CreateUTF8(title)
        
        defer {
            _wxc_wxString_Delete(_title)
        }
        
        super.init(rawValue: _wxc_wxDialog_Create(parent?.rawValue, windowId.rawValue, _title, rect.x, rect.y, rect.width, rect.height, style.rawValue))!
    }
    
    public init(withTitle title: String, parent: wxWindow? = nil, position: Point = wxDefaultPosition, size: Size = wxDefaultSize, windowId: wxWindowID, style: wxWindowStyle = .wxDEFAULT_DIALOG_STYLE) {
        
        let _title = _wxc_wxString_CreateUTF8(title)
        
        defer {
            _wxc_wxString_Delete(_title)
        }
        
        super.init(rawValue: _wxc_wxDialog_Create(parent?.rawValue, windowId.rawValue, _title, position.x, position.y, size.width, size.height, style.rawValue))!
    }
    
    open func endModalWith(returnCode: wxWindowID) {
        _wxc_wxDialog_EndModal(rawValue, returnCode.rawValue)
    }
    
    open var returnCode: wxWindowID {
        get {
            return wxWindowID(rawValue: _wxc_wxDialog_GetReturnCode(rawValue))
        }
        
        set {
            _wxc_wxDialog_SetReturnCode(rawValue, newValue.rawValue)
        }
    }
    
    open var isModal: Bool {
        get {
            return _wxc_wxDialog_IsModal(rawValue)
        }
    }
    
    open func showModal() -> wxWindowID {
        return wxWindowID(rawValue: _wxc_wxDialog_ShowModal(rawValue))
    }
}

public extension wxWindowStyle {
    public static let wxDIALOG_NO_PARENT = wxWindowStyle(rawValue: 0x00000020)
    public static let wxDEFAULT_DIALOG_STYLE: wxWindowStyle = [.wxCAPTION, .wxSYSTEM_MENU, wxCLOSE_BOX]
}

public extension wxWindowExtraStyle {
    public static let wxDIALOG_EX_CONTEXTHELP: wxWindowExtraStyle = .wxWS_EX_CONTEXTHELP
    public static let wxDIALOG_EX_METAL = wxWindowExtraStyle(rawValue: 0x00000040)
}
