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

public final class wxString: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(_ buffer: UnsafeMutablePointer<wxChar>?) {
        super.init(rawValue: _wxc_wxString_Create(buffer))!
    }
    
    public init(string: String) {
        super.init(rawValue: _wxc_wxString_CreateUTF8(string))!
    }
    
    public init(_ buffer: UnsafeMutableBufferPointer<wxChar>) {
        super.init(rawValue: _wxc_wxString_CreateLen(buffer.baseAddress!, buffer.count))!
    }
    
    deinit {
        _wxc_wxString_Delete(rawValue)
    }
    
    public func getString(_ buffer: inout CCharPtr) -> Int {
        return Int(_wxc_wxString_GetString(rawValue, buffer))
    }
    
    public var length: Int {
        get {
            return _wxc_wxString_Length(rawValue)
        }
    }
}

public extension String {
    public init(_ _wxString: wxString) {
        let utf8Buffer = _wxc_wxString_GetUtf8(_wxString.rawValue)!
        
        defer {
            _wxc_wxCharBuffer_Delete(utf8Buffer)
        }
        
        self.init(cString: _wxc_wxCharBuffer_DataUtf8(utf8Buffer)!)
    }
}
