//
//  wxApp.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxc_Initialize")
fileprivate func wxc_Initialize(_ argc: CInt, _ argv: CWideCharPtrPtr) -> CBool
internal func _wxc_wxc_Initialize(_ argc: CInt, _ argv: CWideCharPtrPtr) -> CBool {
    return wxc_Initialize(argc, argv)
}

@_silgen_name("ELJApp_GetApp")
fileprivate func ELJApp_GetApp() -> CVoidPtr
internal func _wxc_ELJApp_GetApp() -> CVoidPtr {
    return ELJApp_GetApp()
}

@_silgen_name("ELJApp_Bell")
fileprivate func ELJApp_Bell() -> Void
internal func _wxc_ELJApp_Bell() -> Void {
    ELJApp_Bell()
}

@_silgen_name("ELJApp_Dispatch")
fileprivate func ELJApp_Dispatch() -> Void
internal func _wxc_ELJApp_Dispatch() -> Void {
    ELJApp_Dispatch()
}

@_silgen_name("ELJApp_DisplaySize")
fileprivate func ELJApp_DisplaySize() -> CVoidPtr
internal func _wxc_ELJApp_DisplaySize() -> CVoidPtr {
    return ELJApp_DisplaySize()
}

@_silgen_name("ELJApp_EnableTooltips")
fileprivate func ELJApp_EnableTooltips(_ flag: CBool) -> Void
internal func _wxc_ELJApp_EnableTooltips(_ flag: CBool) -> Void {
    ELJApp_EnableTooltips(flag)
}

@_silgen_name("ELJApp_EnableTopLevelWindows")
fileprivate func ELJApp_EnableTopLevelWindows(_ flag: CBool) -> Void
internal func _wxc_ELJApp_EnableTopLevelWindows(_ flag: CBool) -> Void {
    ELJApp_EnableTopLevelWindows(flag)
}

@_silgen_name("ELJApp_Exit")
fileprivate func ELJApp_Exit() -> Void
internal func _wxc_ELJApp_Exit() -> Void {
    ELJApp_Exit()
}

@_silgen_name("ELJApp_ExitMainLoop")
fileprivate func ELJApp_ExitMainLoop() -> Void
internal func _wxc_ELJApp_ExitMainLoop() -> Void {
    ELJApp_ExitMainLoop()
}

@_silgen_name("ELJApp_GetAppName")
fileprivate func ELJApp_GetAppName() -> CVoidPtr
internal func _wxc_ELJApp_GetAppName() -> CVoidPtr {
    return ELJApp_GetAppName()
}

@_silgen_name("ELJApp_GetClassName")
fileprivate func ELJApp_GetClassName() -> CVoidPtr
internal func _wxc_ELJApp_GetClassName() -> CVoidPtr {
    return ELJApp_GetClassName()
}

@_silgen_name("ELJApp_SetAppName")
fileprivate func ELJApp_SetAppName(_ str: CVoidPtr) -> Void
internal func _wxc_ELJApp_SetAppName(_ str: CVoidPtr) -> Void {
    ELJApp_SetAppName(str)
}

@_silgen_name("ELJApp_SetClassName")
fileprivate func ELJApp_SetClassName(_ str: CVoidPtr) -> Void
internal func _wxc_ELJApp_SetClassName(_ str: CVoidPtr) -> Void {
    ELJApp_SetClassName(str)
}

@_silgen_name("ELJApp_GetExitOnFrameDelete")
fileprivate func ELJApp_GetExitOnFrameDelete() -> CBool
internal func _wxc_ELJApp_GetExitOnFrameDelete() -> CBool {
    return ELJApp_GetExitOnFrameDelete()
}

@_silgen_name("ELJApp_SetExitOnFrameDelete")
fileprivate func ELJApp_SetExitOnFrameDelete(_ flag: CBool) -> Void
internal func _wxc_ELJApp_SetExitOnFrameDelete(_ flag: CBool) -> Void {
    ELJApp_SetExitOnFrameDelete(flag)
}

@_silgen_name("ELJApp_SetPrintMode")
fileprivate func ELJApp_SetPrintMode(_ mode: CInt) -> Void
internal func _wxc_ELJApp_SetPrintMode(_ mode: CInt) -> Void {
    ELJApp_SetPrintMode(mode)
}

@_silgen_name("ELJApp_SetTooltipDelay")
fileprivate func ELJApp_SetTooltipDelay(_ ms: CLong) -> Void
internal func _wxc_ELJApp_SetTooltipDelay(_ ms: CLong) -> Void {
    ELJApp_SetTooltipDelay(ms)
}

@_silgen_name("ELJApp_SetUseBestVisual")
fileprivate func ELJApp_SetUseBestVisual(_ flag: CBool) -> Void
internal func _wxc_ELJApp_SetUseBestVisual(_ flag: CBool) -> Void {
    ELJApp_SetUseBestVisual(flag)
}

@_silgen_name("ELJApp_GetUseBestVisual")
fileprivate func ELJApp_GetUseBestVisual() -> CBool
internal func _wxc_ELJApp_GetUseBestVisual() -> CBool {
    return ELJApp_GetUseBestVisual()
}

@_silgen_name("ELJApp_GetVendorName")
fileprivate func ELJApp_GetVendorName() -> CVoidPtr
internal func _wxc_ELJApp_GetVendorName() -> CVoidPtr {
    return ELJApp_GetVendorName()
}

@_silgen_name("ELJApp_SetVendorName")
fileprivate func ELJApp_SetVendorName(_ str: CVoidPtr) -> Void
internal func _wxc_ELJApp_SetVendorName(_ str: CVoidPtr) -> Void {
    ELJApp_SetVendorName(str)
}

@_silgen_name("ELJApp_MainLoop")
fileprivate func ELJApp_MainLoop() -> Void
internal func _wxc_ELJApp_MainLoop() -> Void {
    ELJApp_MainLoop()
}

@_silgen_name("ELJApp_Sleep")
fileprivate func ELJApp_Sleep(_ sec: CInt) -> Void
internal func _wxc_ELJApp_Sleep(_ sec: CInt) -> Void {
    ELJApp_Sleep(sec)
}

@_silgen_name("ELJApp_MilliSleep")
fileprivate func ELJApp_MilliSleep( _ msec: CUnsignedLong) -> Void
internal func _wxc_ELJApp_MilliSleep( _ msec: CUnsignedLong) -> Void {
    ELJApp_MilliSleep(msec)
}

@_silgen_name("ELJApp_Yield")
fileprivate func ELJApp_Yield() -> CBool
internal func _wxc_ELJApp_Yield() -> CBool {
    return ELJApp_Yield()
}

@_silgen_name("ELJApp_Pending")
fileprivate func ELJApp_Pending() -> CBool
internal func _wxc_ELJApp_Pending() -> CBool {
    return ELJApp_Pending()
}

@_silgen_name("ELJApp_IsTerminating")
fileprivate func ELJApp_IsTerminating() -> CBool
internal func _wxc_ELJApp_IsTerminating() -> CBool {
    return ELJApp_IsTerminating()
}

@_silgen_name("ELJApp_Initialized")
fileprivate func ELJApp_Initialized() -> CBool
internal func _wxc_ELJApp_Initialized() -> CBool {
    return ELJApp_Initialized()
}

@_silgen_name("ELJApp_GetUserName")
fileprivate func ELJApp_GetUserName() -> CVoidPtr
internal func _wxc_ELJApp_GetUserName() -> CVoidPtr {
    return ELJApp_GetUserName()
}

@_silgen_name("LJApp_GetUserHome")
fileprivate func ELJApp_GetUserHome(_ user: CVoidPtr) -> CVoidPtr
internal func _wxc_ELJApp_GetUserHome(_ user: CVoidPtr) -> CVoidPtr {
    return ELJApp_GetUserHome(user)
}

@_silgen_name("ELJApp_GetUserId")
fileprivate func ELJApp_GetUserId() -> CVoidPtr
internal func _wxc_ELJApp_GetUserId() -> CVoidPtr {
    return ELJApp_GetUserId()
}

public func wxGetApp() -> wxApp {
    return wxApp(rawValue: _wxc_ELJApp_GetApp())!
}

public final class wxApp: wxEvtHandler {
    
    private static var _initialized: Bool = false
    
    public override init() {
        
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
    
    public var displaySize: wxSize {
        get {
            return wxSize(rawValue: _wxc_ELJApp_DisplaySize())!
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
            guard let str = wxString(rawValue: _wxc_ELJApp_GetAppName()) else {
                return ""
            }
            
            return String(str)
        }
        
        set {
            let str = wxString(string: newValue)
            _wxc_ELJApp_SetAppName(str.rawValue)
        }
    }
    
    public var className: String {
        get {
            guard let str = wxString(rawValue: _wxc_ELJApp_GetClassName()) else {
                return ""
            }
            
            return String(str)
        }
        
        set {
            let str = wxString(string: newValue)
            _wxc_ELJApp_SetClassName(str.rawValue)
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
            guard let str = wxString(rawValue: _wxc_ELJApp_GetVendorName()) else {
                return ""
            }
            
            return String(str)
        }
        
        set {
            let str = wxString(string: newValue)
            _wxc_ELJApp_SetVendorName(str.rawValue)
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
            guard let str = wxString(rawValue: _wxc_ELJApp_GetUserName()) else {
                return ""
            }
            
            return String(str)
        }
    }
    
    public var userHomeDirectory: String {
        get {
            return getHomeDirectory(for: userName)
        }
    }
    
    public func getHomeDirectory(for user: String) -> String {
        let _user = wxString(string: user)
        
        guard let dir = wxString(rawValue: _wxc_ELJApp_GetUserHome(_user.rawValue)) else {
            return ""
        }
        
        return String(dir)
    }
    
    public var userID: String {
        get {
            guard let str = wxString(rawValue: _wxc_ELJApp_GetUserId()) else {
                return ""
            }
            
            return String(str)
        }
    }
}
