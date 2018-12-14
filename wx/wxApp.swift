//
//  wxApp.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public func wxGetApp() -> wxApp {
    return wxApp(rawValue: _wxc_ELJApp_GetApp())!
}

open class wxApp: wxEvtHandler {
    
    private static let _initialized: Bool = _wxc_wxc_Initialize(0, nil)
    
    public required init() {
        
        guard wxApp._initialized else {
            fatalError("Filed to initialize wxWidgets library!")
        }
        
        super.init(rawValue: _wxc_ELJApp_GetApp())!
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    open func bell() {
        _wxc_ELJApp_Bell()
    }
    
    open func dispatch() {
        _wxc_ELJApp_Dispatch()
    }
    
    open var displaySize: Size {
        get {
            return Size(wxSize: _wxc_ELJApp_DisplaySize())!
        }
    }
    
    open func enableTooltips(_ enable: Bool) {
        _wxc_ELJApp_EnableTooltips(enable)
    }
    
    open func enableTopLevelWindow(_ enable: Bool) {
        _wxc_ELJApp_EnableTopLevelWindows(enable)
    }
    
    open func exit() {
        _wxc_ELJApp_Exit()
    }
    
    open func exitMainLoop() {
        _wxc_ELJApp_ExitMainLoop()
    }
    
    open var applicationName: String {
        get {
            guard let str = String(wxString: _wxc_ELJApp_GetAppName()) else {
                return ""
            }
            
            return String(str)
        }
        
        set {
            newValue.withWxString {
                _wxc_ELJApp_SetAppName($0)
            }
        }
    }
    
    open var className: String {
        get {
            guard let str = String(wxString: _wxc_ELJApp_GetClassName()) else {
                return ""
            }
            
            return str
        }
        
        set {
            newValue.withWxString {
                _wxc_ELJApp_SetClassName($0)
            }
        }
    }
    
    open var exitOnFrameDelete: Bool {
        get {
            return _wxc_ELJApp_GetExitOnFrameDelete()
        }
        
        set {
            _wxc_ELJApp_SetExitOnFrameDelete(newValue)
        }
    }
    
    open func setPrintmode(_ mode: CInt) {
        _wxc_ELJApp_SetPrintMode(mode)
    }
    
    open func setTooltipDelay(_ ms: CLong) {
        _wxc_ELJApp_SetTooltipDelay(ms)
    }
    
    open var useBestVisual: Bool {
        get {
            return _wxc_ELJApp_GetUseBestVisual()
        }
        
        set {
            _wxc_ELJApp_SetUseBestVisual(newValue)
        }
    }
    
    open var vendorName: String {
        get {
            guard let str = String(wxString: _wxc_ELJApp_GetVendorName()) else {
                return ""
            }
            
            return str
        }
        
        set {
            newValue.withWxString {
                _wxc_ELJApp_SetVendorName($0)
            }
        }
    }
    
    open func mainLopp() {
        _wxc_ELJApp_MainLoop()
    }
    
    open func sleep(_ seconds: CInt) {
        _wxc_ELJApp_Sleep(seconds)
    }
    
    open func milliSleep(_ milliseconds: CUnsignedLong) {
        _wxc_ELJApp_MilliSleep(milliseconds)
    }
    
    open func yield() -> Bool {
        return _wxc_ELJApp_Yield()
    }
    
    open func pendig() -> Bool {
        return _wxc_ELJApp_Pending()
    }
    
    open var isTerminating: Bool {
        get {
            return _wxc_ELJApp_IsTerminating()
        }
    }
    
    open var isInitialized: Bool {
        get {
            return _wxc_ELJApp_Initialized()
        }
    }
    
    open var userName: String {
        get {
            guard let str = String(wxString: _wxc_ELJApp_GetUserName()) else {
                return ""
            }
            
            return str
        }
    }
    
    open var userHomeDirectory: String {
        get {
            return getHomeDirectory(for: userName)
        }
    }
    
    open func getHomeDirectory(for user: String) -> String {
        let _user = _wxc_wxString_CreateUTF8(user)
        
        defer {
            _wxc_wxString_Delete(_user)
        }
        
        guard let dir = _wxc_ELJApp_GetUserHome(_user) else { return "" }
        
        return String(wxString: dir)!
    }
    
    open var userID: String {
        get {
            guard let str = String(wxString: _wxc_ELJApp_GetUserId()) else {
                return ""
            }
            
            return str
        }
    }
}
