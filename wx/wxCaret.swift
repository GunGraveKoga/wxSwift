//
//  wxCaret.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public final class wxCaret: wxObject {
    
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
    
    public var position: Point {
        get {
            return wxPoint(rawValue: _wxc_wxCaret_GetPosition(rawValue))!
        }
    }
    
    public var size: Size {
        get {
            return wxSize(rawValue: _wxc_wxCaret_GetSize(rawValue))!
        }
        
        set {
            _wxc_wxCaret_SetSize(rawValue, newValue.width, newValue.height)
        }
    }
    
    public var window: wxWindow {
        get {
            return wxWindow(rawValue: _wxc_wxCaret_GetWindow(rawValue))!
        }
    }
    
    public func hide() {
        _wxc_wxCaret_Hide(rawValue)
    }
    
    public var isOK: Bool {
        get {
            return _wxc_wxCaret_IsOk(rawValue)
        }
    }
    
    public var isVisible: Bool {
        get {
            return _wxc_wxCaret_IsVisible(rawValue)
        }
    }
    
    public func move(to point: Point) {
        _wxc_wxCaret_Move(rawValue, point.x, point.y)
    }
    
    public func show() {
        _wxc_wxCaret_Show(rawValue)
    }
}
