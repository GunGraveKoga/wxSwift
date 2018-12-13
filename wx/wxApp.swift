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

public final class wxApp: wxEvtHandler {
    
    private static var _initialized: Bool = false
    
    public init() {
        
        if !wxApp._initialized {
            wxApp._initialized = _wxc_wxc_Initialize(0, nil)
            
            guard wxApp._initialized else {
                fatalError("Filed to initialize wxWidgets library!")
            }
        }
        
        super.init(rawValue: _wxc_ELJApp_GetApp())!
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public func bell() {
        _wxc_ELJApp_Bell()
    }
    
    public func dispatch() {
        _wxc_ELJApp_Dispatch()
    }
    
    public var displaySize: Size {
        get {
            return Size(wxSize: _wxc_ELJApp_DisplaySize())!
        }
    }
    
    public func enableTooltips(_ enable: Bool) {
        _wxc_ELJApp_EnableTooltips(enable)
    }
    
    public func enableTopLevelWindow(_ enable: Bool) {
        _wxc_ELJApp_EnableTopLevelWindows(enable)
    }
    
    public func exit() {
        _wxc_ELJApp_Exit()
    }
    
    public func exitMainLoop() {
        _wxc_ELJApp_ExitMainLoop()
    }
    
    public var applicationName: String {
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
    
    public var className: String {
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
    
    public var exitOnFrameDelete: Bool {
        get {
            return _wxc_ELJApp_GetExitOnFrameDelete()
        }
        
        set {
            _wxc_ELJApp_SetExitOnFrameDelete(newValue)
        }
    }
    
    public func setPrintmode(_ mode: CInt) {
        _wxc_ELJApp_SetPrintMode(mode)
    }
    
    public func setTooltipDelay(_ ms: CLong) {
        _wxc_ELJApp_SetTooltipDelay(ms)
    }
    
    public var useBestVisual: Bool {
        get {
            return _wxc_ELJApp_GetUseBestVisual()
        }
        
        set {
            _wxc_ELJApp_SetUseBestVisual(newValue)
        }
    }
    
    public var vendorName: String {
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
    
    public func mainLopp() {
        _wxc_ELJApp_MainLoop()
    }
    
    public func sleep(_ seconds: CInt) {
        _wxc_ELJApp_Sleep(seconds)
    }
    
    public func milliSleep(_ milliseconds: CUnsignedLong) {
        _wxc_ELJApp_MilliSleep(milliseconds)
    }
    
    public func yield() -> Bool {
        return _wxc_ELJApp_Yield()
    }
    
    public func pendig() -> Bool {
        return _wxc_ELJApp_Pending()
    }
    
    public var isTerminating: Bool {
        get {
            return _wxc_ELJApp_IsTerminating()
        }
    }
    
    public var isInitialized: Bool {
        get {
            return _wxc_ELJApp_Initialized()
        }
    }
    
    public var userName: String {
        get {
            guard let str = String(wxString: _wxc_ELJApp_GetUserName()) else {
                return ""
            }
            
            return str
        }
    }
    
    public var userHomeDirectory: String {
        get {
            return getHomeDirectory(for: userName)
        }
    }
    
    public func getHomeDirectory(for user: String) -> String {
        let _user = _wxc_wxString_CreateUTF8(user)
        
        defer {
            _wxc_wxString_Delete(_user)
        }
        
        guard let dir = _wxc_ELJApp_GetUserHome(_user) else { return "" }
        
        return String(wxString: dir)!
    }
    
    public var userID: String {
        get {
            guard let str = String(wxString: _wxc_ELJApp_GetUserId()) else {
                return ""
            }
            
            return str
        }
    }
}
