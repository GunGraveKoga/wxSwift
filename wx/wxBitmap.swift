//
//  wxBitmap.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public let  wxBITMAP_SCREEN_DEPTH: CInt = -1

public enum wxBitmapType: CInt {
    public static let wxBITMAP_TYPE_RESOURCE: wxBitmapType = .wxBITMAP_TYPE_BMP_RESOURCE
    public static let wxBITMAP_TYPE_TIF: wxBitmapType = .wxBITMAP_TYPE_TIFF
    public static let wxBITMAP_TYPE_TIF_RESOURCE: wxBitmapType = .wxBITMAP_TYPE_TIFF_RESOURCE
    case wxBITMAP_TYPE_INVALID = 0,
    wxBITMAP_TYPE_BMP,
    wxBITMAP_TYPE_BMP_RESOURCE,
    wxBITMAP_TYPE_ICO,
    wxBITMAP_TYPE_ICO_RESOURCE,
    wxBITMAP_TYPE_CUR,
    wxBITMAP_TYPE_CUR_RESOURCE,
    wxBITMAP_TYPE_XBM,
    wxBITMAP_TYPE_XBM_DATA,
    wxBITMAP_TYPE_XPM,
    wxBITMAP_TYPE_XPM_DATA,
    wxBITMAP_TYPE_TIFF,
    wxBITMAP_TYPE_TIFF_RESOURCE,
    wxBITMAP_TYPE_GIF,
    wxBITMAP_TYPE_GIF_RESOURCE,
    wxBITMAP_TYPE_PNG,
    wxBITMAP_TYPE_PNG_RESOURCE,
    wxBITMAP_TYPE_JPEG,
    wxBITMAP_TYPE_JPEG_RESOURCE,
    wxBITMAP_TYPE_PNM,
    wxBITMAP_TYPE_PNM_RESOURCE,
    wxBITMAP_TYPE_PCX,
    wxBITMAP_TYPE_PCX_RESOURCE,
    wxBITMAP_TYPE_PICT,
    wxBITMAP_TYPE_PICT_RESOURCE,
    wxBITMAP_TYPE_ICON,
    wxBITMAP_TYPE_ICON_RESOURCE,
    wxBITMAP_TYPE_ANI,
    wxBITMAP_TYPE_IFF,
    wxBITMAP_TYPE_TGA,
    wxBITMAP_TYPE_MACCURSOR,
    wxBITMAP_TYPE_MACCURSOR_RESOURCE,
    wxBITMAP_TYPE_MAX,
    wxBITMAP_TYPE_ANY = 50
}

open class wxBitmap: wxGDIObject {
    
    public static let nullBitmap = wxBitmap(rawValue: _wxc_Null_Bitmap())!
    
    open class func addHandler(_ handler: wxBitmapHandler) {
        _wxc_wxBitmap_AddHandler(handler.rawValue)
    }
    
    open class func cleanUpHandlers() {
        _wxc_wxBitmap_CleanUpHandlers()
    }
    
    open class func findHandler<T: wxBitmapHandler>(byExtension extension: String, type: wxBitmapType) -> T? {
        return `extension`.withWxString {
            return T(rawValue: _wxc_wxBitmap_FindHandlerByExtension($0, type.rawValue))
        }
    }
    
    open class func findHandler<T: wxBitmapHandler>(byName name: String) -> T? {
        return name.withWxString {
            return T(rawValue: _wxc_wxBitmap_FindHandlerByName($0))
        }
    }
    
    open class func findHandler<T: wxBitmapHandler>(byType type: wxBitmapType) -> T? {
        return T(rawValue: _wxc_wxBitmap_FindHandlerByType(type.rawValue))
    }
    
    open class func initStandardHandlers() {
        _wxc_wxBitmap_InitStandardHandlers()
    }
    
    open class func insertHandler(_ handler: wxBitmapHandler) {
        _wxc_wxBitmap_InsertHandler(handler.rawValue)
    }
    
    open class func removeHandler(name: String) -> Bool {
        return name.withWxString {
            return _wxc_wxBitmap_RemoveHandler($0)
        }
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(from image: wxImage, withDepth depth: CInt = wxBITMAP_SCREEN_DEPTH) {
        super.init(rawValue: _wxc_wxBitmap_CreateFromImage(image.rawValue, depth))!
    }
    
    public init(from bits: UnsafePointer<UInt8>, withSize size: Size, depth: CInt = wxBITMAP_SCREEN_DEPTH) {
        super.init(rawValue: _wxc_wxBitmap_Create(bits, size.width, size.height, depth))!
    }
    
    public init() {
        super.init(rawValue: _wxc_wxBitmap_CreateDefault())!
    }
    
    public init(withSize size: Size, depth: CInt = wxBITMAP_SCREEN_DEPTH) {
        super.init(rawValue: _wxc_wxBitmap_CreateEmpty(size.width, size.height, depth))!
    }
    
    public init(fromXPM data: UnsafePointer<UnsafePointer<UInt8>>) {
        super.init(rawValue: _wxc_wxBitmap_CreateFromXPM(data))!
    }
    
    public init(fromFile fileName: String, type: wxBitmapType) {
        let _fileName = _wxc_wxString_CreateUTF8(fileName)
        
        defer {
            _wxc_wxString_Delete(_fileName)
        }
        
        super.init(rawValue: _wxc_wxBitmap_CreateLoad(_fileName, type.rawValue))!
    }
    
    public override func delete() {
        if let rawValue = rawValue {
            _wxc_wxBitmap_Delete(rawValue)
        }
    }
    
    public override func safeDelete() {
        if let rawValue = rawValue {
            _wxc_wxBitmap_SafeDelete(rawValue)
        }
    }
    
    public func isStatic() -> Bool {
        return _wxc_wxBitmap_IsStatic(rawValue)
    }
    
    open var depth: CInt {
        get {
            return _wxc_wxBitmap_GetDepth(rawValue)
        }
        
        set {
            _wxc_wxBitmap_SetDepth(rawValue, newValue)
        }
    }
    
    open var height: CInt {
        get {
            return _wxc_wxBitmap_GetHeight(rawValue)
        }
        
        set {
            _wxc_wxBitmap_SetHeight(rawValue, newValue)
        }
    }
    
    open var mask: wxMask? {
        get {
            return wxMask(rawValue: _wxc_wxBitmap_GetMask(rawValue))
        }
        
        set {
            _wxc_wxBitmap_SetMask(rawValue, newValue?.rawValue)
        }
    }
    
    open func getSubBitmap(withRect rect: Rect) -> wxBitmap {
        let bitmap = wxBitmap()
        
        _wxc_wxBitmap_GetSubBitmap(rawValue, rect.x, rect.y, rect.width, rect.height, bitmap.rawValue)
        
        return bitmap
    }
    
    open var width: CInt {
        get {
            return _wxc_wxBitmap_GetWidth(rawValue)
        }
        
        set {
            _wxc_wxBitmap_SetWidth(rawValue, newValue)
        }
    }
    
    open func loadFile(name: String, type: wxBitmapType) -> Bool {
        return name.withWxString {
            return _wxc_wxBitmap_LoadFile(rawValue, $0, type.rawValue)
        }
    }
    
    open func isOK() -> Bool {
        return _wxc_wxBitmap_IsOk(rawValue)
    }
    
    open func saveFile(name: String, type: wxBitmapType, palette: wxPalette? = nil) -> Bool {
        return name.withWxString {
            return _wxc_wxBitmap_SaveFile(rawValue, $0, type.rawValue, palette?.rawValue)
        }
    }
}
