//
//  wxFont.swift
//  wxSwift
//
//  Created by Юрий Вовк on 19/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxFont: wxObject {
    
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
    
    open var defaultEncoding: wxFont.Encoding {
        get {
            return wxFont.Encoding(rawValue: _wxc_wxFont_GetDefaultEncoding(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetDefaultEncoding(rawValue, newValue.rawValue)
        }
    }
    
    open var encoding: wxFont.Encoding {
        get {
            return wxFont.Encoding(rawValue: _wxc_wxFont_GetEncoding(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetEncoding(rawValue, newValue.rawValue)
        }
    }
    
    open var faceName: String {
        get {
            return String(wxString: _wxc_wxFont_GetFaceName(rawValue))!
        }
        
        set {
            newValue.withWxString {
                _wxc_wxFont_SetFaceName(rawValue, $0)
            }
        }
    }
    
    open var family: wxFont.Family {
        get {
            return wxFont.Family(rawValue: _wxc_wxFont_GetFamily(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetFamily(rawValue, newValue.rawValue)
        }
    }
    
    open var familyString: String {
        get {
            return String(wxString: _wxc_wxFont_GetFamilyString(rawValue))!
        }
    }
    
    open var pointSize: CInt {
        get {
            return _wxc_wxFont_GetPointSize(rawValue)
        }
        
        set {
            _wxc_wxFont_SetPointSize(rawValue, newValue)
        }
    }
    
    open var style: wxFont.Style {
        get {
            return wxFont.Style(rawValue: _wxc_wxFont_GetStyle(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetStyle(rawValue, newValue.rawValue)
        }
    }
    
    open var styleString: String {
        get {
            return String(wxString: _wxc_wxFont_GetStyleString(rawValue))!
        }
    }
    
    open var underlined: Bool {
        get {
            return _wxc_wxFont_GetUnderlined(rawValue)
        }
        
        set {
            _wxc_wxFont_SetUnderlined(rawValue, newValue)
        }
    }
    
    open var weight: wxFont.Weight {
        get {
            return wxFont.Weight(rawValue: _wxc_wxFont_GetWeight(rawValue))!
        }
        
        set {
            _wxc_wxFont_SetWeight(rawValue, newValue.rawValue)
        }
    }
    
    open var weightString: String {
        get {
            return String(wxString: _wxc_wxFont_GetWeightString(rawValue))!
        }
    }
    
    open var isOK: Bool {
        get {
            return _wxc_wxFont_IsOk(rawValue)
        }
    }
}
