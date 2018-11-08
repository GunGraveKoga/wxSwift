//
//  wxObject.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxObject {
    public internal(set) var wxPointer: CVoidPtr
    
    public init(wxPointer: CVoidPtr) {
        self.wxPointer = wxPointer
    }
}
