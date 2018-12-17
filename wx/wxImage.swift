//
//  wxImage.swift
//  wxSwift
//
//  Created by Юрий Вовк on 15/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxImage_CreateFromDataEx")
fileprivate func wxImage_CreateFromDataEx(_ w: CInt, _ h: CInt, _ data: UnsafePointer<UInt8>!, _ isStatic: CBool) -> CVoidPtr
internal func _wxc_wxImage_CreateFromDataEx(_ w: CInt, _ h: CInt, _ data: UnsafePointer<UInt8>!, _ isStatic: CBool) -> CVoidPtr {
    return wxImage_CreateFromDataEx(w, h, data, isStatic)
}

@_silgen_name("wxImage_Delete")
fileprivate func wxImage_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxImage_Delete(_ ptr: CVoidPtr) -> Void {
    wxImage_Delete(ptr)
}

@_silgen_name("wxImage_CanRead")
fileprivate func wxImage_CanRead(_ fileName: CVoidPtr) -> CBool
internal func _wxc_wxImage_CanRead(_ fileName: CVoidPtr) -> CBool {
    return wxImage_CanRead(fileName)
}

@_silgen_name("wxImage_ConvertToBitmap")
fileprivate func wxImage_ConvertToBitmap(_ ptr: CVoidPtr, _ bitmap: CVoidPtr) -> Void
internal func _wxc_wxImage_ConvertToBitmap(_ ptr: CVoidPtr, _ bitmap: CVoidPtr) -> Void {
    wxImage_ConvertToBitmap(ptr, bitmap)
}

@_silgen_name("wxImage_ConvertToByteString")
fileprivate func wxImage_ConvertToByteString(_ ptr: CVoidPtr, _ type: CInt, _ data: UnsafeMutablePointer<UInt8>!) -> Int
internal func _wxc_wxImage_ConvertToByteString(_ ptr: CVoidPtr, _ type: CInt, _ data: UnsafeMutablePointer<UInt8>!) -> Int {
    return wxImage_ConvertToByteString(ptr, type, data)
}

@_silgen_name("wxImage_CountColours")
fileprivate func wxImage_CountColours(_ ptr: CVoidPtr, _ stopafter: CInt) -> CInt
internal func _wxc_wxImage_CountColours(_ ptr: CVoidPtr, _ stopafter: CInt) -> CInt {
    return wxImage_CountColours(ptr, stopafter)
}

@_silgen_name("wxImage_Copy")
fileprivate func wxImage_Copy(_ ptr: CVoidPtr, _ copy: CVoidPtr) -> Void
internal func _wxc_wxImage_Copy(_ ptr: CVoidPtr, _ copy: CVoidPtr) -> Void {
    wxImage_Copy(ptr, copy)
}

@_silgen_name("wxImage_CreateDefault")
fileprivate func wxImage_CreateDefault() -> CVoidPtr
internal func _wxc_wxImage_CreateDefault() -> CVoidPtr {
    return wxImage_CreateDefault()
}

@_silgen_name("wxImage_CreateFromBitmap")
fileprivate func wxImage_CreateFromBitmap(_ bitmap: CVoidPtr) -> CVoidPtr
internal func _wxc_wxImage_CreateFromBitmap(_ bitmap: CVoidPtr) -> CVoidPtr {
    return wxImage_CreateFromBitmap(bitmap)
}

@_silgen_name("wxImage_CreateFromFile")
fileprivate func wxImage_CreateFromFile(_ name: CVoidPtr) -> CVoidPtr
internal func _wxc_wxImage_CreateFromFile(_ name: CVoidPtr) -> CVoidPtr {
    return wxImage_CreateFromFile(name)
}

@_silgen_name("wxImage_CreateSized")
fileprivate func wxImage_CreateSized(_ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_wxImage_CreateSized(_ w: CInt, _ h: CInt) -> CVoidPtr {
    return wxImage_CreateSized(w, h)
}

@_silgen_name("wxImage_Destroy")
fileprivate func wxImage_Destroy(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxImage_Destroy(_ ptr: CVoidPtr) -> Void {
    wxImage_Destroy(ptr)
}

@_silgen_name("wxImage_GetBlue")
fileprivate func wxImage_GetBlue(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> UInt8
internal func _wxc_wxImage_GetBlue(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> UInt8 {
    return wxImage_GetBlue(ptr, x, y)
}

@_silgen_name("wxImage_GetData")
fileprivate func wxImage_GetData(_ ptr: CVoidPtr) -> UnsafeMutablePointer<UInt8>!
internal func _wxc_wxImage_GetData(_ ptr: CVoidPtr) -> UnsafeMutablePointer<UInt8>! {
    return wxImage_GetData(ptr)
}

@_silgen_name("wxImage_GetGreen")
fileprivate func wxImage_GetGreen(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> UInt8
internal func _wxc_wxImage_GetGreen(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> UInt8 {
    return wxImage_GetGreen(ptr, x, y)
}

@_silgen_name("wxImage_GetRed")
fileprivate func wxImage_GetRed(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> UInt8
internal func _wxc_wxImage_GetRed(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> UInt8 {
    return wxImage_GetRed(ptr, x, y)
}

@_silgen_name("wxImage_GetAlpha")
fileprivate func wxImage_GetAlpha(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> UInt8
internal func _wxc_wxImage_GetAlpha(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> UInt8 {
    return wxImage_GetAlpha(ptr, x, y)
}

@_silgen_name("wxImage_GetHeight")
fileprivate func wxImage_GetHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxImage_GetHeight(_ ptr: CVoidPtr) -> CInt {
    return wxImage_GetHeight(ptr)
}

@_silgen_name("wxImage_GetMaskBlue")
fileprivate func wxImage_GetMaskBlue(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxImage_GetMaskBlue(_ ptr: CVoidPtr) -> UInt8 {
    return wxImage_GetMaskBlue(ptr)
}

@_silgen_name("wxImage_GetMaskGreen")
fileprivate func wxImage_GetMaskGreen(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxImage_GetMaskGreen(_ ptr: CVoidPtr) -> UInt8 {
    return wxImage_GetMaskGreen(ptr)
}

@_silgen_name("wxImage_GetMaskRed")
fileprivate func wxImage_GetMaskRed(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxImage_GetMaskRed(_ ptr: CVoidPtr) -> UInt8 {
    return wxImage_GetMaskRed(ptr)
}

@_silgen_name("wxImage_GetSubImage")
fileprivate func wxImage_GetSubImage(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ image: CVoidPtr) -> Void
internal func _wxc_wxImage_GetSubImage(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ image: CVoidPtr) -> Void {
    wxImage_GetSubImage(ptr, x, y, w, h, image)
}

@_silgen_name("wxImage_GetType")
fileprivate func wxImage_GetType(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxImage_GetType(_ ptr: CVoidPtr) -> CInt {
    return wxImage_GetType(ptr)
}

@_silgen_name("wxImage_SetType")
fileprivate func wxImage_SetType(_ ptr: CVoidPtr, _ type: CInt) -> Void
internal func _wxc_wxImage_SetType(_ ptr: CVoidPtr, _ type: CInt) -> Void {
    wxImage_SetType(ptr, type)
}

@_silgen_name("wxImage_GetWidth")
fileprivate func wxImage_GetWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxImage_GetWidth(_ ptr: CVoidPtr) -> CInt {
    return wxImage_GetWidth(ptr)
}

@_silgen_name("wxImage_HasMask")
fileprivate func wxImage_HasMask(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxImage_HasMask(_ ptr: CVoidPtr) -> CBool {
    return wxImage_HasMask(ptr)
}

@_silgen_name("wxImage_GetOption")
fileprivate func wxImage_GetOption(_ ptr: CVoidPtr, _ option: CVoidPtr) -> CVoidPtr
internal func _wxc_wxImage_GetOption(_ ptr: CVoidPtr, _ option: CVoidPtr) -> CVoidPtr {
    return wxImage_GetOption(ptr, option)
}

@_silgen_name("wxImage_GetOptionInt")
fileprivate func wxImage_GetOptionInt(_ ptr: CVoidPtr, _ option: CVoidPtr) -> CInt
internal func _wxc_wxImage_GetOptionInt(_ ptr: CVoidPtr, _ option: CVoidPtr) -> CInt {
    return wxImage_GetOptionInt(ptr, option)
}

@_silgen_name("wxImage_HasOption")
fileprivate func wxImage_HasOption(_ ptr: CVoidPtr, _ option: CVoidPtr) -> CBool
internal func _wxc_wxImage_HasOption(_ ptr: CVoidPtr, _ option: CVoidPtr) -> CBool {
    return wxImage_HasOption(ptr, option)
}

@_silgen_name("wxImage_Initialize")
fileprivate func wxImage_Initialize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxImage_Initialize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void {
    wxImage_Initialize(ptr, w, h)
}

@_silgen_name("wxImage_InitializeFromData")
fileprivate func wxImage_InitializeFromData(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt, _ data: UnsafePointer<UInt8>!) -> Void
internal func _wxc_wxImage_InitializeFromData(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt, _ data: UnsafePointer<UInt8>!) -> Void {
    wxImage_InitializeFromData(ptr, w, h, data)
}

public let wxIMAGE_OPTION_QUALITY = "quality"
public let wxIMAGE_OPTION_FILENAME = "FileName"
public let wxIMAGE_OPTION_RESOLUTION = "Resolution"
public let wxIMAGE_OPTION_RESOLUTIONX = "ResolutionX"
public let wxIMAGE_OPTION_RESOLUTIONY = "ResolutionY"
public let wxIMAGE_OPTION_RESOLUTIONUNIT = "ResolutionUnit"
public let wxIMAGE_OPTION_MAX_WIDTH = "MaxWidth"
public let wxIMAGE_OPTION_MAX_HEIGHT = "MaxHeight"
public let wxIMAGE_OPTION_ORIGINAL_WIDTH = "OriginalWidth"
public let wxIMAGE_OPTION_ORIGINAL_HEIGHT = "OriginalHeight"
public let wxIMAGE_OPTION_BMP_FORMAT = "wxBMP_FORMAT"
public let wxIMAGE_OPTION_CUR_HOTSPOT_X = "HotSpotX"
public let wxIMAGE_OPTION_CUR_HOTSPOT_Y = "HotSpotY"
public let wxIMAGE_OPTION_GIF_COMMENT = "GifComment"
public let wxIMAGE_OPTION_GIF_TRANSPARENCY = "Transparency"
public let wxIMAGE_OPTION_GIF_TRANSPARENCY_HIGHLIGHT = "Highlight"
public let wxIMAGE_OPTION_GIF_TRANSPARENCY_UNCHANGED = "Unchanged"
public let wxIMAGE_OPTION_PNG_FORMAT = "PngFormat"
public let wxIMAGE_OPTION_PNG_BITDEPTH = "PngBitDepth"
public let wxIMAGE_OPTION_PNG_FILTER = "PngF"
public let wxIMAGE_OPTION_PNG_COMPRESSION_LEVEL = "PngZL"
public let wxIMAGE_OPTION_PNG_COMPRESSION_MEM_LEVEL = "PngZM"
public let wxIMAGE_OPTION_PNG_COMPRESSION_STRATEGY = "PngZS"
public let wxIMAGE_OPTION_PNG_COMPRESSION_BUFFER_SIZE = "PngZB"
public let wxIMAGE_OPTION_TIFF_BITSPERSAMPLE = "BitsPerSample"
public let wxIMAGE_OPTION_TIFF_SAMPLESPERPIXEL = "SamplesPerPixel"
public let wxIMAGE_OPTION_TIFF_COMPRESSION = "Compression"
public let wxIMAGE_OPTION_TIFF_PHOTOMETRIC = "Photometric"
public let wxIMAGE_OPTION_TIFF_IMAGEDESCRIPTOR = "ImageDescriptor"

open class wxImage: wxObject, wxCopying {
    
    open class func canRead(file: String) -> Bool {
        return file.withWxString {
            return _wxc_wxImage_CanRead($0)
        }
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(bytes: UnsafePointer<UInt8>!, size: Size, isStatic: Bool = true) {
        super.init(rawValue: _wxc_wxImage_CreateFromDataEx(size.width, size.height, bytes, isStatic))!
    }
    
    public init(_ bitmap: wxBitmap) {
        super.init(rawValue: _wxc_wxImage_CreateFromBitmap(bitmap.rawValue))!
    }
    
    public required init() {
        super.init(rawValue: _wxc_wxImage_CreateDefault())!
    }
    
    public init(contentsOf file: String) {
        let _fileName = _wxc_wxString_CreateUTF8(file)
        
        defer {
            _wxc_wxString_Delete(_fileName)
        }
        
        super.init(rawValue: _wxc_wxImage_CreateFromFile(_fileName))!
    }
    
    public init(size: Size) {
        super.init(rawValue: _wxc_wxImage_CreateSized(size.width, size.height))!
    }
    
    public override func delete() {
        guard rawValue != nil else {
            return
        }
        
        _wxc_wxImage_Delete(rawValue)
        rawValue = nil
    }
    
    open func destroy() {
        guard rawValue != nil else {
            return
        }
        
        _wxc_wxImage_Destroy(rawValue)
    }
    
    open func convertToBitmap() -> wxBitmap {
        let bitmap = wxBitmap()
        
        _wxc_wxImage_ConvertToBitmap(rawValue, bitmap.rawValue)
        
        return bitmap
    }
    
    open func bytesRepresentation(type: wxBitmapType) -> UnsafeMutableBufferPointer<UInt8>? {
        let len = _wxc_wxImage_ConvertToByteString(rawValue, type.rawValue, nil)
        
        guard len > 0 else {
            return nil
        }
        
        let buffer = UnsafeMutableBufferPointer<UInt8>.allocate(capacity: len)
        buffer.initialize(repeating: 0)
        
        guard _wxc_wxImage_ConvertToByteString(rawValue, type.rawValue, buffer.baseAddress) == len else {
            buffer.deallocate()
            return nil
        }
        
        return buffer
    }
    
    open func countColours(stopAfter: CInt = -1) -> CInt {
        return _wxc_wxImage_CountColours(rawValue, stopAfter)
    }
    
    open func copy() -> Self {
        let copy = type(of: self).init()
        
        _wxc_wxImage_Copy(rawValue, copy.rawValue)
        
        return copy
    }
    
    open var data: UnsafeMutablePointer<UInt8>! {
        get {
            return _wxc_wxImage_GetData(rawValue)
        }
    }
    
    open func getBlue(at point: Point) -> UInt8 {
        return _wxc_wxImage_GetBlue(rawValue, point.x, point.y)
    }
    
    open func getGreen(at point: Point) -> UInt8 {
        return _wxc_wxImage_GetGreen(rawValue, point.x, point.y)
    }
    
    open func getRed(at point: Point) -> UInt8 {
        return _wxc_wxImage_GetRed(rawValue, point.x, point.y)
    }
    
    open func getAlpha(at point: Point) -> UInt8 {
        return _wxc_wxImage_GetAlpha(rawValue, point.x, point.y)
    }
    
    open func getColour(at point: Point) -> wxColour {
        return wxColour(red: getRed(at: point), green: getGreen(at: point), blue: getBlue(at: point), alpha: getAlpha(at: point))
    }
    
    open var height: CInt {
        get {
            return _wxc_wxImage_GetHeight(rawValue)
        }
    }
    
    open func getMaskBlue() -> UInt8 {
        return _wxc_wxImage_GetMaskBlue(rawValue)
    }
    
    open func getMaskGreen() -> UInt8 {
        return _wxc_wxImage_GetMaskGreen(rawValue)
    }
    
    open func getMaskRed() -> UInt8 {
        return _wxc_wxImage_GetMaskRed(rawValue)
    }
    
    open func subimage(rect: Rect) -> wxImage {
        let subimage = wxImage()
        
        _wxc_wxImage_GetSubImage(rawValue, rect.x, rect.y, rect.width, rect.height, subimage.rawValue)
        
        return subimage
    }
    
    open var imageType: wxBitmapType! {
        get {
            return wxBitmapType(rawValue: _wxc_wxImage_GetType(rawValue))
        }
        
        set {
            _wxc_wxImage_SetType(rawValue, newValue.rawValue)
        }
    }
    
    open var width: CInt {
        get {
            return _wxc_wxImage_GetWidth(rawValue)
        }
    }
    
    open func hasMask() -> Bool {
        return _wxc_wxImage_HasMask(rawValue)
    }
    
    open func getOption(_ option: String) -> String {
        return option.withWxString {
            return String(wxString: _wxc_wxImage_GetOption(rawValue, $0))!
        }
    }
    
    open func getOptionInt(_ option: String) -> CInt {
        return option.withWxString {
            return _wxc_wxImage_GetOptionInt(rawValue, $0)
        }
    }
    
    open func hasOption(_ option: String) -> Bool {
        return option.withWxString {
            return _wxc_wxImage_HasOption(rawValue, $0)
        }
    }
    
    open func initialize(size: Size) {
        _wxc_wxImage_Initialize(rawValue, size.width, size.height)
    }
    
    open func initialize(with data: UnsafePointer<UInt8>!, size: Size) {
        _wxc_wxImage_InitializeFromData(rawValue, size.width, size.height, data)
    }
}
