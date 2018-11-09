//
//  wxObject.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxObject_Delete")
fileprivate func wxObject_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxObject_Delete(_ ptr: CVoidPtr) -> Void {
    wxObject_Delete(ptr)
}

public func delete<T: wxObject>(_ obj: T) {
    _wxc_wxObject_Delete(obj.rawValue)
    Unmanaged<T>.passUnretained(obj).release()
}

open class wxObject : Equatable {
    
    public private(set) var rawValue: CVoidPtr
    
    public required init?(rawValue: CVoidPtr) {
        guard let _rawValue = rawValue else {
            return nil
        }
        
        self.rawValue = _rawValue
    }
    
    public static func == (lhs: wxObject, rhs: wxObject) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}
