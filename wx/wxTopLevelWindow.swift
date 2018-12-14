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
    open func enableCloseButton(_ enable: Bool) -> Bool {
        return _wxc_wxTopLevelWindow_EnableCloseButton(rawValue, enable)
    }
    
    open func getDefaultButton<T: wxButton>() -> T? {
        return T(rawValue: _wxc_wxTopLevelWindow_GetDefaultItem(rawValue))
    }
    
    open func setDefaultButton<T: wxButton>(_ button: T?) {
        _wxc_wxTopLevelWindow_SetDefaultItem(rawValue, button?.rawValue)
    }
    
    open var defaultIcon: wxIcon? {
        get {
            return wxIcon(rawValue: _wxc_wxTopLevelWindow_GetIcon(rawValue))
        }
    }
    
    open var defaultItem: wxWindow? {
        get {
            return wxWindow(rawValue: _wxc_wxTopLevelWindow_GetDefaultItem(rawValue))
        }
        
        set {
            _wxc_wxTopLevelWindow_SetDefaultItem(rawValue, newValue?.rawValue)
        }
    }
    
    open var title: String? {
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
    
    open func iconize(_ iconize: Bool) {
        _wxc_wxTopLevelWindow_Iconize(rawValue, iconize)
    }
    
    open var isActive: Bool {
        get {
            return _wxc_wxTopLevelWindow_IsActive(rawValue)
        }
    }
    
    open var isIconized: Bool {
        get {
            return _wxc_wxTopLevelWindow_IsIconized(rawValue)
        }
    }
    
    open var isMaximized: Bool {
        get {
            return _wxc_wxTopLevelWindow_IsMaximized(rawValue)
        }
    }
    
    open func maximize(_ maximize: Bool) {
        _wxc_wxTopLevelWindow_Maximize(rawValue, maximize)
    }
    
    open func requestUserAttention(_ flag: wxTopLevelWindow.UserAttentionFlag = .wxUSER_ATTENTION_INFO) {
        _wxc_wxTopLevelWindow_RequestUserAttention(rawValue, flag.rawValue)
    }
    
    open func setIcon(_ icon: wxIcon) {
        _wxc_wxTopLevelWindow_SetIcon(rawValue, icon.rawValue)
    }
    
    open func setIcons(_ icons: wxIconBundle) {
        _wxc_wxTopLevelWindow_SetIcons(rawValue, icons.rawValue)
    }
    
    open func setMaxSize(_ size: Size) {
        _wxc_wxTopLevelWindow_SetMaxSize(rawValue, size.width, size.height)
    }
    
    open func setMinSize(_ size: Size) {
        _wxc_wxTopLevelWindow_SetMinSize(rawValue, size.width, size.height)
    }
}
