//
//  wxPoint.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxPoint_Create")
fileprivate func wxPoint_Create(_ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxPoint_Create(_ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxPoint_Create(x, y)
}

@_silgen_name("wxPoint_Delete")
fileprivate func wxPoint_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxPoint_Delete(_ ptr: CVoidPtr) -> Void {
    return wxPoint_Delete(ptr)
}

@_silgen_name("wxPoint_GetX")
fileprivate func wxPoint_GetX(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxPoint_GetX(_ ptr: CVoidPtr) -> CInt {
    return wxPoint_GetX(ptr)
}

@_silgen_name("wxPoint_GetY")
fileprivate func wxPoint_GetY(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxPoint_GetY(_ ptr: CVoidPtr) -> CInt {
    return wxPoint_GetY(ptr)
}

@_silgen_name("wxPoint_SetX")
fileprivate func wxPoint_SetX(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxPoint_SetX(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxPoint_SetX(ptr, value)
}

@_silgen_name("wxPoint_SetY")
fileprivate func wxPoint_SetY(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxPoint_SetY(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxPoint_SetY(ptr, value)
}

public let wxDefaultPosition: Point = Point(x: -1, y: -1)

public struct Point {
    
    public var x: CInt
    public var y: CInt
    
    public init?(wxPoint: CVoidPtr) {
        guard let wxPoint = wxPoint else {
            return nil
        }
        
        defer {
            _wxc_wxPoint_Delete(wxPoint)
        }
        
        self.x = _wxc_wxPoint_GetX(wxPoint)
        self.y = _wxc_wxPoint_GetY(wxPoint)
    }
    
    public init(x: CInt, y: CInt) {
        self.x = x
        self.y = y
    }
    
    public func withWxPoint<Result>(_ body: (CVoidPtr) throws -> Result) rethrows -> Result {
        let wxPoint = _wxc_wxPoint_Create(x, y)
        
        defer {
            _wxc_wxPoint_Delete(wxPoint)
        }
        
        return try body(wxPoint)
    }
}
