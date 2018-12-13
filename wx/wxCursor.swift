//
//  wxCursor.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("Null_Cursor")
fileprivate func Null_Cursor() -> CVoidPtr
internal func _wxc_Null_Cursor() -> CVoidPtr {
    return Null_Cursor()
}

public class wxCursor: wxBitmap {
    
    public static let nullCursor = wxCursor(rawValue: _wxc_Null_Cursor())!
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
}
