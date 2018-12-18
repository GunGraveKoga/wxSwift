//
//  wxIconBundle.swift
//  wxSwift
//
//  Created by Юрий Вовк on 14/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxIconBundle: wxGDIObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public required init() {
        super.init(rawValue: _wxc_wxIconBundle_CreateDefault())!
    }
    
    public init(contentsOf file: String, type: wxBitmapType = .wxBITMAP_TYPE_ANY) {
        super.init(rawValue: file.withWxString({_file in
            return _wxc_wxIconBundle_CreateFromFile(_file, type.rawValue)
        }))!
    }
    
    public init(containing icon: wxIcon) {
        super.init(rawValue: _wxc_wxIconBundle_CreateFromIcon(icon.rawValue))!
    }
    
    open func add(icon: wxIcon) {
        _wxc_wxIconBundle_AddIcon(rawValue, icon.rawValue)
    }
    
    open func add(contentsOf file: String, type: wxBitmapType = .wxBITMAP_TYPE_ANY) {
        file.withWxString {
            _wxc_wxIconBundle_AddIconFromFile(rawValue, $0, type.rawValue)
        }
    }
    
    override open func delete() {
        guard rawValue != nil else {
            return
        }
        
        _wxc_wxIconBundle_Delete(rawValue)
        rawValue = nil
    }
    
    open func getIcon(size: Size) -> wxIcon {
        let icon = wxIcon()
        
        _wxc_wxIconBundle_GetIcon(rawValue, size.width, size.height, icon.rawValue)
        
        return icon
    }
    
    open func assign(_ other: wxIconBundle) {
        _wxc_wxIconBundle_Assign(rawValue, other.rawValue)
    }
}
