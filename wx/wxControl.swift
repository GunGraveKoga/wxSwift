//
//  wxControl.swift
//  wxSwift
//
//  Created by Yury Vovk on 13/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxControl: wxWindow {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    open func command(event: wxEvent) {
        _wxc_wxControl_Command(rawValue, event.rawValue)
    }
    
    override open var label: String? {
        get {
            return String(wxString: _wxc_wxControl_GetLabel(rawValue))
        }
        
        set {
            (newValue ?? "").withWxString {
                _wxc_wxControl_SetLabel(rawValue, $0)
            }
        }
    }
}
