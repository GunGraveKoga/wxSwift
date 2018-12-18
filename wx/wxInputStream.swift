//
//  wxInputStream.swift
//  wxSwift
//
//  Created by Yury Vovk on 18/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public let wxEOF: CInt = -1

public protocol wxInputStream: wxStreamBase {
    
    func atEndOfStream() -> Bool
    
    func getChar() -> CChar?
    
    func lastRead() -> UInt
    
    func peek() -> CChar
    
    func read(into buffer: UnsafeMutableRawPointer!, length: UInt) -> Void
    
    func seekI(offset: wxFileOffset, mode: wxSeekMode) -> Int
    
    func tellI() -> Int
    
    func unget(buffer: UnsafeRawPointer!, length: UInt) -> UInt
    
    func unget(character: CChar) -> Bool
    
    func canRead() -> Bool
}

public extension wxInputStream {
    
    public func delete() {
        guard self.rawValue != nil else {
            return
        }
        
        _wxc_wxInputStream_Delete(self.rawValue)
    }
    
    public func atEndOfStream() -> Bool {
        return _wxc_wxInputStream_Eof(self.rawValue)
    }
    
    public func getChar() -> CChar? {
        let rc = _wxc_wxInputStream_GetC(self.rawValue)
        
        guard rc != wxEOF else {
            return nil
        }
        
        return CChar(exactly: rc)
    }
    
    public func lastRead() -> UInt {
        return _wxc_wxInputStream_LastRead(self.rawValue)
    }
    
    public func peek() -> CChar {
        return _wxc_wxInputStream_Peek(self.rawValue)
    }
    
    public func read(into buffer: UnsafeMutableRawPointer!, length: UInt) {
        _wxc_wxInputStream_Read(self.rawValue, buffer, length)
    }
    
    public func seekI(offset: wxFileOffset, mode: wxSeekMode = .wxFromStart) -> Int {
        return _wxc_wxInputStream_SeekI(self.rawValue, offset, mode.rawValue)
    }
    
    public func tellI() -> Int {
        return _wxc_wxInputStream_Tell(self.rawValue)
    }
    
    public func unget(buffer: UnsafeRawPointer!, length: UInt) -> UInt {
        return _wxc_wxInputStream_UngetBuffer(self.rawValue, buffer, length)
    }
    
    public func unget(character: CChar) -> Bool {
        return _wxc_wxInputStream_Ungetch(self.rawValue, character)
    }
    
    public func canRead() -> Bool {
        return _wxc_wxInputStream_CanRead(self.rawValue)
    }
}
