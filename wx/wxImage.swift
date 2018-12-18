//
//  wxImage.swift
//  wxSwift
//
//  Created by Юрий Вовк on 15/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

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

public enum wxImageResizeQuality: CInt {
    public static let wxIMAGE_QUALITY_NORMAL: wxImageResizeQuality = .wxIMAGE_QUALITY_NEAREST
    
    case wxIMAGE_QUALITY_NEAREST = 0
    case wxIMAGE_QUALITY_BILINEAR = 1
    case wxIMAGE_QUALITY_BICUBIC = 2
    case wxIMAGE_QUALITY_BOX_AVERAGE = 3
    case wxIMAGE_QUALITY_HIGH = 4
}

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
        
        set {
            _wxc_wxImage_SetData(rawValue, newValue)
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
    
    open var hasMask: Bool {
        get {
            return _wxc_wxImage_HasMask(rawValue)
        }
        
        set {
            _wxc_wxImage_SetMask(rawValue, newValue)
        }
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
    
    @discardableResult
    open func load(from file: String, type: wxBitmapType = .wxBITMAP_TYPE_ANY, index: CInt = -1) -> Bool {
        return file.withWxString {
            return _wxc_wxImage_LoadFile(rawValue, $0, type.rawValue, index)
        }
    }
    
    @discardableResult
    open func load<T: wxInputStream>(from stream: T, type: wxBitmapType = .wxBITMAP_TYPE_ANY, index: CInt = -1) -> Bool {
        return _wxc_wxImage_LoadStream(rawValue, stream.rawValue, type.rawValue, index)
    }
    
    open func mirrored(horizontally: Bool = true) -> Self {
        let _mirrored = type(of: self).init()
        
        _wxc_wxImage_Mirror(rawValue, horizontally, _mirrored.rawValue)
        
        return _mirrored
    }
    
    open func isOK() -> Bool {
        return _wxc_wxImage_IsOk(rawValue)
    }
    
    open func paste(_ image: wxImage, at point: Point) {
        _wxc_wxImage_Paste(rawValue, image.rawValue, point.x, point.y)
    }
    
    open func replace(_ rgb: (red: UInt8, green: UInt8, blue: UInt8), with other: (red: UInt8, green: UInt8, blue: UInt8)) {
        _wxc_wxImage_Replace(rawValue, rgb.red, rgb.green, rgb.blue, other.red, other.green, other.blue)
    }
    
    open func rescale(to size: Size, quality: wxImageResizeQuality = .wxIMAGE_QUALITY_NORMAL) {
        _wxc_wxImage_RescaleEx(rawValue, size.width, size.height, quality.rawValue)
    }
    
    open func rotated(by angle: CDouble, about rotationCentre: Point, interpolating: Bool = true, offsetAfterRotation: Point? = nil) -> Self {
        let _rotated = type(of: self).init()
        
        var _offsetAfterRotation: CVoidPtr = nil
        
        if let offsetAfterRotation = offsetAfterRotation {
            _offsetAfterRotation = _wxc_wxPoint_Create(offsetAfterRotation.x, offsetAfterRotation.y)
            
            defer {
                _wxc_wxPoint_Delete(_offsetAfterRotation)
            }
        }
        
        _wxc_wxImage_Rotate(rawValue, angle, rotationCentre.x, rotationCentre.y, interpolating, _offsetAfterRotation, _rotated.rawValue)
        
        return _rotated
    }
    
    open func rotatedBy90(clockwise: Bool = true) -> Self {
        let _rotated = type(of: self).init()
        
        _wxc_wxImage_Rotate90(rawValue, clockwise, _rotated.rawValue)
        
        return _rotated
    }
    
    @discardableResult
    open func save(to file: String, type: wxBitmapType) -> Bool {
        return file.withWxString {
            return _wxc_wxImage_SaveFile(rawValue, $0, type.rawValue)
        }
    }
    
    @discardableResult
    open func save<T: wxOutputStream>(to stream: T, type: wxBitmapType) -> Bool {
        return _wxc_wxImage_SaveStream(rawValue, stream.rawValue, type.rawValue)
    }
    
    open func scaled(to size: Size, quality: wxImageResizeQuality = .wxIMAGE_QUALITY_NORMAL) -> Self {
        let _scaled = type(of: self).init()
        
        _wxc_wxImage_ScaleEx(rawValue, size.width, size.height, quality.rawValue, _scaled.rawValue)
        
        return _scaled
    }
    
    open func setData(_ data: UnsafePointer<UInt8>!, size: Size, isStatic: Bool = true) {
        _wxc_wxImage_SetDataAndSize(rawValue, data, size.width, size.height, isStatic)
    }
    
    open func setMaskColour(_ value: (red: UInt8, green: UInt8, blue: UInt8)) {
        _wxc_wxImage_SetMaskColour(rawValue, value.red, value.green, value.blue)
    }
    
    open func setOption(_ option: String, value: String) {
        option.withWxString {_option in
            value.withWxString {_value in
                _wxc_wxImage_SetOption(rawValue, _option, _value)
            }
        }
    }
    
    open func setOptionInt(_ option: String, value: CInt) {
        option.withWxString {
            _wxc_wxImage_SetOptionInt(rawValue, $0, value)
        }
    }
    
    open func setRGB(_ value: (red: UInt8, green: UInt8, blue: UInt8), at point: Point) {
        _wxc_wxImage_SetRGB(rawValue, point.x, point.y, value.red, value.green, value.blue)
    }
    
    open func setAlpha(_ value: UInt8, at point: Point) {
        _wxc_wxImage_SetAlpha(rawValue, point.x, point.y, value)
    }
    
    open func setColour(_ value: wxColour, at point: Point) {
        _wxc_wxImage_SetRGB(rawValue, point.x, point.y, value.red, value.green, value.blue)
        _wxc_wxImage_SetAlpha(rawValue, point.x, point.y, value.alpha)
    }
}
