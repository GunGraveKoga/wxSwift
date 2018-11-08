//
//  wxString.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

#if wxUSE_UNICODE
public typealias TString = CWideCharPtr
#else
public typealias TString = CCharPtr
#endif

@_silgen_name("wxString_Create")
fileprivate func wxString_Create(_ buffer: TString) -> CVoidPtr
internal func _wxc_wxString_Create(_ buffer: TString) -> CVoidPtr {
    return wxString_Create(buffer)
}

@_silgen_name("wxString_CreateUTF8")
fileprivate func wxString_CreateUTF8(_ buffer: CConstCharPtr) -> CVoidPtr
internal func _wxc_wxString_CreateUTF8(_ string: String) -> CVoidPtr {
    return wxString_CreateUTF8(string)
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

public final class wxString: wxObject {
    
    public init(_ buffer: TString) {
        super.init(wxPointer: _wxc_wxString_Create(buffer))
    }
    
    public init(string: String) {
        super.init(wxPointer: _wxc_wxString_CreateUTF8(string))
    }
    
    deinit {
        if let ptr = wxPointer {
            _wxc_wxString_Delete(ptr)
        }
    }
    
    public func getString(_ buffer: inout CCharPtr) -> Int {
        return Int(_wxc_wxString_GetString(wxPointer, buffer))
    }
    
    public var length: Int {
        get {
            return _wxc_wxString_Length(wxPointer)
        }
    }
    
    public func getUTF() -> wxCharBuffer {
        return wxCharBuffer(wxPointer: _wxc_wxString_GetUtf8(wxPointer))
    }
}

public extension String {
    init(_ _wxString: wxString) {
        self.init(cString: _wxString.getUTF().utf8Data!)
    }
}
