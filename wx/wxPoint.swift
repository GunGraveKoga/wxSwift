//
//  wxPoint.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

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
