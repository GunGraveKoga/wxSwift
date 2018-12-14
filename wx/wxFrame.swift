//
//  wxFrame.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxFrame: wxTopLevelWindow {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(withRect rect: Rect, title: String, parent: wxWindow? = nil, windowId: wxWindowID, style: wxWindowStyle) {
        
        let _title = _wxc_wxString_CreateUTF8(title)
        
        defer {
            _wxc_wxString_Delete(_title)
        }
        
        super.init(rawValue: _wxc_wxFrame_Create(parent?.rawValue, windowId, _title, rect.x, rect.y, rect.width, rect.height, style.rawValue))!
    }
    
    open func createStatusBarWith(numberOfFields: CInt, style: wxStatusBarStyle = .wxSTB_DEFAULT_STYLE) -> wxStatusBar? {
        return wxStatusBar(rawValue: _wxc_wxFrame_CreateStatusBar(rawValue, numberOfFields, style.rawValue))
    }
    
    open func createToolBarWith(style: wxStatusBarStyle = .wxSTB_DEFAULT_STYLE) -> wxToolBar? {
        return wxToolBar(rawValue: _wxc_wxFrame_CreateToolBar(rawValue, style.rawValue))
    }
    
    open var clientAreaOrigin: Point {
        get {
            return Point(wxPoint: _wxc_wxFrame_GetClientAreaOrigin(rawValue))!
        }
    }
    
    internal var _menuBar: wxMenuBar?
    open var menuBar: wxMenuBar? {
        get {
            guard let value = _menuBar else {
                return wxMenuBar(rawValue: _wxc_wxFrame_GetMenuBar(rawValue))
            }
            
            return value
        }
        
        set {
            _wxc_wxFrame_SetMenuBar(rawValue, newValue?.rawValue)
            _menuBar = newValue
        }
    }
    
    internal var _statusBar: wxStatusBar?
    open var statusBar: wxStatusBar? {
        get {
            guard let value = _statusBar else {
                return wxStatusBar(rawValue: _wxc_wxFrame_GetStatusBar(rawValue))
            }
            
            return value
        }
        
        set {
            _wxc_wxFrame_SetStatusBar(rawValue, newValue?.rawValue)
            _statusBar = newValue
        }
    }
    
    internal var _toolBar: wxToolBar?
    open var toolBar: wxToolBar? {
        get {
            guard let value = _toolBar else {
                return wxToolBar(rawValue: _wxc_wxFrame_GetToolBar(rawValue))
            }
            
            return value
        }
        
        set {
            _wxc_wxFrame_SetToolBar(rawValue, newValue?.rawValue)
            _toolBar = newValue
        }
    }
    
    open func restore() {
        _wxc_wxFrame_Restore(rawValue)
    }
    
    open func setStatusText(_ text: String, at index: CInt = 0) {
        text.withWxString {
            _wxc_wxFrame_SetStatusText(rawValue, $0, index)
        }
    }
    
    open func setStatusWidths(fieldsCount: CInt, fieldsWidths: [CInt]) {
        fieldsWidths.withUnsafeBufferPointer {
            _wxc_wxFrame_SetStatusWidths(rawValue, fieldsCount, $0.baseAddress)
        }
    }
}
