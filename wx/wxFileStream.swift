//
//  wxFileStream.swift
//  wxSwift
//
//  Created by Yury Vovk on 18/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxFileStream_Create")
fileprivate func wxFileStream_Create(_ name: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFileStream_Create(_ name: CVoidPtr) -> CVoidPtr {
    return wxFileStream_Create(name)
}

@_silgen_name("wxFileStream_Delete")
fileprivate func wxFileStream_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxFileStream_Delete(_ ptr: CVoidPtr) -> Void {
    wxFileStream_Delete(ptr)
}

@_silgen_name("wxFileStream_IsOK")
fileprivate func wxFileStream_IsOK(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxFileStream_IsOK(_ ptr: CVoidPtr) -> CBool {
    return wxFileStream_IsOK(ptr)
}

open class wxFileStream: wxFileInputStream, wxFileOutputStream {
    
    public internal(set) var rawValue: CVoidPtr
    
    public required init?(rawValue: CVoidPtr) {
        guard let rawValue = rawValue else {
            return nil
        }
        
        self.rawValue = rawValue
    }
    
    public convenience required init(atPath path: String) {
        let _path = _wxc_wxString_CreateUTF8(path)
        
        defer {
            _wxc_wxString_Delete(_path)
        }
        
        self.init(rawValue: _wxc_wxFileStream_Create(_path))!
    }
    
    open func delete() {
        guard rawValue != nil else {
            return
        }
        
        _wxc_wxFileStream_Delete(rawValue)
        rawValue = nil
    }
    
    open func isOK() -> Bool {
        return _wxc_wxFileStream_IsOK(rawValue)
    }
}
