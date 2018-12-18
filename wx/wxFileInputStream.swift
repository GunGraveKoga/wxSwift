//
//  wxFileInputStream.swift
//  wxSwift
//
//  Created by Yury Vovk on 18/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public protocol wxFileInputStream: wxInputStream {
    
    init(atPath path: String)
}

public extension wxFileInputStream where Self.RawValue == CVoidPtr {
    
    public init(atPath path: String) {
        let _path = _wxc_wxString_CreateUTF8(path)
        
        defer {
            _wxc_wxString_Delete(_path)
        }
        
        self.init(rawValue: _wxc_wxFileInputStream_Create(_path))!
    }
    
    public func delete() {
        guard self.rawValue != nil else {
            return
        }
        
        _wxc_wxFileInputStream_Delete(self.rawValue)
    }
    
    public func isOK() -> Bool {
        return _wxc_wxFileInputStream_IsOk(self.rawValue)
    }
}
