//
//  wxTopLevelWindow.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxTopLevelWindow: wxWindow {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
}
