//
//  wxObject.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxObject : Equatable, Hashable {
    
    public internal(set) var rawValue: CVoidPtr
    
    public required init?(rawValue: CVoidPtr) {
        guard let _rawValue = rawValue else {
            return nil
        }
        
        self.rawValue = _rawValue
    }
    
    public static func == (lhs: wxObject, rhs: wxObject) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    
    public func delete() {
        guard rawValue != nil else {
            return
        }
        
        _wxc_wxObject_Delete(rawValue)
        rawValue = nil
    }
    
    open var hashValue: Int {
        return rawValue!.hashValue
    }
}

public protocol wxCopying: class {
    
    func copy() -> Self
}
