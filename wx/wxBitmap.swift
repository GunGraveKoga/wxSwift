//
//  wxBitmap.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("Null_Bitmap")
fileprivate func Null_Bitmap() -> CVoidPtr
internal func _wxc_Null_Bitmap() -> CVoidPtr {
    return Null_Bitmap()
}

public class wxBitmap: wxGDIObject {
    
    public static let nullBitmap = wxBitmap(rawValue: _wxc_Null_Bitmap())!
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
}
