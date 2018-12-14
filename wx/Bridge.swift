//
//  Bridge.swift
//  wxSwift
//
//  Created by Yury Vovk on 13/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

// wxObject

@_silgen_name("wxObject_Delete")
fileprivate func wxObject_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxObject_Delete(_ ptr: CVoidPtr) -> Void {
    wxObject_Delete(ptr)
}

// wxString

@_silgen_name("wxString_Create")
fileprivate func wxString_Create(_ buffer: UnsafeMutablePointer<wxChar>?) -> CVoidPtr
internal func _wxc_wxString_Create(_ buffer: UnsafeMutablePointer<wxChar>?) -> CVoidPtr {
    return wxString_Create(buffer)
}

@_silgen_name("wxString_CreateUTF8")
fileprivate func wxString_CreateUTF8(_ buffer: CConstCharPtr) -> CVoidPtr
internal func _wxc_wxString_CreateUTF8(_ string: String) -> CVoidPtr {
    return wxString_CreateUTF8(string)
}

@_silgen_name("wxString_CreateLen")
fileprivate func wxString_CreateLen(_ buffer: UnsafeMutablePointer<wxChar>?, _ len: Int) -> CVoidPtr
internal func _wxc_wxString_CreateLen(_ buffer: UnsafeMutablePointer<wxChar>?, _ len: Int) -> CVoidPtr {
    return wxString_CreateLen(buffer, len)
}

@_silgen_name("wxString_Delete")
fileprivate func wxString_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxString_Delete(_ ptr: CVoidPtr) -> Void {
    wxString_Delete(ptr)
}

@_silgen_name("wxString_GetString")
fileprivate func wxString_GetString(_ ptr: CVoidPtr, _ outBuffer: CCharPtr) -> CInt
internal func _wxc_wxString_GetString(_ ptr: CVoidPtr, _ outBuffer: CCharPtr) -> CInt {
    return wxString_GetString(ptr, outBuffer)
}

@_silgen_name("wxString_Length")
fileprivate func wxString_Length(_ ptr: CVoidPtr) -> Int
internal func _wxc_wxString_Length(_ ptr: CVoidPtr) -> Int {
    return wxString_Length(ptr)
}

@_silgen_name("wxString_GetUtf8")
fileprivate func wxString_GetUtf8(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxString_GetUtf8(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxString_GetUtf8(ptr)
}

@_silgen_name("wxCharBuffer_Delete")
fileprivate func wxCharBuffer_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxCharBuffer_Delete(_ ptr: CVoidPtr) -> Void {
    wxCharBuffer_Delete(ptr)
}

@_silgen_name("wxCharBuffer_DataUtf8")
fileprivate func wxCharBuffer_DataUtf8(_ ptr: CVoidPtr) -> CCharPtr
internal func _wxc_wxCharBuffer_DataUtf8(_ ptr: CVoidPtr) -> CCharPtr {
    return wxCharBuffer_DataUtf8(ptr)
}

// wxSize

@_silgen_name("wxSize_Create")
fileprivate func wxSize_Create(_ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_wxSize_Create(_ w: CInt, _ h: CInt) -> CVoidPtr {
    return wxSize_Create(w, h)
}

@_silgen_name("wxSize_Delete")
fileprivate func wxSize_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxSize_Delete(_ ptr: CVoidPtr) -> Void {
    wxSize_Delete(ptr)
}

@_silgen_name("wxSize_GetHeight")
fileprivate func wxSize_GetHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxSize_GetHeight(_ ptr: CVoidPtr) -> CInt {
    return wxSize_GetHeight(ptr)
}

@_silgen_name("wxSize_GetWidth")
fileprivate func wxSize_GetWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxSize_GetWidth(_ ptr: CVoidPtr) -> CInt {
    return wxSize_GetWidth(ptr)
}

@_silgen_name("wxSize_SetHeight")
fileprivate func wxSize_SetHeight(_ ptr: CVoidPtr, _ h: CInt) -> Void
internal func _wxc_wxSize_SetHeight(_ ptr: CVoidPtr, _ h: CInt) -> Void {
    return wxSize_SetHeight(ptr, h)
}

@_silgen_name("wxSize_SetWidth")
fileprivate func wxSize_SetWidth(_ ptr: CVoidPtr, _ w: CInt) -> Void
internal func _wxc_wxSize_SetWidth(_ ptr: CVoidPtr, _ w: CInt) -> Void {
    return wxSize_SetWidth(ptr, w)
}

// wxPoint

@_silgen_name("wxPoint_Create")
fileprivate func wxPoint_Create(_ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxPoint_Create(_ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxPoint_Create(x, y)
}

@_silgen_name("wxPoint_Delete")
fileprivate func wxPoint_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxPoint_Delete(_ ptr: CVoidPtr) -> Void {
    return wxPoint_Delete(ptr)
}

@_silgen_name("wxPoint_GetX")
fileprivate func wxPoint_GetX(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxPoint_GetX(_ ptr: CVoidPtr) -> CInt {
    return wxPoint_GetX(ptr)
}

@_silgen_name("wxPoint_GetY")
fileprivate func wxPoint_GetY(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxPoint_GetY(_ ptr: CVoidPtr) -> CInt {
    return wxPoint_GetY(ptr)
}

@_silgen_name("wxPoint_SetX")
fileprivate func wxPoint_SetX(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxPoint_SetX(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxPoint_SetX(ptr, value)
}

@_silgen_name("wxPoint_SetY")
fileprivate func wxPoint_SetY(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxPoint_SetY(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxPoint_SetY(ptr, value)
}

// wxRect

@_silgen_name("wxRect_Create")
fileprivate func wxRect_Create(_ x: CInt, _ y: CInt, _ width: CInt, _ height: CInt) -> CVoidPtr
internal func _wxc_wxRect_Create(_ x: CInt, _ y: CInt, _ width: CInt, _ height: CInt) -> CVoidPtr {
    return wxRect_Create(x, y, width, height)
}

@_silgen_name("wxRect_Delete")
fileprivate func wxRect_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxRect_Delete(_ ptr: CVoidPtr) -> Void {
    wxRect_Delete(ptr)
}

@_silgen_name("wxRect_GetX")
fileprivate func wxRect_GetX(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxRect_GetX(_ ptr: CVoidPtr) -> CInt {
    return wxRect_GetX(ptr)
}

@_silgen_name("wxRect_GetY")
fileprivate func wxRect_GetY(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxRect_GetY(_ ptr: CVoidPtr) -> CInt {
    return wxRect_GetY(ptr)
}

@_silgen_name("wxRect_GetWidth")
fileprivate func wxRect_GetWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxRect_GetWidth(_ ptr: CVoidPtr) -> CInt {
    return wxRect_GetWidth(ptr)
}

@_silgen_name("wxRect_GetHeight")
fileprivate func wxRect_GetHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxRect_GetHeight(_ ptr: CVoidPtr) -> CInt {
    return wxRect_GetHeight(ptr)
}

@_silgen_name("wxRect_SetX")
fileprivate func wxRect_SetX(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxRect_SetX(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxRect_SetX(ptr, value)
}

@_silgen_name("wxRect_SetY")
fileprivate func wxRect_SetY(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxRect_SetY(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxRect_SetY(ptr, value)
}

@_silgen_name("wxRect_SetWidth")
fileprivate func wxRect_SetWidth(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxRect_SetWidth(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxRect_SetWidth(ptr, value)
}

@_silgen_name("wxRect_SetHeight")
fileprivate func wxRect_SetHeight(_ ptr: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxRect_SetHeight(_ ptr: CVoidPtr, _ value: CInt) -> Void {
    wxRect_SetHeight(ptr, value)
}

// EvtHandler

@_silgen_name("wxEvtHandler_Create")
fileprivate func wxEvtHandler_Create() -> CVoidPtr
internal func _wxc_wxEvtHandler_Create() -> CVoidPtr {
    return wxEvtHandler_Create()
}

@_silgen_name("wxEvtHandler_Delete")
fileprivate func wxEvtHandler_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxEvtHandler_Delete(_ ptr: CVoidPtr) -> Void {
    wxEvtHandler_Delete(ptr)
}

@_silgen_name("wxEvtHandler_AddPendingEvent")
fileprivate func wxEvtHandler_AddPendingEvent(_ ptr: CVoidPtr, _ evnt: CVoidPtr) -> Void
internal func _wxc_wxEvtHandler_AddPendingEvent(_ ptr: CVoidPtr, _ evnt: CVoidPtr) -> Void {
    wxEvtHandler_AddPendingEvent(ptr, evnt)
}

@_silgen_name("wxEvtHandler_Connect")
fileprivate func wxEvtHandler_Connect(_ ptr: CVoidPtr, _ first: CInt, _ last: CInt, _ type: CInt, _ data: CVoidPtr) -> CInt
internal func _wxc_wxEvtHandler_Connect(_ ptr: CVoidPtr, _ first: CInt, _ last: CInt, _ type: CInt, _ data: CVoidPtr) -> CInt {
    return wxEvtHandler_Connect(ptr, first, last, type, data)
}

@_silgen_name("wxEvtHandler_Disconnect")
fileprivate func wxEvtHandler_Disconnect(_ ptr: CVoidPtr, _ first: CInt, _ last: CInt, _ type: CInt, _ data: CVoidPtr) -> CInt
internal func _wxc_wxEvtHandler_Disconnect(_ ptr: CVoidPtr, _ first: CInt, _ last: CInt, _ type: CInt, _ data: CVoidPtr) -> CInt {
    return wxEvtHandler_Disconnect(ptr, first, last, type, data)
}

@_silgen_name("wxEvtHandler_GetEvtHandlerEnabled")
fileprivate func wxEvtHandler_GetEvtHandlerEnabled(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxEvtHandler_GetEvtHandlerEnabled(_ ptr: CVoidPtr) -> CBool {
    return wxEvtHandler_GetEvtHandlerEnabled(ptr)
}

@_silgen_name("wxEvtHandler_GetNextHandler")
fileprivate func wxEvtHandler_GetNextHandler(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxEvtHandler_GetNextHandler(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxEvtHandler_GetNextHandler(ptr)
}

@_silgen_name("wxEvtHandler_GetPreviousHandler")
fileprivate func wxEvtHandler_GetPreviousHandler(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxEvtHandler_GetPreviousHandler(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxEvtHandler_GetPreviousHandler(ptr)
}

@_silgen_name("wxEvtHandler_ProcessEvent")
fileprivate func wxEvtHandler_ProcessEvent(_ ptr: CVoidPtr, _ evnt: CVoidPtr) -> CBool
internal func _wxc_wxEvtHandler_ProcessEvent(_ ptr: CVoidPtr, _ evnt: CVoidPtr) -> CBool {
    return wxEvtHandler_ProcessEvent(ptr, evnt)
}

@_silgen_name("wxEvtHandler_ProcessPendingEvents")
fileprivate func wxEvtHandler_ProcessPendingEvents(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxEvtHandler_ProcessPendingEvents(_ ptr: CVoidPtr) -> Void {
    wxEvtHandler_ProcessPendingEvents(ptr)
}

@_silgen_name("wxEvtHandler_SetEvtHandlerEnabled")
fileprivate func wxEvtHandler_SetEvtHandlerEnabled(_ ptr: CVoidPtr, _ v: CBool) -> Void
internal func _wxc_wxEvtHandler_SetEvtHandlerEnabled(_ ptr: CVoidPtr, _ v: CBool) -> Void {
    wxEvtHandler_SetEvtHandlerEnabled(ptr, v)
}

@_silgen_name("wxEvtHandler_SetNextHandler")
fileprivate func wxEvtHandler_SetNextHandler(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxEvtHandler_SetNextHandler(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxEvtHandler_SetNextHandler(ptr, other)
}

@_silgen_name("wxEvtHandler_SetPreviousHandler")
fileprivate func wxEvtHandler_SetPreviousHandler(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxEvtHandler_SetPreviousHandler(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxEvtHandler_SetPreviousHandler(ptr, other)
}

// wxEvent

@_silgen_name("expEVT_AUITOOLBAR_TOOL_DROPDOWN")
fileprivate func expEVT_AUITOOLBAR_TOOL_DROPDOWN() -> CInt
internal func _wxc_expEVT_AUITOOLBAR_TOOL_DROPDOWN() -> CInt {
    return expEVT_AUITOOLBAR_TOOL_DROPDOWN()
}

@_silgen_name("wxEvent_NewEventType")
fileprivate func wxEvent_NewEventType() -> CInt
internal func _wxc_wxEvent_NewEventType() -> CInt {
    return wxEvent_NewEventType()
}

@_silgen_name("wxEvent_SetEventObject")
fileprivate func wxEvent_SetEventObject(_ evnt: CVoidPtr, _ ptr: CVoidPtr) -> Void
internal func _wxc_wxEvent_SetEventObject(_ evnt: CVoidPtr, _ ptr: CVoidPtr) -> Void {
    wxEvent_SetEventObject(evnt, ptr)
}

@_silgen_name("wxEvent_SetEventType")
fileprivate func wxEvent_SetEventType(_ evnt: CVoidPtr, _ type: CInt) -> Void
internal func _wxc_wxEvent_SetEventType(_ evnt: CVoidPtr, _ type: CInt) -> Void {
    wxEvent_SetEventType(evnt, type)
}

@_silgen_name("wxEvent_SetId")
fileprivate func wxEvent_SetId(_ event: CVoidPtr, _ _id: CInt) -> Void
internal func _wxc_wxEvent_SetId(_ event: CVoidPtr, _ _id: CInt) -> Void {
    wxEvent_SetId(event, _id)
}

@_silgen_name("wxEvent_SetTimestamp")
fileprivate func wxEvent_SetTimestamp(_ evnt: CVoidPtr, _ timestamp: CLong) -> Void
internal func _wxc_wxEvent_SetTimestamp(_ evnt: CVoidPtr, _ timestamp: CLong) -> Void {
    wxEvent_SetTimestamp(evnt, timestamp)
}

@_silgen_name("wxEvent_Skip")
fileprivate func wxEvent_Skip(_ evnt: CVoidPtr) -> Void
internal func _wxc_wxEvent_Skip(_ evnt: CVoidPtr) -> Void {
    wxEvent_Skip(evnt)
}

@_silgen_name("wxEvent_GetEventObject")
fileprivate func wxEvent_GetEventObject(_ evnt: CVoidPtr) -> CVoidPtr
internal func _wxc_wxEvent_GetEventObject(_ evnt: CVoidPtr) -> CVoidPtr {
    return wxEvent_GetEventObject(evnt)
}

@_silgen_name("wxEvent_GetEventType")
fileprivate func wxEvent_GetEventType(_ evnt: CVoidPtr) -> CInt
internal func _wxc_wxEvent_GetEventType(_ evnt: CVoidPtr) -> CInt {
    return wxEvent_GetEventType(evnt)
}

@_silgen_name("wxEvent_GetId")
fileprivate func wxEvent_GetId(_ evnt: CVoidPtr) -> CInt
internal func _wxc_wxEvent_GetId(_ evnt: CVoidPtr) -> CInt {
    return wxEvent_GetId(evnt)
}

@_silgen_name("wxEvent_GetSkipped")
fileprivate func wxEvent_GetSkipped(_ evnt: CVoidPtr) -> CBool
internal func _wxc_wxEvent_GetSkipped(_ evnt: CVoidPtr) -> CBool {
    return wxEvent_GetSkipped(evnt)
}

@_silgen_name("wxEvent_GetTimestamp")
fileprivate func wxEvent_GetTimestamp(_ evnt: CVoidPtr) -> CLong
internal func _wxc_wxEvent_GetTimestamp(_ evnt: CVoidPtr) -> CLong {
    return wxEvent_GetTimestamp(evnt)
}

@_silgen_name("wxEvent_IsCommandEvent")
fileprivate func wxEvent_IsCommandEvent(_ evnt: CVoidPtr) -> CBool
internal func _wxc_wxEvent_IsCommandEvent(_ evnt: CVoidPtr) -> CBool {
    return wxEvent_IsCommandEvent(evnt)
}

// wxClosure

@_silgen_name("wxClosure_Create")
fileprivate func wxClosure_Create(_ func: wxClosureFun, _ data: CVoidPtr) -> CVoidPtr
internal func _wxc_wxClosure_Create(_ func: wxClosureFun, _ data: CVoidPtr) -> CVoidPtr {
    return wxClosure_Create(`func`, data)
}

@_silgen_name("wxClosure_GetData")
fileprivate func wxClosure_GetData(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxClosure_GetData(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxClosure_GetData(ptr)
}

// wxColour

@_silgen_name("wxColour_CreateRGB")
fileprivate func wxColour_CreateRGB(_ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> CVoidPtr
internal func _wxc_wxColour_CreateRGB(_ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> CVoidPtr {
    return wxColour_CreateRGB(r, g, b, a)
}

@_silgen_name("wxColour_CreateEmpty")
fileprivate func wxColour_CreateEmpty() -> CVoidPtr
internal func _wxc_wxColour_CreateEmpty() -> CVoidPtr {
    return wxColour_CreateEmpty()
}

@_silgen_name("wxColour_CreateByName")
fileprivate func wxColour_CreateByName(_ name: CVoidPtr) -> CVoidPtr
internal func _wxc_wxColour_CreateByName(_ name: CVoidPtr) -> CVoidPtr {
    return wxColour_CreateByName(name)
}

@_silgen_name("wxColour_CreateFromStock")
fileprivate func wxColour_CreateFromStock(_ _id: CInt) -> CVoidPtr
internal func _wxc_wxColour_CreateFromStock(_ _id: CInt) -> CVoidPtr {
    return wxColour_CreateFromStock(_id)
}

@_silgen_name("wxColour_Delete")
fileprivate func wxColour_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxColour_Delete(_ ptr: CVoidPtr) -> Void {
    wxColour_Delete(ptr)
}

@_silgen_name("wxColour_IsOk")
fileprivate func wxColour_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxColour_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxColour_IsOk(ptr)
}

@_silgen_name("wxColour_Copy")
fileprivate func wxColour_Copy(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxColour_Copy(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxColour_Copy(ptr, other)
}

@_silgen_name("wxColour_ValidName")
fileprivate func wxColour_ValidName(_ name: CVoidPtr) -> CBool
internal func _wxc_wxColour_ValidName(_ name: CVoidPtr) -> CBool {
    return wxColour_ValidName(name)
}

@_silgen_name("wxColour_SetByName")
fileprivate func wxColour_SetByName(_ ptr: CVoidPtr, _ name: CVoidPtr) -> Void
internal func _wxc_wxColour_SetByName(_ ptr: CVoidPtr, _ name: CVoidPtr) -> Void {
    wxColour_SetByName(ptr, name)
}

@_silgen_name("wxColour_Set")
fileprivate func wxColour_Set(_ ptr: CVoidPtr, _ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> Void
internal func _wxc_wxColour_Set(_ ptr: CVoidPtr, _ r: UInt8, _ g: UInt8, _ b: UInt8, _ a: UInt8) -> Void {
    wxColour_Set(ptr, r, g, b, a)
}

@_silgen_name("wxColour_Assign")
fileprivate func wxColour_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxColour_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxColour_Assign(ptr, other)
}

@_silgen_name("wxColour_Alpha")
fileprivate func wxColour_Alpha(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxColour_Alpha(_ ptr: CVoidPtr) -> UInt8 {
    return wxColour_Alpha(ptr)
}

@_silgen_name("wxColour_Blue")
fileprivate func wxColour_Blue(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxColour_Blue(_ ptr: CVoidPtr) -> UInt8 {
    return wxColour_Blue(ptr)
}

@_silgen_name("wxColour_Green")
fileprivate func wxColour_Green(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxColour_Green(_ ptr: CVoidPtr) -> UInt8 {
    return wxColour_Green(ptr)
}

@_silgen_name("wxColour_Red")
fileprivate func wxColour_Red(_ ptr: CVoidPtr) -> UInt8
internal func _wxc_wxColour_Red(_ ptr: CVoidPtr) -> UInt8 {
    return wxColour_Red(ptr)
}

@_silgen_name("Null_Colour")
fileprivate func Null_Colour() -> CVoidPtr
internal func _wxc_Null_Colour() -> CVoidPtr {
    return Null_Colour()
}

// wxCaret

@_silgen_name("wxCaret_Create")
fileprivate func wxCaret_Create(_ window: CVoidPtr, _ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_wxCaret_Create(_ window: CVoidPtr, _ w: CInt, _ h: CInt) -> CVoidPtr {
    return wxCaret_Create(window, w, h)
}

@_silgen_name("wxCaret_GetBlinkTime")
fileprivate func wxCaret_GetBlinkTime() -> CInt
internal func _wxc_wxCaret_GetBlinkTime() -> CInt {
    return wxCaret_GetBlinkTime()
}

@_silgen_name("wxCaret_GetPosition")
fileprivate func wxCaret_GetPosition(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxCaret_GetPosition(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxCaret_GetPosition(ptr)
}

@_silgen_name("wxCaret_GetSize")
fileprivate func wxCaret_GetSize(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxCaret_GetSize(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxCaret_GetSize(ptr)
}

@_silgen_name("wxCaret_GetWindow")
fileprivate func wxCaret_GetWindow(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxCaret_GetWindow(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxCaret_GetWindow(ptr)
}

@_silgen_name("wxCaret_Hide")
fileprivate func wxCaret_Hide(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxCaret_Hide(_ ptr: CVoidPtr) -> Void {
    wxCaret_Hide(ptr)
}

@_silgen_name("wxCaret_IsOk")
fileprivate func wxCaret_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxCaret_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxCaret_IsOk(ptr)
}

@_silgen_name("wxCaret_IsVisible")
fileprivate func wxCaret_IsVisible(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxCaret_IsVisible(_ ptr: CVoidPtr) -> CBool {
    return wxCaret_IsVisible(ptr)
}

@_silgen_name("wxCaret_Move")
fileprivate func wxCaret_Move(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void
internal func _wxc_wxCaret_Move(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void {
    return wxCaret_Move(ptr, x, y)
}

@_silgen_name("wxCaret_SetBlinkTime")
fileprivate func wxCaret_SetBlinkTime(_ time: CInt) -> Void
internal func _wxc_wxCaret_SetBlinkTime(_ time: CInt) -> Void {
    return wxCaret_SetBlinkTime(time)
}

@_silgen_name("wxCaret_SetSize")
fileprivate func wxCaret_SetSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxCaret_SetSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void {
    wxCaret_SetSize(ptr, w, h)
}

@_silgen_name("wxCaret_Show")
fileprivate func wxCaret_Show(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxCaret_Show(_ ptr: CVoidPtr) -> Void {
    wxCaret_Show(ptr)
}

// wxLayoutConstraints

@_silgen_name("wxLayoutConstraints_Create")
fileprivate func wxLayoutConstraints_Create() -> CVoidPtr
internal func _wxc_wxLayoutConstraints_Create() -> CVoidPtr {
    return wxLayoutConstraints_Create()
}

@_silgen_name("wxLayoutConstraints_bottom")
fileprivate func wxLayoutConstraints_bottom(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_bottom(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_bottom(ptr)
}

@_silgen_name("wxLayoutConstraints_centreX")
fileprivate func wxLayoutConstraints_centreX(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_centreX(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_centreX(ptr)
}

@_silgen_name("wxLayoutConstraints_centreY")
fileprivate func wxLayoutConstraints_centreY(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_centreY(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_centreY(ptr)
}

@_silgen_name("wxLayoutConstraints_height")
fileprivate func wxLayoutConstraints_height(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_height(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_height(ptr)
}

@_silgen_name("wxLayoutConstraints_left")
fileprivate func wxLayoutConstraints_left(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_left(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_left(ptr)
}

@_silgen_name("wxLayoutConstraints_right")
fileprivate func wxLayoutConstraints_right(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_right(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_right(ptr)
}

@_silgen_name("wxLayoutConstraints_top")
fileprivate func wxLayoutConstraints_top(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_top(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_top(ptr)
}

@_silgen_name("wxLayoutConstraints_width")
fileprivate func wxLayoutConstraints_width(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_width(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_width(ptr)
}

// wxFont

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

// wxApp

@_silgen_name("wxc_Initialize")
fileprivate func wxc_Initialize(_ argc: CInt, _ argv: CWideCharPtrPtr) -> CBool
internal func _wxc_wxc_Initialize(_ argc: CInt, _ argv: CWideCharPtrPtr) -> CBool {
    return wxc_Initialize(argc, argv)
}

@_silgen_name("ELJApp_GetApp")
fileprivate func ELJApp_GetApp() -> CVoidPtr
internal func _wxc_ELJApp_GetApp() -> CVoidPtr {
    return ELJApp_GetApp()
}

@_silgen_name("ELJApp_Bell")
fileprivate func ELJApp_Bell() -> Void
internal func _wxc_ELJApp_Bell() -> Void {
    ELJApp_Bell()
}

@_silgen_name("ELJApp_Dispatch")
fileprivate func ELJApp_Dispatch() -> Void
internal func _wxc_ELJApp_Dispatch() -> Void {
    ELJApp_Dispatch()
}

@_silgen_name("ELJApp_DisplaySize")
fileprivate func ELJApp_DisplaySize() -> CVoidPtr
internal func _wxc_ELJApp_DisplaySize() -> CVoidPtr {
    return ELJApp_DisplaySize()
}

@_silgen_name("ELJApp_EnableTooltips")
fileprivate func ELJApp_EnableTooltips(_ flag: CBool) -> Void
internal func _wxc_ELJApp_EnableTooltips(_ flag: CBool) -> Void {
    ELJApp_EnableTooltips(flag)
}

@_silgen_name("ELJApp_EnableTopLevelWindows")
fileprivate func ELJApp_EnableTopLevelWindows(_ flag: CBool) -> Void
internal func _wxc_ELJApp_EnableTopLevelWindows(_ flag: CBool) -> Void {
    ELJApp_EnableTopLevelWindows(flag)
}

@_silgen_name("ELJApp_Exit")
fileprivate func ELJApp_Exit() -> Void
internal func _wxc_ELJApp_Exit() -> Void {
    ELJApp_Exit()
}

@_silgen_name("ELJApp_ExitMainLoop")
fileprivate func ELJApp_ExitMainLoop() -> Void
internal func _wxc_ELJApp_ExitMainLoop() -> Void {
    ELJApp_ExitMainLoop()
}

@_silgen_name("ELJApp_GetAppName")
fileprivate func ELJApp_GetAppName() -> CVoidPtr
internal func _wxc_ELJApp_GetAppName() -> CVoidPtr {
    return ELJApp_GetAppName()
}

@_silgen_name("ELJApp_GetClassName")
fileprivate func ELJApp_GetClassName() -> CVoidPtr
internal func _wxc_ELJApp_GetClassName() -> CVoidPtr {
    return ELJApp_GetClassName()
}

@_silgen_name("ELJApp_SetAppName")
fileprivate func ELJApp_SetAppName(_ str: CVoidPtr) -> Void
internal func _wxc_ELJApp_SetAppName(_ str: CVoidPtr) -> Void {
    ELJApp_SetAppName(str)
}

@_silgen_name("ELJApp_SetClassName")
fileprivate func ELJApp_SetClassName(_ str: CVoidPtr) -> Void
internal func _wxc_ELJApp_SetClassName(_ str: CVoidPtr) -> Void {
    ELJApp_SetClassName(str)
}

@_silgen_name("ELJApp_GetExitOnFrameDelete")
fileprivate func ELJApp_GetExitOnFrameDelete() -> CBool
internal func _wxc_ELJApp_GetExitOnFrameDelete() -> CBool {
    return ELJApp_GetExitOnFrameDelete()
}

@_silgen_name("ELJApp_SetExitOnFrameDelete")
fileprivate func ELJApp_SetExitOnFrameDelete(_ flag: CBool) -> Void
internal func _wxc_ELJApp_SetExitOnFrameDelete(_ flag: CBool) -> Void {
    ELJApp_SetExitOnFrameDelete(flag)
}

@_silgen_name("ELJApp_SetPrintMode")
fileprivate func ELJApp_SetPrintMode(_ mode: CInt) -> Void
internal func _wxc_ELJApp_SetPrintMode(_ mode: CInt) -> Void {
    ELJApp_SetPrintMode(mode)
}

@_silgen_name("ELJApp_SetTooltipDelay")
fileprivate func ELJApp_SetTooltipDelay(_ ms: CLong) -> Void
internal func _wxc_ELJApp_SetTooltipDelay(_ ms: CLong) -> Void {
    ELJApp_SetTooltipDelay(ms)
}

@_silgen_name("ELJApp_SetUseBestVisual")
fileprivate func ELJApp_SetUseBestVisual(_ flag: CBool) -> Void
internal func _wxc_ELJApp_SetUseBestVisual(_ flag: CBool) -> Void {
    ELJApp_SetUseBestVisual(flag)
}

@_silgen_name("ELJApp_GetUseBestVisual")
fileprivate func ELJApp_GetUseBestVisual() -> CBool
internal func _wxc_ELJApp_GetUseBestVisual() -> CBool {
    return ELJApp_GetUseBestVisual()
}

@_silgen_name("ELJApp_GetVendorName")
fileprivate func ELJApp_GetVendorName() -> CVoidPtr
internal func _wxc_ELJApp_GetVendorName() -> CVoidPtr {
    return ELJApp_GetVendorName()
}

@_silgen_name("ELJApp_SetVendorName")
fileprivate func ELJApp_SetVendorName(_ str: CVoidPtr) -> Void
internal func _wxc_ELJApp_SetVendorName(_ str: CVoidPtr) -> Void {
    ELJApp_SetVendorName(str)
}

@_silgen_name("ELJApp_MainLoop")
fileprivate func ELJApp_MainLoop() -> Void
internal func _wxc_ELJApp_MainLoop() -> Void {
    ELJApp_MainLoop()
}

@_silgen_name("ELJApp_Sleep")
fileprivate func ELJApp_Sleep(_ sec: CInt) -> Void
internal func _wxc_ELJApp_Sleep(_ sec: CInt) -> Void {
    ELJApp_Sleep(sec)
}

@_silgen_name("ELJApp_MilliSleep")
fileprivate func ELJApp_MilliSleep( _ msec: CUnsignedLong) -> Void
internal func _wxc_ELJApp_MilliSleep( _ msec: CUnsignedLong) -> Void {
    ELJApp_MilliSleep(msec)
}

@_silgen_name("ELJApp_Yield")
fileprivate func ELJApp_Yield() -> CBool
internal func _wxc_ELJApp_Yield() -> CBool {
    return ELJApp_Yield()
}

@_silgen_name("ELJApp_Pending")
fileprivate func ELJApp_Pending() -> CBool
internal func _wxc_ELJApp_Pending() -> CBool {
    return ELJApp_Pending()
}

@_silgen_name("ELJApp_IsTerminating")
fileprivate func ELJApp_IsTerminating() -> CBool
internal func _wxc_ELJApp_IsTerminating() -> CBool {
    return ELJApp_IsTerminating()
}

@_silgen_name("ELJApp_Initialized")
fileprivate func ELJApp_Initialized() -> CBool
internal func _wxc_ELJApp_Initialized() -> CBool {
    return ELJApp_Initialized()
}

@_silgen_name("ELJApp_GetUserName")
fileprivate func ELJApp_GetUserName() -> CVoidPtr
internal func _wxc_ELJApp_GetUserName() -> CVoidPtr {
    return ELJApp_GetUserName()
}

@_silgen_name("LJApp_GetUserHome")
fileprivate func ELJApp_GetUserHome(_ user: CVoidPtr) -> CVoidPtr
internal func _wxc_ELJApp_GetUserHome(_ user: CVoidPtr) -> CVoidPtr {
    return ELJApp_GetUserHome(user)
}

@_silgen_name("ELJApp_GetUserId")
fileprivate func ELJApp_GetUserId() -> CVoidPtr
internal func _wxc_ELJApp_GetUserId() -> CVoidPtr {
    return ELJApp_GetUserId()
}

// wxWindow

@_silgen_name("wxWindow_AddChild")
fileprivate func wxWindow_AddChild(_ ptr: CVoidPtr, _ child: CVoidPtr) -> Void
internal func _wxc_wxWindow_AddChild(_ ptr: CVoidPtr, _ child: CVoidPtr) -> Void {
    wxWindow_AddChild(ptr, child)
}

@_silgen_name("wxWindow_AddConstraintReference")
fileprivate func wxWindow_AddConstraintReference(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxWindow_AddConstraintReference(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxWindow_AddConstraintReference(ptr, other)
}

@_silgen_name("wxWindow_CaptureMouse")
fileprivate func wxWindow_CaptureMouse(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_CaptureMouse(_ ptr: CVoidPtr) -> Void {
    wxWindow_CaptureMouse(ptr)
}

@_silgen_name("wxWindow_Center")
fileprivate func wxWindow_Center(_ ptr: CVoidPtr, _ direction: CInt) -> Void
internal func _wxc_wxWindow_Center(_ ptr: CVoidPtr, _ direction: CInt) -> Void {
    wxWindow_Center(ptr, direction)
}

@_silgen_name("wxWindow_CenterOnParent")
fileprivate func wxWindow_CenterOnParent(_ ptr: CVoidPtr, _ direction: CInt) -> Void
internal func _wxc_wxWindow_CenterOnParent(_ ptr: CVoidPtr, _ direction: CInt) -> Void {
    wxWindow_CenterOnParent(ptr, direction)
}

@_silgen_name("wxWindow_ClearBackground")
fileprivate func wxWindow_ClearBackground(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_ClearBackground(_ ptr: CVoidPtr) -> Void {
    wxWindow_ClearBackground(ptr)
}

@_silgen_name("wxWindow_ClientToScreen")
fileprivate func wxWindow_ClientToScreen(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxWindow_ClientToScreen(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxWindow_ClientToScreen(ptr, x, y)
}

@_silgen_name("wxWindow_Close")
fileprivate func wxWindow_Close(_ ptr: CVoidPtr, _ force: CBool) -> CBool
internal func _wxc_wxWindow_Close(_ ptr: CVoidPtr, _ force: CBool) -> CBool {
    return wxWindow_Close(ptr, force)
}

@_silgen_name("wxWindow_ConvertDialogToPixels")
fileprivate func wxWindow_ConvertDialogToPixels(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxWindow_ConvertDialogToPixels(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxWindow_ConvertDialogToPixels(ptr, x, y)
}

@_silgen_name("wxWindow_ConvertPixelsToDialog")
fileprivate func wxWindow_ConvertPixelsToDialog(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxWindow_ConvertPixelsToDialog(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxWindow_ConvertPixelsToDialog(ptr, x, y)
}

@_silgen_name("wxWindow_Create")
fileprivate func wxWindow_Create(_ prt: CVoidPtr, _ _id: CInt, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ stl: CInt) -> CVoidPtr
internal func _wxc_wxWindow_Create(_ prt: CVoidPtr, _ _id: CInt, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ stl: CInt) -> CVoidPtr {
    return wxWindow_Create(prt, _id, x, y, w, h, stl)
}

@_silgen_name("wxWindow_DeleteRelatedConstraints")
fileprivate func wxWindow_DeleteRelatedConstraints(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_DeleteRelatedConstraints(_ ptr: CVoidPtr) -> Void {
    wxWindow_DeleteRelatedConstraints(ptr)
}

@_silgen_name("wxWindow_Destroy")
fileprivate func wxWindow_Destroy(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Destroy(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Destroy(ptr)
}

@_silgen_name("wxWindow_DestroyChildren")
fileprivate func wxWindow_DestroyChildren(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_DestroyChildren(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Destroy(ptr)
}

@_silgen_name("wxWindow_Disable")
fileprivate func wxWindow_Disable(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Disable(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Disable(ptr)
}

@_silgen_name("wxWindow_Enable")
fileprivate func wxWindow_Enable(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Enable(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Enable(ptr)
}

@_silgen_name("wxWindow_FindFocus")
fileprivate func wxWindow_FindFocus(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_FindFocus(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_FindFocus(ptr)
}

@_silgen_name("wxWindow_FindWindow")
fileprivate func wxWindow_FindWindow(_ ptr: CVoidPtr, _ name: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_FindWindow(_ ptr: CVoidPtr, _ name: CVoidPtr) -> CVoidPtr {
    return wxWindow_FindWindow(ptr, name)
}

@_silgen_name("wxWindow_Fit")
fileprivate func wxWindow_Fit(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_Fit(_ ptr: CVoidPtr) -> Void {
    wxWindow_Fit(ptr)
}

@_silgen_name("wxWindow_FitInside")
fileprivate func wxWindow_FitInside(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_FitInside(_ ptr: CVoidPtr) -> Void {
    wxWindow_FitInside(ptr)
}

@_silgen_name("wxWindow_Freeze")
fileprivate func wxWindow_Freeze(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_Freeze(_ ptr: CVoidPtr) -> Void {
    wxWindow_Freeze(ptr)
}

@_silgen_name("wxWindow_GetEffectiveMinSize")
fileprivate func wxWindow_GetEffectiveMinSize(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetEffectiveMinSize(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetEffectiveMinSize(ptr)
}

@_silgen_name("wxWindow_GetAutoLayout")
fileprivate func wxWindow_GetAutoLayout(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_GetAutoLayout(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_GetAutoLayout(ptr)
}

@_silgen_name("wxWindow_GetBackgroundColour")
fileprivate func wxWindow_GetBackgroundColour(_ ptr: CVoidPtr, _ colour: CVoidPtr) -> Void
internal func _wxc_wxWindow_GetBackgroundColour(_ ptr: CVoidPtr, _ colour: CVoidPtr) -> Void {
    wxWindow_GetBackgroundColour(ptr, colour)
}

@_silgen_name("wxWindow_GetBestSize")
fileprivate func wxWindow_GetBestSize(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetBestSize(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetBestSize(ptr)
}

@_silgen_name("wxWindow_GetCaret")
fileprivate func wxWindow_GetCaret(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetCaret(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetCaret(ptr)
}

@_silgen_name("wxWindow_GetCharHeight")
fileprivate func wxWindow_GetCharHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_GetCharHeight(_ ptr: CVoidPtr) -> CInt {
    return wxWindow_GetCharHeight(ptr)
}

@_silgen_name("wxWindow_GetCharWidth")
fileprivate func wxWindow_GetCharWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_GetCharWidth(_ ptr: CVoidPtr) -> CInt {
    return wxWindow_GetCharWidth(ptr)
}

@_silgen_name("wxWindow_GetChildre")
fileprivate func wxWindow_GetChildre(_ ptr: CVoidPtr, _ res: UnsafeMutablePointer<CVoidPtr>?, _ cnt: CInt) -> CInt
internal func _wxc_wxWindow_GetChildre(_ ptr: CVoidPtr, _ res: UnsafeMutablePointer<CVoidPtr>?, _ cnt: CInt) -> CInt {
    return wxWindow_GetChildre(ptr, res, cnt)
}

@_silgen_name("wxWindow_GetClientData")
fileprivate func wxWindow_GetClientData(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetClientData(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetClientData(ptr)
}

@_silgen_name("wxWindow_GetClientSize")
fileprivate func wxWindow_GetClientSize(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetClientSize(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetClientSize(ptr)
}

@_silgen_name("wxWindow_GetClientSizeConstraint")
fileprivate func wxWindow_GetClientSizeConstraint(_ ptr: CVoidPtr, _ w: UnsafeMutablePointer<CInt>?, _ h: UnsafeMutablePointer<CInt>?) -> Void
internal func _wxc_wxWindow_GetClientSizeConstraint(_ ptr: CVoidPtr, _ w: UnsafeMutablePointer<CInt>?, _ h: UnsafeMutablePointer<CInt>?) -> Void {
    wxWindow_GetClientSizeConstraint(ptr, w, h)
}

@_silgen_name("wxWindow_GetConstraints")
fileprivate func wxWindow_GetConstraints(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetConstraints(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetConstraints(ptr)
}

@_silgen_name("wxWindow_GetConstraintsInvolvedIn")
fileprivate func wxWindow_GetConstraintsInvolvedIn(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetConstraintsInvolvedIn(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetConstraintsInvolvedIn(ptr)
}

@_silgen_name("wxWindow_GetCursor")
fileprivate func wxWindow_GetCursor(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetCursor(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetCursor(ptr)
}

@_silgen_name("wxWindow_GetDropTarget")
fileprivate func wxWindow_GetDropTarget(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetDropTarget(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetDropTarget(ptr)
}

@_silgen_name("wxWindow_GetEventHandler")
fileprivate func wxWindow_GetEventHandler(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetEventHandler(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetEventHandler(ptr)
}

@_silgen_name("wxWindow_GetFont")
fileprivate func wxWindow_GetFont(_ ptr: CVoidPtr, _ font: CVoidPtr) -> Void
internal func _wxc_wxWindow_GetFont(_ ptr: CVoidPtr, _ font: CVoidPtr) -> Void {
    wxWindow_GetFont(ptr, font)
}

@_silgen_name("wxWindow_GetForegroundColour")
fileprivate func wxWindow_GetForegroundColour(_ ptr: CVoidPtr, _ colour: CVoidPtr) -> Void
internal func _wxc_wxWindow_GetForegroundColour(_ ptr: CVoidPtr, _ colour: CVoidPtr) -> Void {
    wxWindow_GetForegroundColour(ptr, colour)
}

@_silgen_name("wxWindow_GetHandle")
fileprivate func wxWindow_GetHandle(_ ptr: CVoidPtr) -> UnsafeMutableRawPointer
internal func _wxc_wxWindow_GetHandle(_ ptr: CVoidPtr) -> UnsafeMutableRawPointer {
    return wxWindow_GetHandle(ptr)
}

@_silgen_name("wxWindow_GetId")
fileprivate func wxWindow_GetId(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_GetId(_ ptr: CVoidPtr) -> CInt {
    return wxWindow_GetId(ptr)
}

@_silgen_name("wxWindow_GetLabel")
fileprivate func wxWindow_GetLabel(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetLabel(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetLabel(ptr)
}

@_silgen_name("wxWindow_GetLabelEmpty")
fileprivate func wxWindow_GetLabelEmpty(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_GetLabelEmpty(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_GetLabelEmpty(ptr)
}

@_silgen_name("wxWindow_GetMaxHeight")
fileprivate func wxWindow_GetMaxHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_GetMaxHeight(_ ptr: CVoidPtr) -> CInt {
    return wxWindow_GetMaxHeight(ptr)
}

@_silgen_name("wxWindow_GetMaxWidth")
fileprivate func wxWindow_GetMaxWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_GetMaxWidth(_ ptr: CVoidPtr) -> CInt {
    return wxWindow_GetMaxWidth(ptr)
}

@_silgen_name("wxWindow_GetMinHeight")
fileprivate func wxWindow_GetMinHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_GetMinHeight(_ ptr: CVoidPtr) -> CInt {
    return wxWindow_GetMinHeight(ptr)
}

@_silgen_name("wxWindow_GetMinWidth")
fileprivate func wxWindow_GetMinWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_GetMinWidth(_ ptr: CVoidPtr) -> CInt {
    return wxWindow_GetMinWidth(ptr)
}

@_silgen_name("wxWindow_GetName")
fileprivate func wxWindow_GetName(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetName(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetName(ptr)
}

@_silgen_name("wxWindow_GetParent")
fileprivate func wxWindow_GetParent(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetParent(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetParent(ptr)
}

@_silgen_name("wxWindow_GetPosition")
fileprivate func wxWindow_GetPosition(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetPosition(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetPosition(ptr)
}

@_silgen_name("wxWindow_GetPositionConstraint")
fileprivate func wxWindow_GetPositionConstraint(_ ptr: CVoidPtr, _ x: UnsafeMutablePointer<CInt>, _ y: UnsafeMutablePointer<CInt>) -> Void
internal func _wxc_wxWindow_GetPositionConstraint(_ ptr: CVoidPtr, _ x: UnsafeMutablePointer<CInt>, _ y: UnsafeMutablePointer<CInt>) -> Void {
    wxWindow_GetPositionConstraint(ptr, x, y)
}

@_silgen_name("wxWindow_GetRect")
fileprivate func wxWindow_GetRect(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetRect(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetRect(ptr)
}

@_silgen_name("wxWindow_GetScrollPos")
fileprivate func wxWindow_GetScrollPos(_ ptr: CVoidPtr, _ orient: CInt) -> CInt
internal func _wxc_wxWindow_GetScrollPos(_ ptr: CVoidPtr, _ orient: CInt) -> CInt {
    return wxWindow_GetScrollPos(ptr, orient)
}

@_silgen_name("wxWindow_GetScrollRange")
fileprivate func wxWindow_GetScrollRange(_ ptr: CVoidPtr, _ orient: CInt) -> CInt
internal func _wxc_wxWindow_GetScrollRange(_ ptr: CVoidPtr, _ orient: CInt) -> CInt {
    return wxWindow_GetScrollRange(ptr, orient)
}

@_silgen_name("wxWindow_GetScrollThumb")
fileprivate func wxWindow_GetScrollThumb(_ ptr: CVoidPtr, _ orient: CInt) -> CInt
internal func _wxc_wxWindow_GetScrollThumb(_ ptr: CVoidPtr, _ orient: CInt) -> CInt {
    return wxWindow_GetScrollThumb(ptr, orient)
}

@_silgen_name("wxWindow_GetSize")
fileprivate func wxWindow_GetSize(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetSize(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetSize(ptr)
}

@_silgen_name("wxWindow_GetSizeConstraint")
fileprivate func wxWindow_GetSizeConstraint(_ ptr: CVoidPtr, _ w: UnsafeMutablePointer<CInt>, _ h: UnsafeMutablePointer<CInt>) -> Void
internal func _wxc_wxWindow_GetSizeConstraint(_ ptr: CVoidPtr, _ w: UnsafeMutablePointer<CInt>, _ h: UnsafeMutablePointer<CInt>) -> Void {
    wxWindow_GetSizeConstraint(ptr, w, h)
}

@_silgen_name("wxWindow_GetSizer")
fileprivate func wxWindow_GetSizer(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetSizer(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetSizer(ptr)
}

@_silgen_name("wxWindow_GetTextExtent")
fileprivate func wxWindow_GetTextExtent(_ ptr: CVoidPtr, _ w: UnsafeMutablePointer<CInt>, _ h: UnsafeMutablePointer<CInt>, _ descent: UnsafeMutablePointer<CInt>?, _ externalLeading: UnsafeMutablePointer<CInt>?, _ font: CVoidPtr?) -> Void
internal func _wxc_wxWindow_GetTextExtent(_ ptr: CVoidPtr, _ w: UnsafeMutablePointer<CInt>, _ h: UnsafeMutablePointer<CInt>, _ descent: UnsafeMutablePointer<CInt>?, _ externalLeading: UnsafeMutablePointer<CInt>?, _ font: CVoidPtr?) -> Void {
    
    wxWindow_GetTextExtent(ptr, w, h, descent, externalLeading, font)
}

@_silgen_name("wxWindow_GetToolTip")
fileprivate func wxWindow_GetToolTip(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetToolTip(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetToolTip(ptr)
}

@_silgen_name("wxWindow_GetUpdateRegion")
fileprivate func wxWindow_GetUpdateRegion(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetUpdateRegion(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetUpdateRegion(ptr)
}

@_silgen_name("wxWindow_GetValidator")
fileprivate func wxWindow_GetValidator(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetValidator(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetValidator(ptr)
}

@_silgen_name("wxWindow_GetVirtualSize")
fileprivate func wxWindow_GetVirtualSize(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxWindow_GetVirtualSize(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxWindow_GetVirtualSize(ptr)
}

@_silgen_name("wxWindow_GetWindowStyleFlag")
fileprivate func wxWindow_GetWindowStyleFlag(_ ptr: CVoidPtr) -> CLong
internal func _wxc_wxWindow_GetWindowStyleFlag(_ ptr: CVoidPtr) -> CLong {
    return wxWindow_GetWindowStyleFlag(ptr)
}

@_silgen_name("wxWindow_HasFlag")
fileprivate func wxWindow_HasFlag(_ ptr: CVoidPtr, _ flag: CInt) -> CBool
internal func _wxc_wxWindow_HasFlag(_ ptr: CVoidPtr, _ flag: CInt) -> CBool {
    return wxWindow_HasFlag(ptr, flag)
}

@_silgen_name("wxWindow_HasFocus")
fileprivate func wxWindow_HasFocus(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_HasFocus(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_HasFocus(ptr)
}

@_silgen_name("wxWindow_Hide")
fileprivate func wxWindow_Hide(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Hide(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Hide(ptr)
}

@_silgen_name("wxWindow_InitDialog")
fileprivate func wxWindow_InitDialog(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_InitDialog(_ ptr: CVoidPtr) -> Void {
    wxWindow_InitDialog(ptr)
}

@_silgen_name("wxWindow_IsBeingDeleted")
fileprivate func wxWindow_IsBeingDeleted(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_IsBeingDeleted(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_IsBeingDeleted(ptr)
}

@_silgen_name("wxWindow_IsEnabled")
fileprivate func wxWindow_IsEnabled(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_IsEnabled(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_IsEnabled(ptr)
}

@_silgen_name("wxWindow_IsExposed")
fileprivate func wxWindow_IsExposed(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_IsExposed(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_IsExposed(ptr)
}

@_silgen_name("wxWindow_IsShown")
fileprivate func wxWindow_IsShown(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_IsShown(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_IsShown(ptr)
}

@_silgen_name("wxWindow_IsTopLevel")
fileprivate func wxWindow_IsTopLevel(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_IsTopLevel(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_IsTopLevel(ptr)
}

@_silgen_name("wxWindow_Layout")
fileprivate func wxWindow_Layout(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_Layout(_ ptr: CVoidPtr) -> CInt {
    return wxWindow_Layout(ptr)
}

@_silgen_name("wxWindow_LayoutPhase1")
fileprivate func wxWindow_LayoutPhase1(_ ptr: CVoidPtr, _ noChanges: UnsafeMutablePointer<CInt>) -> CBool
internal func _wxc_wxWindow_LayoutPhase1(_ ptr: CVoidPtr, _ noChanges: UnsafeMutablePointer<CInt>) -> CBool {
    return wxWindow_LayoutPhase1(ptr, noChanges)
}

@_silgen_name("wxWindow_LayoutPhase1")
fileprivate func wxWindow_LayoutPhase2(_ ptr: CVoidPtr, _ noChages: UnsafeMutablePointer<CInt>) -> CBool
internal func _wxc_wxWindow_LayoutPhase2(_ ptr: CVoidPtr, _ noChanges: UnsafeMutablePointer<CInt>) -> CBool {
    return wxWindow_LayoutPhase2(ptr, noChanges)
}

@_silgen_name("wxWindow_Lower")
fileprivate func wxWindow_Lower(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_Lower(_ ptr: CVoidPtr) -> Void {
    wxWindow_Lower(ptr)
}

@_silgen_name("wxWindow_Move")
fileprivate func wxWindow_Move(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void
internal func _wxc_wxWindow_Move(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void {
    wxWindow_Move(ptr, x, y)
}

@_silgen_name("wxWindow_MoveConstraint")
fileprivate func wxWindow_MoveConstraint(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void
internal func _wxc_wxWindow_MoveConstraint(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void {
    wxWindow_MoveConstraint(ptr, x, y)
}

@_silgen_name("wxWindow_PopEventHandler")
fileprivate func wxWindow_PopEventHandler(_ ptr: CVoidPtr, _ delete: CBool) -> CVoidPtr
internal func _wxc_wxWindow_PopEventHandler(_ ptr: CVoidPtr, _ delete: CBool) -> CVoidPtr {
    return wxWindow_PopEventHandler(ptr, delete)
}

@_silgen_name("wxWindow_PopupMenu")
fileprivate func wxWindow_PopupMenu(_ ptr: CVoidPtr, _ menu: CVoidPtr, _ x: CInt, _ y: CInt) -> CBool
internal func _wxc_wxWindow_PopupMenu(_ ptr: CVoidPtr, _ menu: CVoidPtr, _ x: CInt, _ y: CInt) -> CBool {
    return wxWindow_PopupMenu(ptr, menu, x, y)
}

@_silgen_name("wxWindow_PrepareDC")
fileprivate func wxWindow_PrepareDC(_ ptr: CVoidPtr, _ dc: CVoidPtr) -> Void
internal func _wxc_wxWindow_PrepareDC(_ ptr: CVoidPtr, _ dc: CVoidPtr) -> Void {
    wxWindow_PrepareDC(ptr, dc)
}

@_silgen_name("wxWindow_PushEventHandler")
fileprivate func wxWindow_PushEventHandler(_ ptr: CVoidPtr, _ handler: CVoidPtr) -> Void
internal func _wxc_wxWindow_PushEventHandler(_ ptr: CVoidPtr, _ handler: CVoidPtr) -> Void {
    
}

@_silgen_name("wxWindow_Raise")
fileprivate func wxWindow_Raise(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_Raise(_ ptr: CVoidPtr) -> Void {
    wxWindow_Raise(ptr)
}

@_silgen_name("wxWindow_Refresh")
fileprivate func wxWindow_Refresh(_ ptr: CVoidPtr, _ eraseBackground: CBool) -> Void
internal func _wxc_wxWindow_Refresh(_ ptr: CVoidPtr, _ eraseBackground: CBool) -> Void {
    wxWindow_Refresh(ptr, eraseBackground)
}

@_silgen_name("wxWindow_RefreshRect")
fileprivate func wxWindow_RefreshRect(_ ptr: CVoidPtr, _ eraseBackground: CBool, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxWindow_RefreshRect(_ ptr: CVoidPtr, _ eraseBackground: CBool, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> Void {
    wxWindow_RefreshRect(ptr, eraseBackground, x, y, w, h)
}

@_silgen_name("wxWindow_ReleaseMouse")
fileprivate func wxWindow_ReleaseMouse(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_ReleaseMouse(_ ptr: CVoidPtr) -> Void {
    wxWindow_ReleaseMouse(ptr)
}

@_silgen_name("wxWindow_RemoveChild")
fileprivate func wxWindow_RemoveChild(_ ptr: CVoidPtr, _ child: CVoidPtr) -> Void
internal func _wxc_wxWindow_RemoveChild(_ ptr: CVoidPtr, _ child: CVoidPtr) -> Void {
    wxWindow_RemoveChild(ptr, child)
}

@_silgen_name("wxWindow_RemoveConstraintReference")
fileprivate func wxWindow_RemoveConstraintReference(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxWindow_RemoveConstraintReference(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxWindow_RemoveConstraintReference(ptr, other)
}

@_silgen_name("wxWindow_Reparent")
fileprivate func wxWindow_Reparent(_ ptr: CVoidPtr, _ parent: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Reparent(_ ptr: CVoidPtr, _ parent: CVoidPtr) -> CBool {
    return wxWindow_Reparent(ptr, parent)
}

@_silgen_name("wxWindow_ResetConstraints")
fileprivate func wxWindow_ResetConstraints(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_ResetConstraints(_ ptr: CVoidPtr) -> Void {
    wxWindow_ResetConstraints(ptr)
}

@_silgen_name("wxWindow_ScreenToClient")
fileprivate func wxWindow_ScreenToClient(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr
internal func _wxc_wxWindow_ScreenToClient(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CVoidPtr {
    return wxWindow_ScreenToClient(ptr, x, y)
}

@_silgen_name("wxWindow_ScrollWindow")
fileprivate func wxWindow_ScrollWindow(_ ptr: CVoidPtr, _ dx: CInt, _ dy: CInt) -> Void
internal func _wxc_wxWindow_ScrollWindow(_ ptr: CVoidPtr, _ dx: CInt, _ dy: CInt) -> Void {
    wxWindow_ScrollWindow(ptr, dx, dy)
}

@_silgen_name("wxWindow_ScrollWindowRect")
fileprivate func wxWindow_ScrollWindowRect(_ ptr: CVoidPtr, _ dx: CInt, _ dy: CInt, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxWindow_ScrollWindowRect(_ ptr: CVoidPtr, _ dx: CInt, _ dy: CInt, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> Void {
    wxWindow_ScrollWindowRect(ptr, dx, dy, x, y, w, h)
}

@_silgen_name("wxWindow_SetAcceleratorTable")
fileprivate func wxWindow_SetAcceleratorTable(_ ptr: CVoidPtr, _ table: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetAcceleratorTable(_ ptr: CVoidPtr, _ table: CVoidPtr) -> Void {
    wxWindow_SetAcceleratorTable(ptr, table)
}

@_silgen_name("wxWindow_SetAutoLayout")
fileprivate func wxWindow_SetAutoLayout(_ ptr: CVoidPtr, _ flag: CBool) -> Void
internal func _wxc_wxWindow_SetAutoLayout(_ ptr: CVoidPtr, _ flag: CBool) -> Void {
    wxWindow_SetAutoLayout(ptr, flag)
}

@_silgen_name("wxWindow_SetBackgroundColour")
fileprivate func wxWindow_SetBackgroundColour(_ ptr: CVoidPtr, _ colour: CVoidPtr) -> CBool
internal func _wxc_wxWindow_SetBackgroundColour(_ ptr: CVoidPtr, _ colour: CVoidPtr) -> CBool {
    return wxWindow_SetBackgroundColour(ptr, colour)
}

@_silgen_name("wxWindow_SetCaret")
fileprivate func wxWindow_SetCaret(_ ptr: CVoidPtr, _ caret: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetCaret(_ ptr: CVoidPtr, _ caret: CVoidPtr) -> Void {
    wxWindow_SetCaret(ptr, caret)
}

@_silgen_name("wxWindow_SetClientData")
fileprivate func wxWindow_SetClientData(_ ptr: CVoidPtr, _ clientData: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetClientData(_ ptr: CVoidPtr, _ clientData: CVoidPtr) -> Void {
    wxWindow_SetClientData(ptr, clientData)
}

@_silgen_name("wxWindow_SetClientObject")
fileprivate func wxWindow_SetClientObject(_ ptr: CVoidPtr, _ object: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetClientObject(_ ptr: CVoidPtr, _ object: CVoidPtr) -> Void {
    wxWindow_SetClientObject(ptr, object)
}

@_silgen_name("wxWindow_SetClientSize")
fileprivate func wxWindow_SetClientSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxWindow_SetClientSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void {
    wxWindow_SetClientSize(ptr, w, h)
}

@_silgen_name("wxWindow_SetConstraintSizes")
fileprivate func wxWindow_SetConstraintSizes(_ ptr: CVoidPtr, _ recurse: CBool) -> Void
internal func _wxc_wxWindow_SetConstraintSizes(_ ptr: CVoidPtr, _ recurse: CBool) -> Void {
    wxWindow_SetConstraintSizes(ptr, recurse)
}

@_silgen_name("wxWindow_SetConstraints")
fileprivate func wxWindow_SetConstraints(_ ptr: CVoidPtr, _ constraints: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetConstraints(_ ptr: CVoidPtr, _ constraints: CVoidPtr) -> Void {
    wxWindow_SetConstraints(ptr, constraints)
}

@_silgen_name("wxWindow_SetCursor")
fileprivate func wxWindow_SetCursor(_ ptr: CVoidPtr, _ cursor: CVoidPtr) -> CBool
internal func _wxc_wxWindow_SetCursor(_ ptr: CVoidPtr, _ cursor: CVoidPtr) -> CBool {
    return wxWindow_SetCursor(ptr, cursor)
}

@_silgen_name("wxWindow_SetDropTarget")
fileprivate func wxWindow_SetDropTarget(_ ptr: CVoidPtr, _ target: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetDropTarget(_ ptr: CVoidPtr, _ target: CVoidPtr) -> Void {
    wxWindow_SetDropTarget(ptr, target)
}

@_silgen_name("wxWindow_SetExtraStyle")
fileprivate func wxWindow_SetExtraStyle(_ ptr: CVoidPtr, _ exStyle: CLong) -> Void
internal func _wxc_wxWindow_SetExtraStyle(_ ptr: CVoidPtr, _ exStyle: CLong) -> Void {
    wxWindow_SetExtraStyle(ptr, exStyle)
}

@_silgen_name("wxWindow_SetFocus")
fileprivate func wxWindow_SetFocus(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetFocus(_ ptr: CVoidPtr) -> Void {
    wxWindow_SetFocus(ptr)
}

@_silgen_name("wxWindow_SetFont")
fileprivate func wxWindow_SetFont(_ ptr: CVoidPtr, _ font: CVoidPtr) -> CBool
internal func _wxc_wxWindow_SetFont(_ ptr: CVoidPtr, _ font: CVoidPtr) -> CBool {
    return wxWindow_SetFont(ptr, font)
}

@_silgen_name("wxWindow_SetForegroundColour")
fileprivate func wxWindow_SetForegroundColour(_ ptr: CVoidPtr, _ colour: CVoidPtr) -> CBool
internal func _wxc_wxWindow_SetForegroundColour( _ ptr: CVoidPtr, _ colour: CVoidPtr) -> CBool {
    return wxWindow_SetForegroundColour(ptr, colour)
}

@_silgen_name("wxWindow_SetId")
fileprivate func wxWindow_SetId(_ ptr: CVoidPtr, _ Id: CInt) -> Void
internal func _wxc_wxWindow_SetId(_ ptr: CVoidPtr, _ Id: CInt) -> Void {
    wxWindow_SetId(ptr, Id)
}

@_silgen_name("wxWindow_SetLabel")
fileprivate func wxWindow_SetLabel(_ ptr: CVoidPtr, _ title: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetLabel(_ ptr: CVoidPtr, _ title: CVoidPtr) -> Void {
    wxWindow_SetLabel(ptr, title)
}

@_silgen_name("wxWindow_SetName")
fileprivate func wxWindow_SetName(_ ptr: CVoidPtr, _ name: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetName(_ ptr: CVoidPtr, _ name: CVoidPtr) -> Void {
    wxWindow_SetName(ptr, name)
}

@_silgen_name("wxWindow_SetScrollPos")
fileprivate func wxWindow_SetScrollPos(_ ptr: CVoidPtr, _ orient: CInt, _ pos: CInt, _ refresh: CBool) -> Void
internal func _wxc_wxWindow_SetScrollPos(_ ptr: CVoidPtr, _ orient: CInt, _ pos: CInt, _ refresh: CBool) -> Void {
    wxWindow_SetScrollPos(ptr, orient, pos, refresh)
}

@_silgen_name("wxWindow_SetScrollbar")
fileprivate func wxWindow_SetScrollbar(_ ptr: CVoidPtr, _ orient: CInt, _ pos: CInt, _ thumbSize: CInt, _ range: CInt, _ refresh: CBool) -> Void
internal func _wxc_wxWindow_SetScrollbar(_ ptr: CVoidPtr, _ orient: CInt, _ pos: CInt, _ thumbSize: CInt, _ range: CInt, _ refresh: CBool) -> Void {
    wxWindow_SetScrollbar(ptr, orient, pos, thumbSize, range, refresh)
}

@_silgen_name("wxWindow_SetSize")
fileprivate func wxWindow_SetSize(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ sizeFlags: CInt) -> Void
internal func _wxc_wxWindow_SetSize(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ sizeFlags: CInt) -> Void {
    wxWindow_SetSize(ptr, x, y, w, h, sizeFlags)
}

@_silgen_name("wxWindow_SetSizeConstraint")
fileprivate func wxWindow_SetSizeConstraint(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxWindow_SetSizeConstraint(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> Void {
    wxWindow_SetSizeConstraint(ptr, x, y, w, h)
}

@_silgen_name("wxWindow_SetSizeHints")
fileprivate func wxWindow_SetSizeHints(_ ptr: CVoidPtr, _ minW: CInt, _ minH: CInt, _ maxW: CInt, _ maxH: CInt, _ incW: CInt, _ incH: CInt) -> Void
internal func _wxc_wxWindow_SetSizeHints(_ ptr: CVoidPtr, _ minW: CInt, _ minH: CInt, _ maxW: CInt, _ maxH: CInt, _ incW: CInt, _ incH: CInt) -> Void {
    wxWindow_SetSizeHints(ptr, minW, minH, maxW, maxH, incW, incH)
}

@_silgen_name("wxWindow_SetSizer")
fileprivate func wxWindow_SetSizer(_ ptr: CVoidPtr, _ sizer: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetSizer(_ ptr: CVoidPtr, _ sizer: CVoidPtr) -> Void {
    wxWindow_SetSizer(ptr, sizer)
}

@_silgen_name("wxWindow_SetToolTip")
fileprivate func wxWindow_SetToolTip(_ ptr: CVoidPtr,  _ tip: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetToolTip(_ ptr: CVoidPtr, _ tip: CVoidPtr) -> Void {
    wxWindow_SetToolTip(ptr, tip)
}

@_silgen_name("wxWindow_SetValidator")
fileprivate func wxWindow_SetValidator(_ ptr: CVoidPtr, _ validator: CVoidPtr) -> Void
internal func _wxc_wxWindow_SetValidator(_ ptr: CVoidPtr, _ validator: CVoidPtr) -> Void {
    wxWindow_SetValidator(ptr, validator)
}

@_silgen_name("wxWindow_SetWindowStyleFlag")
fileprivate func wxWindow_SetWindowStyleFlag(_ ptr: CVoidPtr, _ flag: CLong) -> Void
internal func _wxc_wxWindow_SetWindowStyleFlag(_ ptr: CVoidPtr, _ flag: CLong) -> Void {
    wxWindow_SetWindowStyleFlag(ptr, flag)
}

@_silgen_name("wxWindow_Show")
fileprivate func wxWindow_Show(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Show(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Show(ptr)
}

@_silgen_name("wxWindow_Thaw")
fileprivate func wxWindow_Thaw(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_Thaw(_ ptr: CVoidPtr) -> Void {
    wxWindow_Thaw(ptr)
}

@_silgen_name("wxWindow_TransferDataFromWindow")
fileprivate func wxWindow_TransferDataFromWindow(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_TransferDataFromWindow(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_TransferDataFromWindow(ptr)
}

@_silgen_name("wxWindow_TransferDataToWindow")
fileprivate func wxWindow_TransferDataToWindow(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_TransferDataToWindow(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_TransferDataToWindow(ptr)
}

@_silgen_name("wxWindow_UnsetConstraints")
fileprivate func wxWindow_UnsetConstraints(_ ptr: CVoidPtr, _ constraints: CVoidPtr) -> Void
internal func _wxc_wxWindow_UnsetConstraints(_ ptr: CVoidPtr, _ constraints: CVoidPtr) -> Void {
    wxWindow_UnsetConstraints(ptr, constraints)
}

@_silgen_name("wxWindow_UpdateWindowUI")
fileprivate func wxWindow_UpdateWindowUI(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxWindow_UpdateWindowUI(_ ptr: CVoidPtr) -> Void {
    wxWindow_UpdateWindowUI(ptr)
}

@_silgen_name("wxWindow_Validate")
fileprivate func wxWindow_Validate(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxWindow_Validate(_ ptr: CVoidPtr) -> CBool {
    return wxWindow_Validate(ptr)
}

@_silgen_name("wxWindow_SetVirtualSize")
fileprivate func wxWindow_SetVirtualSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxWindow_SetVirtualSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void {
    wxWindow_SetVirtualSize(ptr, w, h)
}

@_silgen_name("wxWindow_WarpPointer")
fileprivate func wxWindow_WarpPointer(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void
internal func _wxc_wxWindow_WarpPointer(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> Void {
    wxWindow_WarpPointer(ptr, x, y)
}

// wxTopLevelWindow

@_silgen_name("wxTopLevelWindow_EnableCloseButton")
fileprivate func wxTopLevelWindow_EnableCloseButton(_ ptr: CVoidPtr, _ enable: CBool) -> CBool
internal func _wxc_wxTopLevelWindow_EnableCloseButton(_ ptr: CVoidPtr, _ enable: CBool) -> CBool {
    return wxTopLevelWindow_EnableCloseButton(ptr, enable)
}

@_silgen_name("wxTopLevelWindow_GetDefaultItem")
fileprivate func wxTopLevelWindow_GetDefaultItem(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxTopLevelWindow_GetDefaultItem(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxTopLevelWindow_GetDefaultItem(ptr)
}

@_silgen_name("wxTopLevelWindow_GetIcon")
fileprivate func wxTopLevelWindow_GetIcon(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxTopLevelWindow_GetIcon(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxTopLevelWindow_GetIcon(ptr)
}

@_silgen_name("wxTopLevelWindow_GetTitle")
fileprivate func wxTopLevelWindow_GetTitle(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxTopLevelWindow_GetTitle(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxTopLevelWindow_GetTitle(ptr)
}

@_silgen_name("wxTopLevelWindow_Iconize")
fileprivate func wxTopLevelWindow_Iconize(_ ptr: CVoidPtr, _ iconize: CBool) -> Void
internal func _wxc_wxTopLevelWindow_Iconize(_ ptr: CVoidPtr, _ iconize: CBool) -> Void {
    wxTopLevelWindow_Iconize(ptr, iconize)
}

@_silgen_name("wxTopLevelWindow_IsActive")
fileprivate func wxTopLevelWindow_IsActive(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxTopLevelWindow_IsActive(_ ptr: CVoidPtr) -> CBool {
    return wxTopLevelWindow_IsActive(ptr)
}

@_silgen_name("wxTopLevelWindow_IsIconized")
fileprivate func wxTopLevelWindow_IsIconized(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxTopLevelWindow_IsIconized(_ ptr: CVoidPtr) -> CBool {
    return wxTopLevelWindow_IsIconized(ptr)
}

@_silgen_name("wxTopLevelWindow_IsMaximized")
fileprivate func wxTopLevelWindow_IsMaximized(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxTopLevelWindow_IsMaximized(_ ptr: CVoidPtr) -> CBool {
    return wxTopLevelWindow_IsMaximized(ptr)
}

@_silgen_name("wxTopLevelWindow_Maximize")
fileprivate func wxTopLevelWindow_Maximize(_ ptr: CVoidPtr, _ maximize: CBool) -> Void
internal func _wxc_wxTopLevelWindow_Maximize(_ ptr: CVoidPtr, _ maximize: CBool) -> Void {
    wxTopLevelWindow_Maximize(ptr, maximize)
}

@_silgen_name("wxTopLevelWindow_RequestUserAttention")
fileprivate func wxTopLevelWindow_RequestUserAttention(_ ptr: CVoidPtr, _ flag: CInt) -> Void
internal func _wxc_wxTopLevelWindow_RequestUserAttention(_ ptr: CVoidPtr, _ flag: CInt) -> Void {
    wxTopLevelWindow_RequestUserAttention(ptr , flag)
}

@_silgen_name("wxTopLevelWindow_SetDefaultItem")
fileprivate func wxTopLevelWindow_SetDefaultItem(_ ptr: CVoidPtr, _ window: CVoidPtr) -> Void
internal func _wxc_wxTopLevelWindow_SetDefaultItem(_ ptr: CVoidPtr, _ window: CVoidPtr) -> Void {
    wxTopLevelWindow_SetDefaultItem(ptr, window)
}

@_silgen_name("wxTopLevelWindow_SetIcon")
fileprivate func wxTopLevelWindow_SetIcon(_ ptr: CVoidPtr, _ icon: CVoidPtr) -> Void
internal func _wxc_wxTopLevelWindow_SetIcon(_ ptr: CVoidPtr, _ icon: CVoidPtr) -> Void {
    wxTopLevelWindow_SetIcon(ptr, icon)
}

@_silgen_name("wxTopLevelWindow_SetIcons")
fileprivate func wxTopLevelWindow_SetIcons(_ ptr: CVoidPtr, _ icons: CVoidPtr) -> Void
internal func _wxc_wxTopLevelWindow_SetIcons(_ ptr: CVoidPtr, _ icons: CVoidPtr) -> Void {
    wxTopLevelWindow_SetIcons(ptr, icons)
}

@_silgen_name("wxTopLevelWindow_SetMaxSize")
fileprivate func wxTopLevelWindow_SetMaxSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxTopLevelWindow_SetMaxSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void {
    wxTopLevelWindow_SetMaxSize(ptr, w, h)
}

@_silgen_name("wxTopLevelWindow_SetMinSize")
fileprivate func wxTopLevelWindow_SetMinSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void
internal func _wxc_wxTopLevelWindow_SetMinSize(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt) -> Void {
    wxTopLevelWindow_SetMinSize(ptr, w, h)
}

@_silgen_name("wxTopLevelWindow_SetTitle")
fileprivate func wxTopLevelWindow_SetTitle(_ ptr: CVoidPtr, _ title: CVoidPtr) -> Void
internal func _wxc_wxTopLevelWindow_SetTitle(_ ptr: CVoidPtr, _ title: CVoidPtr) -> Void {
    wxTopLevelWindow_SetTitle(ptr, title)
}