//
//  wx.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public func bridge<T: wxObject>(_ obj: T) -> UnsafeMutableRawPointer {
    return Unmanaged.passUnretained(obj).toOpaque()
}

public func bridge<T: wxObject>(_ ptr: UnsafeMutableRawPointer?) -> T? {
    guard let ptr = ptr else {
        return nil
    }
    
    return Unmanaged<T>.fromOpaque(ptr).takeUnretainedValue()
}

public func bridgeRetained<T: wxObject>(_ obj: T) -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(obj).toOpaque()
}

public func bridgeTransfer<T: wxObject>(_ ptr: UnsafeMutableRawPointer?) -> T? {
    guard let ptr = ptr else {
        return nil
    }
    
    return Unmanaged<T>.fromOpaque(ptr).takeRetainedValue()
}


public typealias CVoidPtr = UnsafeMutableRawPointer?
public typealias CConstCharPtr = UnsafePointer<CChar>?
public typealias CCharPtr = UnsafeMutablePointer<CChar>?
public typealias CCharPtrPtr = UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?
public typealias CConstWideCharPtr = UnsafePointer<CWideChar>?
public typealias CWideCharPtr = UnsafeMutablePointer<CWideChar>?
public typealias CWideCharPtrPtr = UnsafeMutablePointer<UnsafeMutablePointer<CWideChar>?>?
