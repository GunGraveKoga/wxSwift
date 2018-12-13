//
//  wxSize.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public let wxDefaultSize: Size = Size(width: -1, height: -1)

public struct Size {
    
    public var width: CInt
    public var height: CInt
    
    public init?(wxSize: CVoidPtr) {
        guard let wxSize = wxSize else {
            return nil
        }
        
        defer {
            _wxc_wxSize_Delete(wxSize)
        }
        
        self.width = _wxc_wxSize_GetWidth(wxSize)
        self.height = _wxc_wxSize_GetHeight(wxSize)
    }
    
    public init(width: CInt, height: CInt) {
        self.width = width
        self.height = height
    }
    
    public func withWxSize<Result>(_ body: (CVoidPtr) throws -> Result) rethrows -> Result {
        let wxSize = _wxc_wxSize_Create(width, height)
        
        defer {
            _wxc_wxSize_Delete(wxSize)
        }
        
        return try body(wxSize)
    }
}
