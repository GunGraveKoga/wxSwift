//
//  wxRect.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public struct Rect {
    
    public var origin: Point
    public var size: Size
    
    public var x: CInt {
        get {
            return origin.x
        }
        
        set {
            origin.x = newValue
        }
    }
    
    public var y: CInt {
        get {
            return origin.y
        }
        
        set {
            origin.y = newValue
        }
    }
    
    public var width: CInt {
        get {
            return size.width
        }
        
        set {
            size.width = newValue
        }
    }
    
    public var height: CInt {
        get {
            return size.height
        }
        
        set {
            size.height = newValue
        }
    }
    
    public init?(wxRect: CVoidPtr) {
        guard let wxRect = wxRect else {
            return nil
        }
        
        defer {
            _wxc_wxRect_Delete(wxRect)
        }
        origin = Point(x: _wxc_wxRect_GetX(wxRect), y: _wxc_wxRect_GetY(wxRect))
        size = Size(width: _wxc_wxRect_GetWidth(wxRect), height: _wxc_wxRect_GetHeight(wxRect))
    }
    
    public init(x: CInt, y: CInt, width: CInt, height: CInt) {
        origin = Point(x: x, y: y)
        size = Size(width: width, height: height)
    }
    
    public func withWxRect<Result>(_ body: (CVoidPtr) throws -> Result) rethrows -> Result {
        let wxRect = _wxc_wxRect_Create(x, y, width, height)
        
        defer {
            _wxc_wxRect_Delete(wxRect)
        }
        
        return try body(wxRect)
    }
}
