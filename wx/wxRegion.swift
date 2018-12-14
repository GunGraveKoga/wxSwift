//
//  wxRegion.swift
//  wxSwift
//
//  Created by Юрий Вовк on 02/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxRegion: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
}
