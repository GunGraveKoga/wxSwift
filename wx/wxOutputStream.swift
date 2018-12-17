//
//  wxOutputStream.swift
//  wxSwift
//
//  Created by Yury Vovk on 17/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public typealias wxFileOffset = Int

public enum wxSeekMode: CInt {
    case wxFromStart = 0,
    wxFromCurrent,
    wxFromEnd
}

public protocol wxOutputStream: wxStreamBase {
    
    func lastWrite() -> UInt
    
    func putChar(_ char: CChar) -> Void
    
    func seek(offset: wxFileOffset, mode: wxSeekMode) -> wxFileOffset
    
    func sync() -> Void
    
    func tell() -> Int
    
    func write(buffer: UnsafeRawPointer!, length: UInt) -> Void
}

public extension wxOutputStream where Self.RawValue == CVoidPtr {
    
    public func delete() {
        guard self.rawValue != nil else {
            return
        }
        
        _wxc_wxOutputStream_Delete(self.rawValue)
    }
    
    public func lastWrite() -> UInt {
        return _wxc_wxOutputStream_LastWrite(self.rawValue)
    }
    
    public func putChar(_ char: CChar) {
        _wxc_wxOutputStream_PutC(self.rawValue, char)
    }
    
    public func seek(offset: wxFileOffset, mode: wxSeekMode) -> wxFileOffset {
        return _wxc_wxOutputStream_Seek(rawValue, offset, mode.rawValue)
    }
    
    public func sync() {
        _wxc_wxOutputStream_Sync(self.rawValue)
    }
    
    public func tell() -> Int {
        return _wxc_wxOutputStream_Tell(self.rawValue)
    }
    
    public func write(buffer: UnsafeRawPointer!, length: UInt) {
        _wxc_wxOutputStream_Write(self.rawValue, buffer, length)
    }
}
