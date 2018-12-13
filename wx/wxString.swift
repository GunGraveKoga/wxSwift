//
//  wxString.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

#if wxUSE_UNICODE
public typealias wxChar = CWideChar
public typealias wxSChar = CWideChar
public typealias wxUChar = CWideChar
#else
public typealias wxChar = CChar
public typealias wxSChar = CSignedChar
public typealias wxUChar = CUnsignedChar
#endif

@_silgen_name("wxString_Create")
fileprivate func wxString_Create(_ buffer: UnsafeMutablePointer<wxChar>?) -> CVoidPtr
internal func _wxc_wxString_Create(_ buffer: UnsafeMutablePointer<wxChar>?) -> CVoidPtr {
    return wxString_Create(buffer)
}

@_silgen_name("wxString_CreateUTF8")
fileprivate func wxString_CreateUTF8(_ buffer: CConstCharPtr) -> CVoidPtr
internal func _wxc_wxString_CreateUTF8(_ string: String) -> CVoidPtr {
    return wxString_CreateUTF8(string)
}

@_silgen_name("wxString_CreateLen")
fileprivate func wxString_CreateLen(_ buffer: UnsafeMutablePointer<wxChar>?, _ len: Int) -> CVoidPtr
internal func _wxc_wxString_CreateLen(_ buffer: UnsafeMutablePointer<wxChar>?, _ len: Int) -> CVoidPtr {
    return wxString_CreateLen(buffer, len)
}

@_silgen_name("wxString_Delete")
fileprivate func wxString_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxString_Delete(_ ptr: CVoidPtr) -> Void {
    wxString_Delete(ptr)
}

@_silgen_name("wxString_GetString")
fileprivate func wxString_GetString(_ ptr: CVoidPtr, _ outBuffer: CCharPtr) -> CInt
internal func _wxc_wxString_GetString(_ ptr: CVoidPtr, _ outBuffer: CCharPtr) -> CInt {
    return wxString_GetString(ptr, outBuffer)
}

@_silgen_name("wxString_Length")
fileprivate func wxString_Length(_ ptr: CVoidPtr) -> Int
internal func _wxc_wxString_Length(_ ptr: CVoidPtr) -> Int {
    return wxString_Length(ptr)
}

@_silgen_name("wxString_GetUtf8")
fileprivate func wxString_GetUtf8(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxString_GetUtf8(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxString_GetUtf8(ptr)
}

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
