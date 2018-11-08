//
//  wxCharBuffer.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxCharBuffer_Delete")
fileprivate func wxCharBuffer_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxCharBuffer_Delete(_ ptr: CVoidPtr) -> Void {
    wxCharBuffer_Delete(ptr)
}

@_silgen_name("wxCharBuffer_DataUtf8")
fileprivate func wxCharBuffer_DataUtf8(_ ptr: CVoidPtr) -> CCharPtr
internal func _wxc_wxCharBuffer_DataUtf8(_ ptr: CVoidPtr) -> CCharPtr {
    return wxCharBuffer_DataUtf8(ptr)
}

public final class wxCharBuffer: wxObject {
    
    deinit {
        if let ptr = wxPointer {
            _wxc_wxCharBuffer_Delete(ptr)
        }
    }
    
    var utf8Data: CCharPtr {
        get {
            return _wxc_wxCharBuffer_DataUtf8(wxPointer)
        }
    }
}
