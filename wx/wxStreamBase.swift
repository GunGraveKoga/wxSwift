//
//  wxStreamBase.swift
//  wxSwift
//
//  Created by Yury Vovk on 17/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public enum wxStreamError: CInt {
    case wxSTREAM_NO_ERROR = 0,
    wxSTREAM_EOF,
    wxSTREAM_WRITE_ERROR,
    wxSTREAM_READ_ERROR
}

public protocol wxStreamBase: Hashable, RawRepresentable {
    
    var rawValue: CVoidPtr { get }
    
    init?(rawValue: CVoidPtr)
    
    func getLastError() -> wxStreamError!
    
    func getSize() -> UInt
    
    func isOK() -> Bool
    
    mutating func delete() -> Void
}

public extension wxStreamBase {
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    
    public func getLastError() -> wxStreamError! {
        return wxStreamError(rawValue: _wxc_wxStreamBase_GetLastError(self.rawValue))
    }
    
    public func getSize() -> UInt {
        return _wxc_wxStreamBase_GetSize(self.rawValue)
    }
    
    public func isOK() -> Bool {
        return _wxc_wxStreamBase_IsOk(self.rawValue)
    }
    
    public func delete() {
        guard self.rawValue != nil else {
            return
        }
        
        _wxc_wxStreamBase_Delete(self.rawValue)
    }
    
    public var hashValue: Int {
        return self.rawValue!.hashValue
    }
}
