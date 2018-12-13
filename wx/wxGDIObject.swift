//
//  wxGDIObject.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public class wxGDIObject: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
}
