//
//  wxFont.swift
//  wxSwift
//
//  Created by Юрий Вовк on 19/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxFont_Create")
fileprivate func wxFont_Create(_ pointSize: CInt, _ family: CInt, _ style: CInt, _ weight: CInt, _ underlined: CBool, _ face: CVoidPtr, _ encoding: CInt) -> CVoidPtr
internal func _wxc_wxFont_Create(_ pointSize: CInt, _ family: CInt, _ style: CInt, _ weight: CInt, _ underlined: CBool, _ face: CVoidPtr, _ encoding: CInt) -> CVoidPtr {
    return wxFont_Create(pointSize, family, style, weight, underlined, face, encoding)
}

@_silgen_name("wxFont_CreateFromStock")
fileprivate func wxFont_CreateFromStock(_ _id: CInt) -> CVoidPtr
internal func _wxc_wxFont_CreateFromStock(_ _id: CInt) -> CVoidPtr {
    return wxFont_CreateFromStock(_id)
}

@_silgen_name("wxFont_CreateDefault")
fileprivate func wxFont_CreateDefault() -> CVoidPtr
internal func _wxc_wxFont_CreateDefault() -> CVoidPtr {
    return wxFont_CreateDefault()
}

@_silgen_name("wxFont_Delete")
fileprivate func wxFont_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxFont_Delete(_ ptr: CVoidPtr) -> Void {
    wxFont_Delete(ptr)
}

@_silgen_name("wxFont_GetDefaultEncoding")
fileprivate func wxFont_GetDefaultEncoding(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxFont_GetDefaultEncoding(_ ptr: CVoidPtr) -> CInt {
    return wxFont_GetDefaultEncoding(ptr)
}

@_silgen_name("wxFont_SetDefaultEncoding")
fileprivate func wxFont_SetDefaultEncoding(_ ptr: CVoidPtr, _ enc: CInt) -> Void
internal func _wxc_wxFont_SetDefaultEncoding(_ ptr: CVoidPtr, _ enc: CInt) -> Void {
    wxFont_SetDefaultEncoding(ptr, enc)
}

@_silgen_name("wxFont_GetEncoding")
fileprivate func wxFont_GetEncoding(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxFont_GetEncoding(_ ptr: CVoidPtr) -> CInt {
    return wxFont_GetEncoding(ptr)
}

@_silgen_name("wxFont_SetEncoding")
fileprivate func wxFont_SetEncoding(_ ptr: CVoidPtr, _ enc: CInt) -> Void
internal func _wxc_wxFont_SetEncoding(_ ptr: CVoidPtr, _ enc: CInt) -> Void {
    wxFont_SetEncoding(ptr, enc)
}

@_silgen_name("wxFont_GetFaceName")
fileprivate func wxFont_GetFaceName(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFont_GetFaceName(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFont_GetFaceName(ptr)
}

@_silgen_name("wxFont_SetFaceName")
fileprivate func wxFont_SetFaceName(_ ptr: CVoidPtr, _ face: CVoidPtr) -> Void
internal func _wxc_wxFont_SetFaceName(_ ptr: CVoidPtr, _ face: CVoidPtr) -> Void {
    wxFont_SetFaceName(ptr, face)
}

@_silgen_name("wxFont_GetFamily")
fileprivate func wxFont_GetFamily(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxFont_GetFamily(_ ptr: CVoidPtr) -> CInt {
    return wxFont_GetFamily(ptr)
}

@_silgen_name("wxFont_SetFamily")
fileprivate func wxFont_SetFamily(_ ptr: CVoidPtr, _ family: CInt) -> Void
internal func _wxc_wxFont_SetFamily(_ ptr: CVoidPtr, _ family: CInt) -> Void {
    wxFont_SetFamily(ptr, family)
}

@_silgen_name("wxFont_GetFamilyString")
fileprivate func wxFont_GetFamilyString(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFont_GetFamilyString(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFont_GetFamilyString(ptr)
}

@_silgen_name("wxFont_GetPointSize")
fileprivate func wxFont_GetPointSize(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxFont_GetPointSize(_ ptr: CVoidPtr) -> CInt {
    return wxFont_GetPointSize(ptr)
}

@_silgen_name("wxFont_SetPointSize")
fileprivate func wxFont_SetPointSize(_ ptr: CVoidPtr, _ size: CInt) -> Void
internal func _wxc_wxFont_SetPointSize(_ ptr: CVoidPtr, _ size: CInt) -> Void {
    wxFont_SetPointSize(ptr, size)
}

@_silgen_name("wxFont_GetStyle")
fileprivate func wxFont_GetStyle(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxFont_GetStyle(_ ptr: CVoidPtr) -> CInt {
    return wxFont_GetStyle(ptr)
}

@_silgen_name("wxFont_SetStyle")
fileprivate func wxFont_SetStyle(_ ptr: CVoidPtr, _ style: CInt) -> Void
internal func _wxc_wxFont_SetStyle(_ ptr: CVoidPtr, _ style: CInt) -> Void {
    wxFont_SetStyle(ptr, style)
}

@_silgen_name("wxFont_GetStyleString")
fileprivate func wxFont_GetStyleString(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFont_GetStyleString(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFont_GetStyleString(ptr)
}

@_silgen_name("wxFont_GetUnderlined")
fileprivate func wxFont_GetUnderlined(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxFont_GetUnderlined(_ ptr: CVoidPtr) -> CBool {
    return wxFont_GetUnderlined(ptr)
}

@_silgen_name("wxFont_SetUnderlined")
fileprivate func wxFont_SetUnderlined(_ ptr: CVoidPtr, _ value: CBool) -> Void
internal func _wxc_wxFont_SetUnderlined(_ ptr: CVoidPtr, _ value: CBool) -> Void {
    wxFont_SetUnderlined(ptr, value)
}

@_silgen_name("wxFont_GetWeight")
fileprivate func wxFont_GetWeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxFont_GetWeight(_ ptr: CVoidPtr) -> CInt {
    return wxFont_GetWeight(ptr)
}

@_silgen_name("wxFont_SetWeight")
fileprivate func wxFont_SetWeight(_ ptr: CVoidPtr, _ weight: CInt) -> Void
internal func _wxc_wxFont_SetWeight(_ ptr: CVoidPtr, _ weight: CInt) -> Void {
    wxFont_SetWeight(ptr, weight)
}

@_silgen_name("wxFont_GetWeightString")
fileprivate func wxFont_GetWeightString(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFont_GetWeightString(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFont_GetWeightString(ptr)
}

@_silgen_name("wxFont_IsOk")
fileprivate func wxFont_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxFont_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxFont_IsOk(ptr)
}

public final class wxFont: wxObject {
    
    public enum Family: CInt {
        case Default = 70
        case Decorative
        case Roman
        case Script
        case Swiss
        case Modern
        case Teletype
        case Max
        public static let Unknown: wxFont.Family = .Max
    }
    
    public enum Style: CInt {
        case Normal = 90
        case Italic = 93
        case Slant
        case Max
    }
    
    public enum Weight: CInt {
        case Normal = 90
        case Light
        case Bold
        case Max
    }
    
    public enum Encoding: CInt {
        case System = -1
        case Default
        case ISO8859_1
        case ISO8859_2
        case ISO8859_3
        case ISO8859_4
        case ISO8859_5
        case ISO8859_6
        case ISO8859_7
        case ISO8859_8
        case ISO8859_9
        case ISO8859_10
        case ISO8859_11
        case ISO8859_12
        case ISO8859_13
        case ISO8859_14
        case ISO8859_15
        case ISO8859_MAX
        case KOI8
        case KOI8_U
        case Alternative
        case Bulgarian
        case CP437
        case CP850
        case CP852
        case CP855
        case CP866
        case CP874
        case CP932
        case CP936
        case CP949
        case CP950
        case CP1250
        case CP1251
        case CP1252
        case CP1253
        case CP1254
        case CP1255
        case CP1256
        case CP1257
        case CP1258
        case CP1361
        case CP12_MAX
        case UTF7
        case UTF8
        case EUC_JP
        case UTF16BE
        case UTF16LE
        case UTF32BE
        case UTF32LE
        case MacRoman
        case MacJapanese
        case MacChineseTrad
        case MacKorean
        case MacArabic
        case MacHebrew
        case MacGreek
        case MacCyrillic
        case MacDevanagary
        case MacGurmukhi
        case MacGujarati
        case MacOriya
        case MacBengali
        case MacTamil
        case MacTelugu
        case MacKannada
        case MacMalajalam
        case MacSinahalese
        case MacBurmese
        case MacKhmer
        case MacThai
        case MacLaotian
        case MacGeorgian
        case MacArmenian
        case MacChineseSimpl
        case MacTibetan
        case MacMongolian
        case MacEthiopic
        case MacCentralEUR
        case MacViatnamese
        case MacArabicExt
        case MacSymbol
        case MacDingbats
        case MacTurkish
        case MacCroatian
        case MacIcelandic
        case MacRomanian
        case MacCeltic
        case MacGaelic
        case MacKeyboard
        case ISO2022_JP
        case Max
        public static let MacMin: wxFont.Encoding = .MacRoman
        public static let MacMax: wxFont.Encoding = .MacKeyboard
        public static let UTF16: wxFont.Encoding = {
            let number: UInt32 = 0x12345678
            let converted = number.bigEndian
            if number == converted {
                return wxFont.Encoding.UTF16BE
            } else {
                return wxFont.Encoding.UTF16LE
            }
        }()
        public static let UTF32: wxFont.Encoding = {
            let number: UInt32 = 0x12345678
            let converted = number.bigEndian
            if number == converted {
                return wxFont.Encoding.UTF32BE
            } else {
                return wxFont.Encoding.UTF32LE
            }
        }()
        public static let Unicode: wxFont.Encoding = {
            guard MemoryLayout<CWideChar>.size == 2 else {
                return wxFont.Encoding.UTF32
            }
            
            return wxFont.Encoding.UTF16
        }()
        public static let GB2312: wxFont.Encoding = .CP936
        public static let BIG5: wxFont.Encoding = .CP950
        public static let SHIFT_JIS: wxFont.Encoding = .CP932
        public static let EUC_KR: wxFont.Encoding = .CP949
        public static let JOHAB: wxFont.Encoding = .CP1361
        public static let Vietnamese: wxFont.Encoding = .CP1258
    }
    
    public class func fromStock(_ stockID: wxStockGDI.FONT) -> wxFont {
        return wxFont(rawValue: _wxc_wxFont_CreateFromStock(stockID.rawValue))!
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init() {
        super.init(rawValue: _wxc_wxFont_CreateDefault())!
    }
    
    public init(pointSize: CInt, family: wxFont.Family, style: wxFont.Style, weight: wxFont.Weight, underlined: Bool = false, faceName face: String, encoding: wxFont.Encoding) {
        let _face = _wxc_wxString_CreateUTF8(face)
        
        defer {
            _wxc_wxString_Delete(_face)
        }
        
        super.init(rawValue: _wxc_wxFont_Create(pointSize, family.rawValue, style.rawValue, weight.rawValue, underlined, _face, encoding.rawValue))!
    }
    
    deinit {
        _wxc_wxFont_Delete(rawValue)
    }
    
    public var defaultEncoding: wxFont.Encoding {
        get {
            return wxFont.Encoding(rawValue: _wxc_wxFont_GetDefaultEncoding(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetDefaultEncoding(rawValue, newValue.rawValue)
        }
    }
    
    public var encoding: wxFont.Encoding {
        get {
            return wxFont.Encoding(rawValue: _wxc_wxFont_GetEncoding(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetEncoding(rawValue, newValue.rawValue)
        }
    }
    
    public var faceName: String {
        get {
            return String(wxString: _wxc_wxFont_GetFaceName(rawValue))!
        }
        
        set {
            newValue.withWxString {
                _wxc_wxFont_SetFaceName(rawValue, $0)
            }
        }
    }
    
    public var family: wxFont.Family {
        get {
            return wxFont.Family(rawValue: _wxc_wxFont_GetFamily(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetFamily(rawValue, newValue.rawValue)
        }
    }
    
    public var familyString: String {
        get {
            return String(wxString: _wxc_wxFont_GetFamilyString(rawValue))!
        }
    }
    
    public var pointSize: CInt {
        get {
            return _wxc_wxFont_GetPointSize(rawValue)
        }
        
        set {
            _wxc_wxFont_SetPointSize(rawValue, newValue)
        }
    }
    
    public var style: wxFont.Style {
        get {
            return wxFont.Style(rawValue: _wxc_wxFont_GetStyle(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetStyle(rawValue, newValue.rawValue)
        }
    }
    
    public var styleString: String {
        get {
            return String(wxString: _wxc_wxFont_GetStyleString(rawValue))!
        }
    }
    
    public var underlined: Bool {
        get {
            return _wxc_wxFont_GetUnderlined(rawValue)
        }
        
        set {
            _wxc_wxFont_SetUnderlined(rawValue, newValue)
        }
    }
    
    public var weight: wxFont.Weight {
        get {
            return wxFont.Weight(rawValue: _wxc_wxFont_GetWeight(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetWeight(rawValue, newValue.rawValue)
        }
    }
    
    public var weightString: String {
        get {
            return String(wxString: _wxc_wxFont_GetWeightString(rawValue))!
        }
    }
    
    public var isOK: Bool {
        get {
            return _wxc_wxFont_IsOk(rawValue)
        }
    }
}