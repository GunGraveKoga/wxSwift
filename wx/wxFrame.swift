//
//  wxFrame.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxFrame_Create")
fileprivate func wxFrame_Create(_ parent: CVoidPtr, _ winID: CInt, _ title: CVoidPtr, _ posX: CInt, _ posY: CInt, _ width: CInt, _ height: CInt, _ style: CInt) -> CVoidPtr
internal func _wxc_wxFrame_Create(_ parent: CVoidPtr, _ winID: CInt, _ title: CVoidPtr, _ posX: CInt, _ posY: CInt, _ width: CInt, _ height: CInt, _ style: CInt) -> CVoidPtr {
    return wxFrame_Create(parent, winID, title, posX, posY, width, height, style)
}

@_silgen_name("wxFrame_CreateStatusBar")
fileprivate func wxFrame_CreateStatusBar(_ ptr: CVoidPtr, _ number: CInt, _ style: CLong) -> CVoidPtr
internal func _wxc_wxFrame_CreateStatusBar(_ ptr: CVoidPtr, _ number: CInt, _ style: CLong) -> CVoidPtr {
    return wxFrame_CreateStatusBar(ptr, number, style)
}

@_silgen_name("wxFrame_CreateToolBar")
fileprivate func wxFrame_CreateToolBar(_ ptr: CVoidPtr, _ style: CLong) -> CVoidPtr
internal func _wxc_wxFrame_CreateToolBar(_ ptr: CVoidPtr, _ style: CLong) -> CVoidPtr {
    return wxFrame_CreateToolBar(ptr, style)
}

@_silgen_name("wxFrame_GetClientAreaOrigin")
fileprivate func wxFrame_GetClientAreaOrigin(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFrame_GetClientAreaOrigin(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFrame_GetClientAreaOrigin(ptr)
}

open class wxFrame: wxTopLevelWindow {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(withRect rect: Rect, title: String, parent: wxWindow? = nil, windowId: wxWindowID, style: CInt) {
        
        let _title = _wxc_wxString_CreateUTF8(title)
        
        defer {
            _wxc_wxString_Delete(_title)
        }
        
        super.init(rawValue: _wxc_wxFrame_Create(parent?.rawValue, windowId, _title, rect.x, rect.y, rect.width, rect.height, style))!
    }
    
    open func createStatusBarWith(numberOfFields: CInt, style: wxStatusBar.Style = .wxSTB_DEFAULT_STYLE) -> wxStatusBar? {
        return wxStatusBar(rawValue: _wxc_wxFrame_CreateStatusBar(rawValue, numberOfFields, style.rawValue))
    }
    
    open func createToolBarWith(style: wxStatusBar.Style = .wxSTB_DEFAULT_STYLE) -> wxToolBar? {
        return wxToolBar(rawValue: _wxc_wxFrame_CreateToolBar(rawValue, style.rawValue))
    }
    
    open var clientAreaOrigin: Point {
        get {
            return Point(wxPoint: _wxc_wxFrame_GetClientAreaOrigin(rawValue))!
        }
    }
}
