//
//  wxString.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public extension String {
    public init?(wxString: CVoidPtr) {
        guard let wxString = wxString else {
            return nil
        }
        
        defer {
            _wxc_wxString_Delete(wxString)
        }
        
        guard let utf8Buffer = _wxc_wxString_GetUtf8(wxString) else {
            return nil
        }
        
        defer {
            _wxc_wxCharBuffer_Delete(utf8Buffer)
        }
        
        self.init(cString: _wxc_wxCharBuffer_DataUtf8(utf8Buffer)!)
    }
    
    public func withWxString<Result>(_ body: (CVoidPtr) throws -> Result) rethrows -> Result {
        let wxString = _wxc_wxString_CreateUTF8(self)
        
        defer {
            _wxc_wxString_Delete(wxString)
        }
        
        return try body(wxString)
    }
}
