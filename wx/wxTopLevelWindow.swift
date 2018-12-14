//
//  wxTopLevelWindow.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxTopLevelWindow: wxWindow {
    
    public enum UserAttentionFlag: CInt {
        case wxUSER_ATTENTION_INFO = 1
        case wxUSER_ATTENTION_ERROR = 2
    }
    
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
    
    public func setDefaultButton<T: wxButton>(_ button: T?) {
        _wxc_wxTopLevelWindow_SetDefaultItem(rawValue, button?.rawValue)
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
        
        set {
            _wxc_wxTopLevelWindow_SetDefaultItem(rawValue, newValue?.rawValue)
        }
    }
    
    public var title: String? {
        get {
            return String(wxString: _wxc_wxTopLevelWindow_GetTitle(rawValue))
        }
        
        set {
            if let value = newValue {
                value.withWxString {
                    _wxc_wxTopLevelWindow_SetTitle(rawValue, $0)
                }
            } else {
                _wxc_wxTopLevelWindow_SetTitle(rawValue, nil)
            }
        }
    }
    
    public func iconize(_ iconize: Bool) {
        _wxc_wxTopLevelWindow_Iconize(rawValue, iconize)
    }
    
    public var isActive: Bool {
        get {
            return _wxc_wxTopLevelWindow_IsActive(rawValue)
        }
    }
    
    public var isIconized: Bool {
        get {
            return _wxc_wxTopLevelWindow_IsIconized(rawValue)
        }
    }
    
    public var isMaximized: Bool {
        get {
            return _wxc_wxTopLevelWindow_IsMaximized(rawValue)
        }
    }
    
    public func maximize(_ maximize: Bool) {
        _wxc_wxTopLevelWindow_Maximize(rawValue, maximize)
    }
    
    public func requestUserAttention(_ flag: wxTopLevelWindow.UserAttentionFlag = .wxUSER_ATTENTION_INFO) {
        _wxc_wxTopLevelWindow_RequestUserAttention(rawValue, flag.rawValue)
    }
    
    public func setIcon(_ icon: wxIcon) {
        _wxc_wxTopLevelWindow_SetIcon(rawValue, icon.rawValue)
    }
    
    public func setIcons(_ icons: wxIconBundle) {
        _wxc_wxTopLevelWindow_SetIcons(rawValue, icons.rawValue)
    }
    
    public func setMaxSize(_ size: Size) {
        _wxc_wxTopLevelWindow_SetMaxSize(rawValue, size.width, size.height)
    }
    
    public func setMinSize(_ size: Size) {
        _wxc_wxTopLevelWindow_SetMinSize(rawValue, size.width, size.height)
    }
}
