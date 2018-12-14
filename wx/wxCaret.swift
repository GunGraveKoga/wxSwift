//
//  wxCaret.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxCaret: wxObject {
    
    public class var blinkTime: CInt {
        get {
            return _wxc_wxCaret_GetBlinkTime()
        }
        
        set {
            _wxc_wxCaret_SetBlinkTime(newValue)
        }
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(window: wxWindow, width: CInt, height: CInt) {
        super.init(rawValue: _wxc_wxCaret_Create(window.rawValue, width, height))!
    }
    
    open var position: Point {
        get {
            return Point(wxPoint: _wxc_wxCaret_GetPosition(rawValue))!
        }
    }
    
    open var size: Size {
        get {
            return Size(wxSize: _wxc_wxCaret_GetSize(rawValue))!
        }
        
        set {
            _wxc_wxCaret_SetSize(rawValue, newValue.width, newValue.height)
        }
    }
    
    open var window: wxWindow {
        get {
            return wxWindow(rawValue: _wxc_wxCaret_GetWindow(rawValue))!
        }
    }
    
    open func hide() {
        _wxc_wxCaret_Hide(rawValue)
    }
    
    open var isOK: Bool {
        get {
            return _wxc_wxCaret_IsOk(rawValue)
        }
    }
    
    open var isVisible: Bool {
        get {
            return _wxc_wxCaret_IsVisible(rawValue)
        }
    }
    
    open func move(to point: Point) {
        _wxc_wxCaret_Move(rawValue, point.x, point.y)
    }
    
    open func show() {
        _wxc_wxCaret_Show(rawValue)
    }
}
