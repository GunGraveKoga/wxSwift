//
//  wxImage.swift
//  wxSwift
//
//  Created by Юрий Вовк on 15/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxImage: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
}
