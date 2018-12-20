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

@_silgen_name("wxObject_SafeDelete")
fileprivate func wxObject_SafeDelete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxObject_SafeDelete(_ ptr: CVoidPtr) -> Void {
    wxObject_SafeDelete(ptr)
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

@_silgen_name("ELJApp_GetUserHome")
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
fileprivate func wxWindow_Create(_ prt: CVoidPtr, _ _id: CInt, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ stl: CLong) -> CVoidPtr
internal func _wxc_wxWindow_Create(_ prt: CVoidPtr, _ _id: CInt, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ stl: CLong) -> CVoidPtr {
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

@_silgen_name("wxWindow_GetChildren")
fileprivate func wxWindow_GetChildren(_ ptr: CVoidPtr, _ res: UnsafeMutablePointer<CVoidPtr>?, _ cnt: CInt) -> CInt
internal func _wxc_wxWindow_GetChildren(_ ptr: CVoidPtr, _ res: UnsafeMutablePointer<CVoidPtr>?, _ cnt: CInt) -> CInt {
    return wxWindow_GetChildren(ptr, res, cnt)
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

// wxFrame

@_silgen_name("wxFrame_Create")
fileprivate func wxFrame_Create(_ parent: CVoidPtr, _ winID: CInt, _ title: CVoidPtr, _ posX: CInt, _ posY: CInt, _ width: CInt, _ height: CInt, _ style: CLong) -> CVoidPtr
internal func _wxc_wxFrame_Create(_ parent: CVoidPtr, _ winID: CInt, _ title: CVoidPtr, _ posX: CInt, _ posY: CInt, _ width: CInt, _ height: CInt, _ style: CLong) -> CVoidPtr {
    return wxFrame_Create(parent, winID, title, posX, posY, width, height, style)
}

@_silgen_name("wxFrame_CreateStatusBar")
fileprivate func wxFrame_CreateStatusBar(_ ptr: CVoidPtr, _ number: CInt, _ style: CLong) -> CVoidPtr
internal func _wxc_wxFrame_CreateStatusBar(_ ptr: CVoidPtr, _ number: CInt, _ style: CLong) -> CVoidPtr {
    return wxFrame_CreateStatusBar(ptr, number, style)
}

@_silgen_name("wxFrame_CreateToolBar")
fileprivate func wxFrame_CreateToolBar(_ ptr: CVoidPtr, _ style: CLong) -> CVoidPtr
internal func _wxc_wxFrame_CreateToolBar(_ ptr: CVoidPtr, _ style: CLong) -> CVoidPtr {
    return wxFrame_CreateToolBar(ptr, style)
}

@_silgen_name("wxFrame_GetClientAreaOrigin")
fileprivate func wxFrame_GetClientAreaOrigin(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFrame_GetClientAreaOrigin(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFrame_GetClientAreaOrigin(ptr)
}

@_silgen_name("wxFrame_GetMenuBar")
fileprivate func wxFrame_GetMenuBar(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFrame_GetMenuBar(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFrame_GetMenuBar(ptr)
}

@_silgen_name("wxFrame_GetStatusBar")
fileprivate func wxFrame_GetStatusBar(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFrame_GetStatusBar(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFrame_GetStatusBar(ptr)
}

@_silgen_name("wxFrame_GetToolBar")
fileprivate func wxFrame_GetToolBar(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFrame_GetToolBar(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxFrame_GetToolBar(ptr)
}

@_silgen_name("wxFrame_Restore")
fileprivate func wxFrame_Restore(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxFrame_Restore(_ ptr: CVoidPtr) -> Void {
    wxFrame_Restore(ptr)
}

@_silgen_name("wxFrame_SetMenuBar")
fileprivate func wxFrame_SetMenuBar(_ ptr: CVoidPtr, _ manuBar: CVoidPtr) -> Void
internal func _wxc_wxFrame_SetMenuBar(_ ptr: CVoidPtr, _ menuBar: CVoidPtr) -> Void {
    wxFrame_SetMenuBar(ptr, menuBar)
}

@_silgen_name("wxFrame_SetStatusBar")
fileprivate func wxFrame_SetStatusBar(_ ptr: CVoidPtr, _ statusBar: CVoidPtr) -> Void
internal func _wxc_wxFrame_SetStatusBar(_ ptr: CVoidPtr, _ statusBar: CVoidPtr) -> Void {
    wxFrame_SetStatusBar(ptr, statusBar)
}

@_silgen_name("wxFrame_SetStatusText")
fileprivate func wxFrame_SetStatusText(_ ptr: CVoidPtr, _ text: CVoidPtr, _ number: CInt) -> Void
internal func _wxc_wxFrame_SetStatusText(_ ptr: CVoidPtr, _ text: CVoidPtr, _ number: CInt) -> Void {
    wxFrame_SetStatusText(ptr, text, number)
}

@_silgen_name("wxFrame_SetStatusWidths")
fileprivate func wxFrame_SetStatusWidths(_ ptr: CVoidPtr, _ count: CInt, _ widths_field: UnsafePointer<CInt>!) -> Void
internal func _wxc_wxFrame_SetStatusWidths(_ ptr: CVoidPtr, _ count: CInt, _ widths_field: UnsafePointer<CInt>!) -> Void {
    wxFrame_SetStatusWidths(ptr, count, widths_field)
}

@_silgen_name("wxFrame_SetToolBar")
fileprivate func wxFrame_SetToolBar(_ ptr: CVoidPtr, _ toolBar: CVoidPtr) -> Void
internal func _wxc_wxFrame_SetToolBar(_ ptr: CVoidPtr, _ toolBar: CVoidPtr) -> Void {
    wxFrame_SetToolBar(ptr, toolBar)
}

// wxControl

@_silgen_name("wxControl_Command")
fileprivate func wxControl_Command(_ ptr: CVoidPtr, _ event: CVoidPtr) -> Void
internal func _wxc_wxControl_Command(_ ptr: CVoidPtr, _ event: CVoidPtr) -> Void {
    wxControl_Command(ptr, event)
}

@_silgen_name("wxControl_GetLabel")
fileprivate func wxControl_GetLabel(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxControl_GetLabel(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxControl_GetLabel(ptr)
}

@_silgen_name("wxControl_SetLabel")
fileprivate func wxControl_SetLabel(_ ptr: CVoidPtr, _ label: CVoidPtr) -> Void
internal func _wxc_wxControl_SetLabel(_ ptr: CVoidPtr, _ label: CVoidPtr) -> Void {
    wxControl_SetLabel(ptr, label)
}

// wxBitmap

@_silgen_name("Null_Bitmap")
fileprivate func Null_Bitmap() -> CVoidPtr
internal func _wxc_Null_Bitmap() -> CVoidPtr {
    return Null_Bitmap()
}

@_silgen_name("wxBitmap_SafeDelete")
fileprivate func wxBitmap_SafeDelete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxBitmap_SafeDelete(_ ptr: CVoidPtr) -> Void {
    wxBitmap_SafeDelete(ptr)
}

@_silgen_name("wxBitmap_IsStatic")
fileprivate func wxBitmap_IsStatic(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxBitmap_IsStatic(_ ptr: CVoidPtr) -> CBool {
    return wxBitmap_IsStatic(ptr)
}

@_silgen_name("wxBitmap_CreateFromImage")
fileprivate func wxBitmap_CreateFromImage(_ image: CVoidPtr, _ depth: CInt) -> CVoidPtr
internal func _wxc_wxBitmap_CreateFromImage(_ image: CVoidPtr, _ depth: CInt) -> CVoidPtr {
    return wxBitmap_CreateFromImage(image, depth)
}

@_silgen_name("wxBitmap_AddHandler")
fileprivate func wxBitmap_AddHandler(_ handler: CVoidPtr) -> Void
internal func _wxc_wxBitmap_AddHandler(_ handler: CVoidPtr) -> Void {
    wxBitmap_AddHandler(handler)
}

@_silgen_name("wxBitmap_CleanUpHandlers")
fileprivate func wxBitmap_CleanUpHandlers() -> Void
internal func _wxc_wxBitmap_CleanUpHandlers() -> Void {
    wxBitmap_CleanUpHandlers()
}

@_silgen_name("wxBitmap_Create")
fileprivate func wxBitmap_Create(_ bits: UnsafeRawPointer, _ w: CInt, _ h: CInt, _ depth: CInt) -> CVoidPtr
internal func _wxc_wxBitmap_Create(_ bits: UnsafeRawPointer, _ w: CInt, _ h: CInt, _ depth: CInt) -> CVoidPtr {
    return wxBitmap_Create(bits, w, h, depth)
}

@_silgen_name("wxBitmap_CreateDefault")
fileprivate func wxBitmap_CreateDefault() -> CVoidPtr
internal func _wxc_wxBitmap_CreateDefault() -> CVoidPtr {
    return wxBitmap_CreateDefault()
}

@_silgen_name("wxBitmap_CreateEmpty")
fileprivate func wxBitmap_CreateEmpty(_ w: CInt, _ h: CInt, _ depth: CInt) -> CVoidPtr
internal func _wxc_wxBitmap_CreateEmpty(_ w: CInt, _ h: CInt, _ depth: CInt) -> CVoidPtr {
    return wxBitmap_CreateEmpty(w, h, depth)
}

@_silgen_name("wxBitmap_CreateFromXPM")
fileprivate func wxBitmap_CreateFromXPM(_ data: UnsafeRawPointer) -> CVoidPtr
internal func _wxc_wxBitmap_CreateFromXPM(_ data: UnsafeRawPointer) -> CVoidPtr {
    return wxBitmap_CreateFromXPM(data)
}

@_silgen_name("wxBitmap_CreateLoad")
fileprivate func wxBitmap_CreateLoad(_ file: CVoidPtr, _ type: CInt) -> CVoidPtr
internal func _wxc_wxBitmap_CreateLoad(_ file: CVoidPtr, _ type: CInt) -> CVoidPtr {
    return wxBitmap_CreateLoad(file, type)
}

@_silgen_name("wxBitmap_Delete")
fileprivate func wxBitmap_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxBitmap_Delete(_ ptr: CVoidPtr) -> Void {
    wxBitmap_Delete(ptr)
}

@_silgen_name("wxBitmap_FindHandlerByExtension")
fileprivate func wxBitmap_FindHandlerByExtension(_ extension: CVoidPtr, _ type: CInt) -> CVoidPtr
internal func _wxc_wxBitmap_FindHandlerByExtension(_ extension: CVoidPtr, _ type: CInt) -> CVoidPtr {
    return wxBitmap_FindHandlerByExtension(`extension`, type)
}

@_silgen_name("wxBitmap_FindHandlerByName")
fileprivate func wxBitmap_FindHandlerByName(_ name: CVoidPtr) -> CVoidPtr
internal func _wxc_wxBitmap_FindHandlerByName(_ name: CVoidPtr) -> CVoidPtr {
    return wxBitmap_FindHandlerByName(name)
}

@_silgen_name("wxBitmap_FindHandlerByType")
fileprivate func wxBitmap_FindHandlerByType(_ type: CInt) -> CVoidPtr
internal func _wxc_wxBitmap_FindHandlerByType(_ type: CInt) -> CVoidPtr {
    return wxBitmap_FindHandlerByType(type)
}

@_silgen_name("wxBitmap_GetDepth")
fileprivate func wxBitmap_GetDepth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxBitmap_GetDepth(_ ptr: CVoidPtr) -> CInt {
    return wxBitmap_GetDepth(ptr)
}

@_silgen_name("wxBitmap_GetHeight")
fileprivate func wxBitmap_GetHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxBitmap_GetHeight(_ ptr: CVoidPtr) -> CInt {
    return wxBitmap_GetHeight(ptr)
}

@_silgen_name("wxBitmap_GetMask")
fileprivate func wxBitmap_GetMask(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxBitmap_GetMask(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxBitmap_GetMask(ptr)
}

@_silgen_name("wxBitmap_GetSubBitmap")
fileprivate func wxBitmap_GetSubBitmap(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ bitmap: CVoidPtr) -> Void
internal func _wxc_wxBitmap_GetSubBitmap(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt, _ bitmap: CVoidPtr) -> Void {
    wxBitmap_GetSubBitmap(ptr, x, y, w, h, bitmap)
}

@_silgen_name("wxBitmap_GetWidth")
fileprivate func wxBitmap_GetWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxBitmap_GetWidth(_ ptr: CVoidPtr) -> CInt {
    return wxBitmap_GetWidth(ptr)
}

@_silgen_name("wxBitmap_InitStandardHandlers")
fileprivate func wxBitmap_InitStandardHandlers() -> Void
internal func _wxc_wxBitmap_InitStandardHandlers() -> Void {
    wxBitmap_InitStandardHandlers()
}

@_silgen_name("wxBitmap_InsertHandler")
fileprivate func wxBitmap_InsertHandler(_ handler: CVoidPtr) -> Void
internal func _wxc_wxBitmap_InsertHandler(_ handler: CVoidPtr) -> Void {
    wxBitmap_InsertHandler(handler)
}

@_silgen_name("wxBitmap_LoadFile")
fileprivate func wxBitmap_LoadFile(_ ptr: CVoidPtr, _ name: CVoidPtr, _ type: CInt) -> CBool
internal func _wxc_wxBitmap_LoadFile(_ ptr: CVoidPtr, _ name: CVoidPtr, _ type: CInt) -> CBool {
    return wxBitmap_LoadFile(ptr, name, type)
}

@_silgen_name("wxBitmap_IsOk")
fileprivate func wxBitmap_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxBitmap_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxBitmap_IsOk(ptr)
}

@_silgen_name("wxBitmap_RemoveHandler")
fileprivate func wxBitmap_RemoveHandler(_ name: CVoidPtr) -> CBool
internal func _wxc_wxBitmap_RemoveHandler(_ name: CVoidPtr) -> CBool {
    return wxBitmap_RemoveHandler(name)
}

@_silgen_name("wxBitmap_SaveFile")
fileprivate func wxBitmap_SaveFile(_ ptr: CVoidPtr, _ name: CVoidPtr, _ type: CInt, _ palette: CVoidPtr) -> CBool
internal func _wxc_wxBitmap_SaveFile(_ ptr: CVoidPtr, _ name: CVoidPtr, _ type: CInt, _ palette: CVoidPtr) -> CBool {
    return wxBitmap_SaveFile(ptr, name, type, palette)
}

@_silgen_name("wxBitmap_SetDepth")
fileprivate func wxBitmap_SetDepth(_ ptr: CVoidPtr, _ depth: CInt) -> Void
internal func _wxc_wxBitmap_SetDepth(_ ptr: CVoidPtr, _ depth: CInt) -> Void {
    wxBitmap_SetDepth(ptr, depth)
}

@_silgen_name("wxBitmap_SetHeight")
fileprivate func wxBitmap_SetHeight(_ ptr: CVoidPtr, _ h: CInt) -> Void
internal func _wxc_wxBitmap_SetHeight(_ ptr: CVoidPtr, _ h: CInt) -> Void {
    wxBitmap_SetHeight(ptr, h)
}

@_silgen_name("wxBitmap_SetMask")
fileprivate func wxBitmap_SetMask(_ ptr: CVoidPtr, _ mask: CVoidPtr) -> Void
internal func _wxc_wxBitmap_SetMask(_ ptr: CVoidPtr, _ mask: CVoidPtr) -> Void {
    wxBitmap_SetMask(ptr, mask)
}

@_silgen_name("wxBitmap_SetWidth")
fileprivate func wxBitmap_SetWidth(_ ptr: CVoidPtr, _ w: CInt) -> Void
internal func _wxc_wxBitmap_SetWidth(_ ptr: CVoidPtr, _ w: CInt) -> Void {
    wxBitmap_SetWidth(ptr, w)
}

// wxPalette

@_silgen_name("wxPalette_Assign")
fileprivate func wxPalette_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxPalette_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxPalette_Assign(ptr, other)
}

@_silgen_name("wxPalette_CreateDefault")
fileprivate func wxPalette_CreateDefault() -> CVoidPtr
internal func _wxc_wxPalette_CreateDefault() -> CVoidPtr {
    return wxPalette_CreateDefault()
}

@_silgen_name("wxPalette_CreateRGB")
fileprivate func wxPalette_CreateRGB(_ count: CInt, _ red: UnsafeRawPointer!, _ green: UnsafeRawPointer!, _ blue: UnsafeRawPointer!) -> CVoidPtr
internal func _wxc_wxPalette_CreateRGB(_ count: CInt, _ red: UnsafeRawPointer!, _ green: UnsafeRawPointer!, _ blue: UnsafeRawPointer!) -> CVoidPtr {
    return wxPalette_CreateRGB(count, red, green, blue)
}

@_silgen_name("wxPalette_Delete")
fileprivate func wxPalette_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxPalette_Delete(_ ptr: CVoidPtr) -> Void {
    wxPalette_Delete(ptr)
}

@_silgen_name("wxPalette_GetPixel")
fileprivate func wxPalette_GetPixel(_ ptr: CVoidPtr, _ red: UInt8, _ green: UInt8, _ blue: UInt8) -> CInt
internal func _wxc_wxPalette_GetPixel(_ ptr: CVoidPtr, _ red: UInt8, _ green: UInt8, _ blue: UInt8) -> CInt {
    return wxPalette_GetPixel(ptr, red, green, blue)
}

@_silgen_name("wxPalette_GetRGB")
fileprivate func wxPalette_GetRGB(_ ptr: CVoidPtr, _ pixel: CInt, _ red: UnsafeMutableRawPointer, _ green: UnsafeMutableRawPointer, _ blue: UnsafeMutableRawPointer) -> CBool
internal func _wxc_wxPalette_GetRGB(_ ptr: CVoidPtr, _ pixel: CInt, _ red: UnsafeMutableRawPointer, _ green: UnsafeMutableRawPointer, _ blue: UnsafeMutableRawPointer) -> CBool {
    return wxPalette_GetRGB(ptr, pixel, red, green, blue)
}

@_silgen_name("wxPalette_IsEqual")
fileprivate func wxPalette_IsEqual(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool
internal func _wxc_wxPalette_IsEqual(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool {
    return wxPalette_IsEqual(ptr, other)
}

@_silgen_name("wxPalette_IsOk")
fileprivate func wxPalette_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxPalette_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxPalette_IsOk(ptr)
}

// wxIcon

@_silgen_name("wxIcon_SafeDelete")
fileprivate func wxIcon_SafeDelete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxIcon_SafeDelete(_ ptr: CVoidPtr) -> Void {
    return wxIcon_SafeDelete(ptr)
}

@_silgen_name("wxIcon_IsStatic")
fileprivate func wxIcon_IsStatic(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxIcon_IsStatic(_ ptr: CVoidPtr) -> CBool {
    return wxIcon_IsStatic(ptr)
}

@_silgen_name("wxIcon_Assign")
fileprivate func wxIcon_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxIcon_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxIcon_Assign(ptr, other)
}

@_silgen_name("wxIcon_CopyFromBitmap")
fileprivate func wxIcon_CopyFromBitmap(_ ptr: CVoidPtr, _ bitmap: CVoidPtr) -> Void
internal func _wxc_wxIcon_CopyFromBitmap(_ ptr: CVoidPtr, _ bitmap: CVoidPtr) -> Void {
    wxIcon_CopyFromBitmap(ptr, bitmap)
}

@_silgen_name("wxIcon_CreateDefault")
fileprivate func wxIcon_CreateDefault() -> CVoidPtr
internal func _wxc_wxIcon_CreateDefault() -> CVoidPtr {
    return wxIcon_CreateDefault()
}

@_silgen_name("wxIcon_CreateLoad")
fileprivate func wxIcon_CreateLoad(_ file: CVoidPtr, _ type: CInt, _ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_wxIcon_CreateLoad(_ file: CVoidPtr, _ type: CInt, _ w: CInt, _ h: CInt) -> CVoidPtr {
    return wxIcon_CreateLoad(file, type, w, h)
}

@_silgen_name("wxIcon_Delete")
fileprivate func wxIcon_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxIcon_Delete(_ ptr: CVoidPtr) -> Void {
    wxIcon_Delete(ptr)
}

@_silgen_name("wxIcon_FromXPM")
fileprivate func wxIcon_FromXPM(_ data: UnsafeRawPointer) -> CVoidPtr
internal func _wxc_wxIcon_FromXPM(_ data: UnsafeRawPointer) -> CVoidPtr {
    return wxIcon_FromXPM(data)
}

@_silgen_name("wxIcon_GetDepth")
fileprivate func wxIcon_GetDepth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxIcon_GetDepth(_ ptr: CVoidPtr) -> CInt {
    return wxIcon_GetDepth(ptr)
}

@_silgen_name("wxIcon_GetHeight")
fileprivate func wxIcon_GetHeight(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxIcon_GetHeight(_ ptr: CVoidPtr) -> CInt {
    return wxIcon_GetHeight(ptr)
}

@_silgen_name("wxIcon_GetWidth")
fileprivate func wxIcon_GetWidth(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxIcon_GetWidth(_ ptr: CVoidPtr) -> CInt {
    return wxIcon_GetWidth(ptr)
}

@_silgen_name("wxIcon_IsEqual")
fileprivate func wxIcon_IsEqual(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool
internal func _wxc_wxIcon_IsEqual(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool {
    return wxIcon_IsEqual(ptr, other)
}

@_silgen_name("wxIcon_Load")
fileprivate func wxIcon_Load(_ ptr: CVoidPtr, _ file: CVoidPtr, _ type: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxIcon_Load(_ ptr: CVoidPtr, _ file: CVoidPtr, _ type: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxIcon_Load(ptr, file, type, w, h)
}

@_silgen_name("wxIcon_IsOk")
fileprivate func wxIcon_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxIcon_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxIcon_IsOk(ptr)
}

@_silgen_name("wxIcon_SetDepth")
fileprivate func wxIcon_SetDepth(_ ptr: CVoidPtr, _ depth: CInt) -> Void
internal func _wxc_wxIcon_SetDepth(_ ptr: CVoidPtr, _ depth: CInt) -> Void {
    wxIcon_SetDepth(ptr, depth)
}

@_silgen_name("wxIcon_SetHeight")
fileprivate func wxIcon_SetHeight(_ ptr: CVoidPtr, _ height: CInt) -> Void
internal func _wxc_wxIcon_SetHeight(_ ptr: CVoidPtr, _ height: CInt) -> Void {
    wxIcon_SetHeight(ptr, height)
}

@_silgen_name("wxIcon_SetWidth")
fileprivate func wxIcon_SetWidth(_ ptr: CVoidPtr, _ width: CInt) -> Void
internal func _wxc_wxIcon_SetWidth(_ ptr: CVoidPtr, _ width: CInt) -> Void {
    wxIcon_SetWidth(ptr, width)
}

// wxCursor

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

@_silgen_name("Cursor_CreateFromImage")
fileprivate func Cursor_CreateFromImage(_ image: CVoidPtr) -> CVoidPtr
internal func _wxc_Cursor_CreateFromImage(_ image: CVoidPtr) -> CVoidPtr {
    return Cursor_CreateFromImage(image)
}

@_silgen_name("Cursor_CreateLoad")
fileprivate func Cursor_CreateLoad(_ name: CVoidPtr, _ type: CInt, _ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_Cursor_CreateLoad(_ name: CVoidPtr, _ type: CInt, _ w: CInt, _ h: CInt) -> CVoidPtr {
    return Cursor_CreateLoad(name, type, w, h)
}

// wxStreamBase

@_silgen_name("wxStreamBase_GetLastError")
fileprivate func wxStreamBase_GetLastError(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxStreamBase_GetLastError(_ ptr: CVoidPtr) -> CInt {
    return wxStreamBase_GetLastError(ptr)
}

@_silgen_name("wxStreamBase_GetSize")
fileprivate func wxStreamBase_GetSize(_ ptr: CVoidPtr) -> UInt
internal func _wxc_wxStreamBase_GetSize(_ ptr: CVoidPtr) -> UInt {
    return wxStreamBase_GetSize(ptr)
}

@_silgen_name("wxStreamBase_IsOk")
fileprivate func wxStreamBase_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxStreamBase_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxStreamBase_IsOk(ptr)
}

@_silgen_name("wxStreamBase_Delete")
fileprivate func wxStreamBase_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxStreamBase_Delete(_ ptr: CVoidPtr) -> Void {
    wxStreamBase_Delete(ptr)
}

// wxOutputStream

@_silgen_name("wxOutputStream_Delete")
fileprivate func wxOutputStream_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxOutputStream_Delete(_ ptr: CVoidPtr) -> Void {
    wxOutputStream_Delete(ptr)
}


@_silgen_name("wxOutputStream_LastWrite")
fileprivate func wxOutputStream_LastWrite(_ ptr: CVoidPtr) -> UInt
internal func _wxc_wxOutputStream_LastWrite(_ ptr: CVoidPtr) -> UInt {
    return wxOutputStream_LastWrite(ptr)
}

@_silgen_name("wxOutputStream_PutC")
fileprivate func wxOutputStream_PutC(_ ptr: CVoidPtr, _ char: CChar) -> Void
internal func _wxc_wxOutputStream_PutC(_ ptr: CVoidPtr, _ char: CChar) -> Void {
    wxOutputStream_PutC(ptr, char)
}

@_silgen_name("wxOutputStream_Seek")
fileprivate func wxOutputStream_Seek(_ ptr: CVoidPtr, _ pos: Int, _ mode: CInt) -> Int
internal func _wxc_wxOutputStream_Seek(_ ptr: CVoidPtr, _ pos: Int, _ mode: CInt) -> Int {
    return wxOutputStream_Seek(ptr, pos, mode)
}

@_silgen_name("wxOutputStream_Sync")
fileprivate func wxOutputStream_Sync(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxOutputStream_Sync(_ ptr: CVoidPtr) -> Void {
    wxOutputStream_Sync(ptr)
}

@_silgen_name("wxOutputStream_Tell")
fileprivate func wxOutputStream_Tell(_ ptr: CVoidPtr) -> Int
internal func _wxc_wxOutputStream_Tell(_ ptr: CVoidPtr) -> Int {
    return wxOutputStream_Tell(ptr)
}

@_silgen_name("wxOutputStream_Write")
fileprivate func wxOutputStream_Write(_ ptr: CVoidPtr, _ buffer: UnsafeRawPointer!, _ length: UInt) -> Void
internal func _wxc_wxOutputStream_Write(_ ptr: CVoidPtr, _ buffer: UnsafeRawPointer!, _ length: UInt) -> Void {
    return wxOutputStream_Write(ptr, buffer, length)
}

// wxInputStream


@_silgen_name("wxInputStream_Delete")
fileprivate func wxInputStream_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxInputStream_Delete(_ ptr: CVoidPtr) -> Void {
    wxInputStream_Delete(ptr)
}

@_silgen_name("wxInputStream_Eof")
fileprivate func wxInputStream_Eof(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxInputStream_Eof(_ ptr: CVoidPtr) -> CBool {
    return wxInputStream_Eof(ptr)
}

@_silgen_name("wxInputStream_GetC")
fileprivate func wxInputStream_GetC(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxInputStream_GetC(_ ptr: CVoidPtr) -> CInt {
    return wxInputStream_GetC(ptr)
}

@_silgen_name("wxInputStream_LastRead")
fileprivate func wxInputStream_LastRead(_ ptr: CVoidPtr) -> UInt
internal func _wxc_wxInputStream_LastRead(_ ptr: CVoidPtr) -> UInt {
    return wxInputStream_LastRead(ptr)
}

@_silgen_name("wxInputStream_Peek")
fileprivate func wxInputStream_Peek(_ ptr: CVoidPtr) -> CChar
internal func _wxc_wxInputStream_Peek(_ ptr: CVoidPtr) -> CChar {
    return wxInputStream_Peek(ptr)
}

@_silgen_name("wxInputStream_Read")
fileprivate func wxInputStream_Read(_ ptr: CVoidPtr, _ buffer: UnsafeMutableRawPointer!, _ size: UInt) -> Void
internal func _wxc_wxInputStream_Read(_ ptr: CVoidPtr, _ buffer: UnsafeMutableRawPointer!, _ size: UInt) -> Void {
    wxInputStream_Read(ptr, buffer, size)
}

@_silgen_name("wxInputStream_SeekI")
fileprivate func wxInputStream_SeekI(_ ptr: CVoidPtr, _ pos: Int, _ mode: CInt) -> Int
internal func _wxc_wxInputStream_SeekI(_ ptr: CVoidPtr, _ pos: Int, _ mode: CInt) -> Int {
    return wxInputStream_SeekI(ptr, pos, mode)
}

@_silgen_name("wxInputStream_Tell")
fileprivate func wxInputStream_Tell(_ ptr: CVoidPtr) -> Int
internal func _wxc_wxInputStream_Tell(_ ptr: CVoidPtr) -> Int {
    return wxInputStream_Tell(ptr)
}

@_silgen_name("wxInputStream_UngetBuffer")
fileprivate func wxInputStream_UngetBuffer(_ ptr: CVoidPtr, _ buffer: UnsafeRawPointer!, _ size: UInt) -> UInt
internal func _wxc_wxInputStream_UngetBuffer(_ ptr: CVoidPtr, _ buffer: UnsafeRawPointer!, _ size: UInt) -> UInt {
    return wxInputStream_UngetBuffer(ptr, buffer, size)
}

@_silgen_name("wxInputStream_Ungetch")
fileprivate func wxInputStream_Ungetch(_ ptr: CVoidPtr, _ char: CChar) -> CBool
internal func _wxc_wxInputStream_Ungetch(_ ptr: CVoidPtr, _ char: CChar) -> CBool {
    return wxInputStream_Ungetch(ptr, char)
}

@_silgen_name("wxInputStream_CanRead")
fileprivate func wxInputStream_CanRead(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxInputStream_CanRead(_ ptr: CVoidPtr) -> CBool {
    return wxInputStream_CanRead(ptr)
}

// wxFileInputStream

@_silgen_name("wxFileInputStream_Create")
fileprivate func wxFileInputStream_Create(_ fileName: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFileInputStream_Create(_ fileName: CVoidPtr) -> CVoidPtr {
    return wxFileInputStream_Create(fileName)
}

@_silgen_name("wxFileInputStream_Delete")
fileprivate func wxFileInputStream_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxFileInputStream_Delete(_ ptr: CVoidPtr) -> Void {
    wxFileInputStream_Delete(ptr)
}

@_silgen_name("wxFileInputStream_IsOk")
fileprivate func wxFileInputStream_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxFileInputStream_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxFileInputStream_IsOk(ptr)
}

// wxFileoutputStream

@_silgen_name("wxFileOutputStream_Create")
fileprivate func wxFileOutputStream_Create(_ name: CVoidPtr) -> CVoidPtr
internal func _wxc_wxFileOutputStream_Create(_ name: CVoidPtr) -> CVoidPtr {
    return wxFileOutputStream_Create(name)
}

@_silgen_name("wxFileOutputStream_Delete")
fileprivate func wxFileOutputStream_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxFileOutputStream_Delete(_ ptr: CVoidPtr) -> Void {
    wxFileOutputStream_Delete(ptr)
}

@_silgen_name("wxFileOutputStream_IsOk")
fileprivate func wxFileOutputStream_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxFileOutputStream_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxFileOutputStream_IsOk(ptr)
}

// wxImage

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

@_silgen_name("wxImage_LoadFile")
fileprivate func wxImage_LoadFile(_ ptr: CVoidPtr, _ name: CVoidPtr, _ type: CInt, _ index: CInt) -> CBool
internal func _wxc_wxImage_LoadFile(_ ptr: CVoidPtr, _ name: CVoidPtr, _ type: CInt, _ index: CInt) -> CBool {
    return wxImage_LoadFile(ptr, name, type, index)
}

@_silgen_name("wxImage_LoadStream")
fileprivate func wxImage_LoadStream(_ ptr: CVoidPtr, _ stream: CVoidPtr, _ type: CInt, _ index: CInt) -> CBool
internal func _wxc_wxImage_LoadStream(_ ptr: CVoidPtr, _ stream: CVoidPtr, _ type: CInt, _ index: CInt) -> CBool {
    return wxImage_LoadStream(ptr, stream, type, index)
}

@_silgen_name("wxImage_Mirror")
fileprivate func wxImage_Mirror(_ ptr: CVoidPtr, _ horizontally: CBool, _ image: CVoidPtr) -> Void
internal func _wxc_wxImage_Mirror(_ ptr: CVoidPtr, _ horizontally: CBool, _ image: CVoidPtr) -> Void {
    wxImage_Mirror(ptr, horizontally, image)
}

@_silgen_name("wxImage_IsOk")
fileprivate func wxImage_IsOk(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxImage_IsOk(_ ptr: CVoidPtr) -> CBool {
    return wxImage_IsOk(ptr)
}

@_silgen_name("wxImage_Paste")
fileprivate func wxImage_Paste(_ ptr: CVoidPtr, _ image: CVoidPtr, _ x: CInt, _ y: CInt) -> Void
internal func _wxc_wxImage_Paste(_ ptr: CVoidPtr, _ image: CVoidPtr, _ x: CInt, _ y: CInt) -> Void {
    wxImage_Paste(ptr, image, x, y)
}

@_silgen_name("wxImage_Replace")
fileprivate func wxImage_Replace(_ ptr: CVoidPtr, _ r1: UInt8, _ g1: UInt8, _ b1: UInt8, _ r2: UInt8, _ g2: UInt8, _ b2: UInt8) -> Void
internal func _wxc_wxImage_Replace(_ ptr: CVoidPtr, _ r1: UInt8, _ g1: UInt8, _ b1: UInt8, _ r2: UInt8, _ g2: UInt8, _ b2: UInt8) -> Void {
    wxImage_Replace(ptr, r1, g1, b1, r2, g2, b2)
}

@_silgen_name("wxImage_RescaleEx")
fileprivate func wxImage_RescaleEx(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt, _ quality: CInt) -> Void
internal func _wxc_wxImage_RescaleEx(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt, _ quality: CInt) -> Void {
    wxImage_RescaleEx(ptr, w, h, quality)
}

@_silgen_name("wxImage_Rotate")
fileprivate func wxImage_Rotate(_ ptr: CVoidPtr, _ angle: CDouble, _ x: CInt, _ y: CInt, _ interpolating: CBool, _ offset: CVoidPtr, _ image: CVoidPtr) -> Void
internal func _wxc_wxImage_Rotate(_ ptr: CVoidPtr, _ angle: CDouble, _ x: CInt, _ y: CInt, _ interpolating: CBool, _ offset: CVoidPtr, _ image: CVoidPtr) -> Void {
    wxImage_Rotate(ptr, angle, x, y, interpolating, offset, image)
}

@_silgen_name("wxImage_Rotate90")
fileprivate func wxImage_Rotate90(_ ptr: CVoidPtr, _ clockwise: CBool, _ image: CVoidPtr) -> Void
internal func _wxc_wxImage_Rotate90(_ ptr: CVoidPtr, _ clockwise: CBool, _ image: CVoidPtr) -> Void {
    wxImage_Rotate90(ptr, clockwise, image)
}

@_silgen_name("wxImage_SaveFile")
fileprivate func wxImage_SaveFile(_ ptr: CVoidPtr, _ name: CVoidPtr, _ type: CInt) -> CBool
internal func _wxc_wxImage_SaveFile(_ ptr: CVoidPtr, _ name: CVoidPtr, _ type: CInt) -> CBool {
    return wxImage_SaveFile(ptr, name, type)
}

@_silgen_name("wxImage_SaveStream")
fileprivate func wxImage_SaveStream(_ ptr: CVoidPtr, _ stream: CVoidPtr, _ type: CInt) -> CBool
internal func _wxc_wxImage_SaveStream(_ ptr: CVoidPtr, _ stream: CVoidPtr, _ type: CInt) -> CBool {
    return wxImage_SaveStream(ptr, stream, type)
}

@_silgen_name("wxImage_ScaleEx")
fileprivate func wxImage_ScaleEx(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt, _ quality: CInt, _ image: CVoidPtr) -> Void
internal func _wxc_wxImage_ScaleEx(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt, _ quality: CInt, _ image: CVoidPtr) -> Void {
    wxImage_ScaleEx(ptr, w, h, quality, image)
}

@_silgen_name("wxImage_SetData")
fileprivate func wxImage_SetData(_ ptr: CVoidPtr, _ data: UnsafeRawPointer!) -> Void
internal func _wxc_wxImage_SetData(_ ptr: CVoidPtr, _ data: UnsafeRawPointer!) -> Void {
    wxImage_SetData(ptr, data)
}

@_silgen_name("wxImage_SetDataAndSize")
fileprivate func wxImage_SetDataAndSize(_ ptr: CVoidPtr, _ data: UnsafeRawPointer!, _ w: CInt, _ h: CInt, _ isStatic: CBool) -> Void
internal func _wxc_wxImage_SetDataAndSize(_ ptr: CVoidPtr, _ data: UnsafeRawPointer!, _ w: CInt, _ h: CInt, _ isStaic: CBool) -> Void {
    wxImage_SetDataAndSize(ptr, data, w, h, isStaic)
}

@_silgen_name("wxImage_SetMask")
fileprivate func wxImage_SetMask(_ ptr: CVoidPtr, _ value: CBool) -> Void
internal func _wxc_wxImage_SetMask(_ ptr: CVoidPtr, _ value: CBool) -> Void {
    wxImage_SetMask(ptr, value)
}

@_silgen_name("wxImage_SetMaskColour")
fileprivate func wxImage_SetMaskColour(_ ptr: CVoidPtr, _ r: UInt8, _ g: UInt8, _ b: UInt8) -> Void
internal func _wxc_wxImage_SetMaskColour(_ ptr: CVoidPtr, _ r: UInt8, _ g: UInt8, _ b: UInt8) -> Void {
    wxImage_SetMaskColour(ptr, r, g, b)
}

@_silgen_name("wxImage_SetOption")
fileprivate func wxImage_SetOption(_ ptr: CVoidPtr, _ name: CVoidPtr, _ value: CVoidPtr) -> Void
internal func _wxc_wxImage_SetOption(_ ptr: CVoidPtr, _ name: CVoidPtr, _ value: CVoidPtr) -> Void {
    wxImage_SetOption(ptr,name, value)
}

@_silgen_name("wxImage_SetOptionInt")
fileprivate func wxImage_SetOptionInt(_ ptr: CVoidPtr, _ name: CVoidPtr, _ value: CInt) -> Void
internal func _wxc_wxImage_SetOptionInt(_ ptr: CVoidPtr, _ name: CVoidPtr, _ value: CInt) -> Void {
    wxImage_SetOptionInt(ptr, name, value)
}

@_silgen_name("wxImage_SetRGB")
fileprivate func wxImage_SetRGB(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ r: UInt8, _ g: UInt8, _ b: UInt8) -> Void
internal func _wxc_wxImage_SetRGB(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ r: UInt8, _ g: UInt8, _ b: UInt8) -> Void {
    wxImage_SetRGB(ptr, x, y, r, g, b)
}

@_silgen_name("wxImage_SetAlpha")
fileprivate func wxImage_SetAlpha(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ a: UInt8) -> Void
internal func _wxc_wxImage_SetAlpha(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ a: UInt8) -> Void {
    wxImage_SetAlpha(ptr, x, y, a)
}

// wxIconBundle

@_silgen_name("wxIconBundle_CreateDefault")
fileprivate func wxIconBundle_CreateDefault() -> CVoidPtr
internal func _wxc_wxIconBundle_CreateDefault() -> CVoidPtr {
    return wxIconBundle_CreateDefault()
}

@_silgen_name("wxIconBundle_CreateFromFile")
fileprivate func wxIconBundle_CreateFromFile(_ file: CVoidPtr, _ type: CInt) -> CVoidPtr
internal func _wxc_wxIconBundle_CreateFromFile(_ file: CVoidPtr, _ type: CInt) -> CVoidPtr {
    return wxIconBundle_CreateFromFile(file, type)
}

@_silgen_name("wxIconBundle_CreateFromIcon")
fileprivate func wxIconBundle_CreateFromIcon(_ icon: CVoidPtr) -> CVoidPtr
internal func _wxc_wxIconBundle_CreateFromIcon(_ icon: CVoidPtr) -> CVoidPtr {
    return wxIconBundle_CreateFromIcon(icon)
}

@_silgen_name("wxIconBundle_AddIcon")
fileprivate func wxIconBundle_AddIcon(_ ptr: CVoidPtr, _ icon: CVoidPtr) -> Void
internal func _wxc_wxIconBundle_AddIcon(_ ptr: CVoidPtr, _ icon: CVoidPtr) -> Void {
    wxIconBundle_AddIcon(ptr, icon)
}

@_silgen_name("wxIconBundle_AddIconFromFile")
fileprivate func wxIconBundle_AddIconFromFile(_ ptr: CVoidPtr, _ file: CVoidPtr, _ type: CInt) -> Void
internal func _wxc_wxIconBundle_AddIconFromFile(_ ptr: CVoidPtr, _ file: CVoidPtr, _ type: CInt) -> Void {
    wxIconBundle_AddIconFromFile(ptr, file, type)
}

@_silgen_name("wxIconBundle_Delete")
fileprivate func wxIconBundle_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxIconBundle_Delete(_ ptr: CVoidPtr) -> Void {
    wxIconBundle_Delete(ptr)
}

@_silgen_name("wxIconBundle_GetIcon")
fileprivate func wxIconBundle_GetIcon(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt, _ icon: CVoidPtr) -> Void
internal func _wxc_wxIconBundle_GetIcon(_ ptr: CVoidPtr, _ w: CInt, _ h: CInt, _ icon: CVoidPtr) -> Void {
    wxIconBundle_GetIcon(ptr, w, h, icon)
}

@_silgen_name("wxIconBundle_Assign")
fileprivate func wxIconBundle_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxIconBundle_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxIconBundle_Assign(ptr, other)
}

// wxRegion

@_silgen_name("wxRegion_CreateDefault")
fileprivate func wxRegion_CreateDefault() -> CVoidPtr
internal func _wxc_wxRegion_CreateDefault() -> CVoidPtr {
    return wxRegion_CreateDefault()
}

@_silgen_name("wxRegion_CreateFromRect")
fileprivate func wxRegion_CreateFromRect(_ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CVoidPtr
internal func _wxc_wxRegion_CreateFromRect(_ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CVoidPtr {
    return wxRegion_CreateFromRect(x, y, w, h)
}

@_silgen_name("wxRegion_Assign")
fileprivate func wxRegion_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void
internal func _wxc_wxRegion_Assign(_ ptr: CVoidPtr, _ other: CVoidPtr) -> Void {
    wxRegion_Assign(ptr, other)
}

@_silgen_name("wxRegion_ContainsPoint")
fileprivate func wxRegion_ContainsPoint(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CBool
internal func _wxc_wxRegion_ContainsPoint(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt) -> CBool {
    return wxRegion_ContainsPoint(ptr, x, y)
}

@_silgen_name("wxRegion_ContainsRect")
fileprivate func wxRegion_ContainsRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxRegion_ContainsRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxRegion_ContainsRect(ptr, x, y, w, h)
}

@_silgen_name("wxRegion_Clear")
fileprivate func wxRegion_Clear(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxRegion_Clear(_ ptr: CVoidPtr) -> Void {
    wxRegion_Clear(ptr)
}

@_silgen_name("wxRegion_Delete")
fileprivate func wxRegion_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_wxRegion_Delete(_ ptr: CVoidPtr) -> Void {
    wxRegion_Delete(ptr)
}

@_silgen_name("wxRegion_IsEmpty")
fileprivate func wxRegion_IsEmpty(_ ptr: CVoidPtr) -> CBool
internal func _wxc_wxRegion_IsEmpty(_ ptr: CVoidPtr) -> CBool {
    return wxRegion_IsEmpty(ptr)
}

@_silgen_name("wxRegion_GetBox")
fileprivate func wxRegion_GetBox(_ ptr: CVoidPtr, _ x: UnsafeMutableRawPointer, _ y: UnsafeMutableRawPointer, _ w: UnsafeMutableRawPointer, _ h: UnsafeMutableRawPointer) -> Void
internal func _wxc_wxRegion_GetBox(_ ptr: CVoidPtr, _ x: UnsafeMutablePointer<CInt>, _ y: UnsafeMutablePointer<CInt>, _ w: UnsafeMutablePointer<CInt>, _ h: UnsafeMutablePointer<CInt>) -> Void {
    wxRegion_GetBox(ptr, x, y, w, h)
}

@_silgen_name("wxRegion_IntersectRect")
fileprivate func wxRegion_IntersectRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxRegion_IntersectRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxRegion_IntersectRect(ptr, x ,y, w, h)
}

@_silgen_name("wxRegion_IntersectRegion")
fileprivate func wxRegion_IntersectRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool
internal func _wxc_wxRegion_IntersectRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool {
    return wxRegion_IntersectRegion(ptr, other)
}

@_silgen_name("wxRegion_SubtractRect")
fileprivate func wxRegion_SubtractRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxRegion_SubtractRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxRegion_SubtractRect(ptr, x, y, w ,h)
}

@_silgen_name("wxRegion_SubtractRegion")
fileprivate func wxRegion_SubtractRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool
internal func _wxc_wxRegion_SubtractRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool {
    return wxRegion_SubtractRegion(ptr, other)
}

@_silgen_name("wxRegion_UnionRect")
fileprivate func wxRegion_UnionRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxRegion_UnionRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxRegion_UnionRect(ptr, x, y, w, h)
}

@_silgen_name("wxRegion_UnionRegion")
fileprivate func wxRegion_UnionRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool
internal func _wxc_wxRegion_UnionRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool {
    return wxRegion_UnionRegion(ptr, other)
}

@_silgen_name("wxRegion_XorRect")
fileprivate func wxRegion_XorRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool
internal func _wxc_wxRegion_XorRect(_ ptr: CVoidPtr, _ x: CInt, _ y: CInt, _ w: CInt, _ h: CInt) -> CBool {
    return wxRegion_XorRect(ptr, x, y, w, h)
}

@_silgen_name("wxRegion_XorRegion")
fileprivate func wxRegion_XorRegion(_ ptr: CVoidPtr, _ othe: CVoidPtr) -> CBool
internal func _wxc_wxRegion_XorRegion(_ ptr: CVoidPtr, _ other: CVoidPtr) -> CBool {
    return wxRegion_XorRegion(ptr, other)
}

