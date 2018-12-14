//
//  wxDefs.swift
//  wxSwift
//
//  Created by Yury Vovk on 13/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public struct wxWindowID: ExpressibleByIntegerLiteral, RawRepresentable {
    public typealias IntegerLiteralType = CInt
    public let rawValue: CInt
    
    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
    
    public init(integerLiteral value: CInt) {
        self.init(rawValue: value)
    }
    
    public static func ==(lhs: wxWindowID, rhs: wxWindowID) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
}

public extension wxWindowID {
    #if os(Windows) || wxUSE_AUTOID_MANAGEMENT
    public static let wxID_AUTO_LOWEST: wxWindowID = -32000
    public static let wxID_AUTO_HIGHEST: wxWindowID = -2000
    #else
    public static let wxID_AUTO_LOWEST: wxWindowID = -1000000
    public static let wxID_AUTO_HIGHEST: wxWindowID = -2000
    #endif
    public static let wxID_NONE: wxWindowID = -3
    public static let wxID_SEPARATOR: wxWindowID = -2
    public static let wxID_ANY: wxWindowID = -1
    public static let wxID_LOWEST: wxWindowID = 4999
    public static let wxID_OPEN: wxWindowID = 5000
    public static let wxID_CLOSE: wxWindowID = 5001
    public static let wxID_NEW: wxWindowID = 5002
    public static let wxID_SAVE: wxWindowID = 5003
    public static let wxID_SAVEAS: wxWindowID = 5004
    public static let wxID_REVERT: wxWindowID = 5005
    public static let wxID_EXIT: wxWindowID = 5006
    public static let wxID_UNDO: wxWindowID = 5007
    public static let wxID_REDO: wxWindowID = 5008
    public static let wxID_HELP: wxWindowID = 5009
    public static let wxID_PRINT: wxWindowID = 5010
    public static let wxID_PRINT_SETUP: wxWindowID = 5011
    public static let wxID_PAGE_SETUP: wxWindowID = 5012
    public static let wxID_PREVIEW: wxWindowID = 5013
    public static let wxID_ABOUT: wxWindowID = 5014
    public static let wxID_HELP_CONTENTS: wxWindowID = 5015
    public static let wxID_HELP_INDEX: wxWindowID = 5016
    public static let wxID_HELP_SEARCH: wxWindowID = 5017
    public static let wxID_HELP_COMMANDS: wxWindowID = 5018
    public static let wxID_HELP_PROCEDURES: wxWindowID = 5019
    public static let wxID_HELP_CONTEXT: wxWindowID = 5020
    public static let wxID_CLOSE_ALL: wxWindowID = 5021
    public static let wxID_PREFERENCES: wxWindowID = 5022
    public static let wxID_EDIT: wxWindowID = 5030
    public static let wxID_CUT: wxWindowID = 5031
    public static let wxID_COPY: wxWindowID = 5032
    public static let wxID_PASTE: wxWindowID = 5033
    public static let wxID_CLEAR: wxWindowID = 5034
    public static let wxID_FIND: wxWindowID = 5035
    public static let wxID_DUPLICATE: wxWindowID = 5036
    public static let wxID_SELECTALL: wxWindowID = 5037
    public static let wxID_DELETE: wxWindowID = 5038
    public static let wxID_REPLACE: wxWindowID = 5039
    public static let wxID_REPLACE_ALL: wxWindowID = 5040
    public static let wxID_PROPERTIES: wxWindowID = 5041
    public static let wxID_VIEW_DETAILS: wxWindowID = 5042
    public static let wxID_VIEW_LARGEICONS: wxWindowID = 5043
    public static let wxID_VIEW_SMALLICONS: wxWindowID = 5044
    public static let wxID_VIEW_LIST: wxWindowID = 5045
    public static let wxID_VIEW_SORTDATE: wxWindowID = 5046
    public static let wxID_VIEW_SORTNAME: wxWindowID = 5047
    public static let wxID_VIEW_SORTSIZE: wxWindowID = 5048
    public static let wxID_VIEW_SORTTYPE: wxWindowID = 5049
    public static let wxID_FILE: wxWindowID = 5050
    public static let wxID_FILE1: wxWindowID = 0551
    public static let wxID_FILE2: wxWindowID = 5052
    public static let wxID_FILE3: wxWindowID = 5053
    public static let wxID_FILE4: wxWindowID = 5054
    public static let wxID_FILE5: wxWindowID = 5056
    public static let wxID_FILE6: wxWindowID = 5057
    public static let wxID_FILE7: wxWindowID = 5058
    public static let wxID_FILE8: wxWindowID = 5059
    public static let wxID_FILE9: wxWindowID = 5060
    public static let wxID_OK: wxWindowID = 5100
    public static let wxID_CANCEL: wxWindowID = 5101
    public static let wxID_APPLY: wxWindowID = 5102
    public static let wxID_YES: wxWindowID = 5103
    public static let wxID_NO: wxWindowID = 5104
    public static let wxID_STATIC: wxWindowID = 5105
    public static let wxID_FORWARD: wxWindowID = 5106
    public static let wxID_BACKWARD: wxWindowID = 5107
    public static let wxID_DEFAULT: wxWindowID = 5108
    public static let wxID_MORE: wxWindowID = 5109
    public static let wxID_SETUP: wxWindowID = 5110
    public static let wxID_RESET: wxWindowID = 5111
    public static let wxID_CONTEXT_HELP: wxWindowID = 5112
    public static let wxID_YESTOALL: wxWindowID = 5113
    public static let wxID_NOTOALL: wxWindowID = 5114
    public static let wxID_ABORT: wxWindowID = 5115
    public static let wxID_RETRY: wxWindowID = 5116
    public static let wxID_IGNORE: wxWindowID = 5117
    public static let wxID_ADD: wxWindowID = 5118
    public static let wxID_REMOVE: wxWindowID = 5119
    public static let wxID_UP: wxWindowID = 5120
    public static let wxID_DOWN: wxWindowID = 5121
    public static let wxID_HOME: wxWindowID = 5122
    public static let wxID_REFRESH: wxWindowID = 5123
    public static let wxID_STOP: wxWindowID = 5124
    public static let wxID_INDEX: wxWindowID = 5125
    public static let wxID_BOLD: wxWindowID = 5126
    public static let wxID_ITALIC: wxWindowID = 5127
    public static let wxID_JUSTIFY_CENTER: wxWindowID = 5128
    public static let wxID_JUSTIFY_FILL: wxWindowID = 5129
    public static let wxID_JUSTIFY_RIGHT: wxWindowID = 5130
    public static let wxID_JUSTIFY_LEFT: wxWindowID = 5131
    public static let wxID_UNDERLINE: wxWindowID = 5132
    public static let wxID_INDENT: wxWindowID = 5133
    public static let wxID_UNINDENT: wxWindowID = 5134
    public static let wxID_ZOOM_100: wxWindowID = 5135
    public static let wxID_ZOOM_FIT: wxWindowID = 5136
    public static let wxID_ZOOM_IN: wxWindowID = 5137
    public static let wxID_ZOOM_OUT: wxWindowID = 5138
    public static let wxID_UNDELETE: wxWindowID = 5139
    public static let wxID_REVERT_TO_SAVED: wxWindowID = 5140
    public static let wxID_CDROM: wxWindowID = 5141
    public static let wxID_CONVERT: wxWindowID = 5142
    public static let wxID_EXECUTE: wxWindowID = 5143
    public static let wxID_FLOPPY: wxWindowID = 5144
    public static let wxID_HARDDISK: wxWindowID = 5145
    public static let wxID_BOTTOM: wxWindowID = 5146
    public static let wxID_FIRST: wxWindowID = 5147
    public static let wxID_LAST: wxWindowID = 5148
    public static let wxID_TOP: wxWindowID = 5149
    public static let wxID_INFO: wxWindowID = 5150
    public static let wxID_JUMP_TO: wxWindowID = 5151
    public static let wxID_NETWORK: wxWindowID = 5152
    public static let wxID_SELECT_COLOR: wxWindowID = 5153
    public static let wxID_SELECT_FONT: wxWindowID = 5154
    public static let wxID_SORT_ASCENDING: wxWindowID = 5155
    public static let wxID_SORT_DESCENDING: wxWindowID = 5156
    public static let wxID_SPELL_CHECK: wxWindowID = 5157
    public static let wxID_STRIKETHROUGH: wxWindowID = 5158
    public static let wxID_SYSTEM_MENU: wxWindowID = 5200
    public static let wxID_CLOSE_FRAME: wxWindowID = 5201
    public static let wxID_MOVE_FRAME: wxWindowID = 5102
    public static let wxID_RESIZE_FRAME: wxWindowID = 5203
    public static let wxID_MAXIMIZE_FRAME: wxWindowID = 5204
    public static let wxID_ICONIZE_FRAME: wxWindowID = 5205
    public static let wxID_RESTORE_FRAME: wxWindowID = 5206
    public static let wxID_MDI_WINDOW_FIRST: wxWindowID = 5230
    public static let wxID_MDI_WINDOW_CASCADE: wxWindowID = .wxID_MDI_WINDOW_FIRST
    public static let wxID_MDI_WINDOW_TILE_HORZ: wxWindowID = 5231
    public static let wxID_MDI_WINDOW_TILE_VERT: wxWindowID = 5232
    public static let wxID_MDI_WINDOW_ARRANGE_ICONS: wxWindowID = 5233
    public static let wxID_MDI_WINDOW_PREV: wxWindowID = 5234
    public static let wxID_MDI_WINDOW_NEXT: wxWindowID = 5235
    public static let wxID_MDI_WINDOW_LAST: wxWindowID = .wxID_MDI_WINDOW_NEXT
    public static let wxID_OSX_MENU_FIRST: wxWindowID = 5250
    public static let wxID_OSX_HIDE: wxWindowID = .wxID_OSX_MENU_FIRST
    public static let wxID_OSX_HIDEOTHERS: wxWindowID = 5251
    public static let wxID_OSX_SHOWALL: wxWindowID = 5252
    public static let wxID_FILEDLGG: wxWindowID = 5900
    public static let wxID_FILECTRL: wxWindowID = 5950
    public static let wxID_HIGHEST: wxWindowID = 5999
}

public struct wxOrientation: OptionSet {
    public let rawValue: CInt
    
    public static let wxHORIZONTAL = wxOrientation(rawValue: 0x0004)
    public static let wxVERTICAL = wxOrientation(rawValue: 0x0008)
    public static let wxBOTH: wxOrientation = [.wxVERTICAL, wxVERTICAL]
    public static let wxORIENTATION_MASK: wxOrientation = .wxBOTH
    
    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
}

public struct wxBorder: OptionSet {
    public let rawValue: Int32
    
    public static let wxBORDER_DEFAULT = wxBorder(rawValue: 0)
    public static let wxBORDER_NONE = wxBorder(rawValue: 0x00200000)
    public static let wxBORDER_STATIC = wxBorder(rawValue: 0x01000000)
    public static let wxBORDER_SIMPL = wxBorder(rawValue: 0x02000000)
    public static let wxBORDER_RAISED = wxBorder(rawValue: 0x04000000)
    public static let wxBORDER_SUNKEN = wxBorder(rawValue: 0x08000000)
    @available(*, deprecated)
    public static let wxBORDER_DOUBLE = wxBorder(rawValue: 0x10000000)
    public static let wxBORDER_THEME = wxBorder(rawValue: 0x10000000)
    public static let wxBORDER_MASK = wxBorder(rawValue: 0x1f200000)
    
    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
}

public let wxDEFAULT_CONTROL_BORDER: wxBorder = .wxBORDER_SUNKEN
