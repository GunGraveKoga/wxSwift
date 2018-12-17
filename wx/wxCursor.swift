//
//  wxCursor.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("Null_Cursor")
fileprivate func Null_Cursor() -> CVoidPtr
internal func _wxc_Null_Cursor() -> CVoidPtr {
    return Null_Cursor()
}

@_silgen_name("wxCursor_SafeDelete")
fileprivate func wxCursor_SafeDelete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxCursor_SafeDelete(_ ptr: CVoidPtr) -> Void {
    wxCursor_SafeDelete(ptr)
}

@_silgen_name("wxCursor_IsStatic")
fileprivate func wxCursor_IsStatic(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxCursor_IsStatic(_ ptr: CVoidPtr) -> CBool {
    return wxCursor_IsStatic(ptr)
}

@_silgen_name("wxCursor_Delete")
fileprivate func wxCursor_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxCursor_Delete(_ ptr: CVoidPtr) -> Void {
    wxCursor_Delete(ptr)
}

@_silgen_name("Cursor_CreateFromStock")
fileprivate func Cursor_CreateFromStock(_ stockId: CInt) -> CVoidPtr
internal func _wxc_Cursor_CreateFromStock(_ stockId: CInt) -> CVoidPtr {
    return Cursor_CreateFromStock(stockId)
}

public enum wxStockCursor: CInt {
    case wxCURSOR_NONE = 0,
    wxCURSOR_ARROW,
    wxCURSOR_RIGHT_ARROW,
    wxCURSOR_BULLSEYE,
    wxCURSOR_CHAR,
    wxCURSOR_CROSS,
    wxCURSOR_HAND,
    wxCURSOR_IBEAM,
    wxCURSOR_LEFT_BUTTON,
    wxCURSOR_MAGNIFIER,
    wxCURSOR_MIDDLE_BUTTON,
    wxCURSOR_NO_ENTRY,
    wxCURSOR_PAINT_BRUSH,
    wxCURSOR_PENCIL,
    wxCURSOR_POINT_LEFT,
    wxCURSOR_POINT_RIGHT,
    wxCURSOR_QUESTION_ARROW,
    wxCURSOR_RIGHT_BUTTON,
    wxCURSOR_SIZENESW,
    wxCURSOR_SIZENS,
    wxCURSOR_SIZENWSE,
    wxCURSOR_SIZEWE,
    wxCURSOR_SIZING,
    wxCURSOR_SPRAYCAN,
    wxCURSOR_WAIT,
    wxCURSOR_WATCH,
    wxCURSOR_BLANK
    #if __WXGTK__
    case wxCURSOR_DEFAULT
    #endif
    #if os(macOS)
    case wxCURSOR_COPY_ARROW
    #endif
    #if __X__
    case wxCURSOR_CROSS_REVERSE,
    wxCURSOR_DOUBLE_ARROW,
    wxCURSOR_BASED_ARROW_UP,
    wxCURSOR_BASED_ARROW_DOWN
    #endif
    case wxCURSOR_ARROWWAIT
    #if os(macOS)
    case wxCURSOR_OPEN_HAND,
    wxCURSOR_CLOSED_HAND
    #endif
    case wxCURSOR_MAX
}

public class wxCursor: wxGDIObject {
    
    public static let nullCursor = wxCursor(rawValue: _wxc_Null_Cursor())!
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(fromStock cursorId: wxStockCursor) {
        super.init(rawValue: _wxc_Cursor_CreateFromStock(cursorId.rawValue))!
    }
    
    override public func delete() {
        _wxc_wxCursor_Delete(rawValue)
    }
    
    override public func safeDelete() {
        _wxc_wxCursor_SafeDelete(rawValue)
    }
    
    public func isStatic() -> Bool {
        return _wxc_wxCursor_IsStatic(rawValue)
    }
}
