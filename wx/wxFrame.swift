//
//  wxFrame.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxFrame_Create")
fileprivate func wxFrame_Create(_ parent: CVoidPtr, _ winID: CInt, _ title: CVoidPtr, _ posX: CInt, _ posY: CInt, _ width: CInt, _ height: CInt, _ style: CInt) -> CVoidPtr
internal func _wxc_wxFrame_Create(_ parent: CVoidPtr, _ winID: CInt, _ title: CVoidPtr, _ posX: CInt, _ posY: CInt, _ width: CInt, _ height: CInt, _ style: CInt) -> CVoidPtr {
    return wxFrame_Create(parent, winID, title, posX, posY, width, height, style)
}

open class wxFrame: wxTopLevelWindow {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(rect: wxRect, title: String, parent: wxWindow? = nil, windowId: wxWindowID, style: CInt) {
        super.init(rawValue: _wxc_wxFrame_Create(parent?.rawValue, windowId, wxString(string: title).rawValue, rect.x, rect.y, rect.width, rect.height, style))!
    }
}
