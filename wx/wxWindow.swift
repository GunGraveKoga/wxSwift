//
//  wxWindow.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

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

@_silgen_name("expwxHORIZONTAL")
fileprivate func expwxHORIZONTAL() -> CInt
internal func _wxc_expwxHORIZONTAL() -> CInt {
    return expwxHORIZONTAL()
}

@_silgen_name("expwxVERTICAL")
fileprivate func expwxVERTICAL() -> CInt
internal func _wxc_expwxVERTICAL() -> CInt {
    return expwxVERTICAL()
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
fileprivate func wxWindow_GetWindowStyleFlag(_ ptr: CVoidPtr) -> CInt
internal func _wxc_wxWindow_GetWindowStyleFlag(_ ptr: CVoidPtr) -> CInt {
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

public typealias wxWindowID = CInt

public var wxHORIZONTAL: CInt = _wxc_expwxHORIZONTAL()
public var wxVERTICAL: CInt = _wxc_expwxVERTICAL()

open class wxWindow: wxEvtHandler {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(withRect rect: Rect, parent: wxWindow? = nil, wxWindow windowID: wxWindowID, style: CInt) {
        super.init(rawValue: _wxc_wxWindow_Create(parent?.rawValue, windowID, rect.x, rect.y, rect.width, rect.height, style))!
    }
    
    @discardableResult
    public func destroy() -> Bool {
        guard let rawValue = rawValue else {
            return true
        }
        
        return _wxc_wxWindow_Destroy(rawValue)
    }
    
    override public func destroy() {
        if let rawValue = rawValue {
            _ = _wxc_wxWindow_Destroy(rawValue)
        }
    }
    
    @discardableResult
    public func destroyChildren() -> Bool {
        return _wxc_wxWindow_DestroyChildren(rawValue)
    }
    
    public func addChild(_ child: wxWindow) {
        _wxc_wxWindow_AddChild(rawValue, child.rawValue)
    }
    
    public func addConstraintReference(_ other: wxWindow) {
        _wxc_wxWindow_AddConstraintReference(rawValue, other.rawValue)
    }
    
    public func captureMouse() {
        _wxc_wxWindow_CaptureMouse(rawValue)
    }
    
    public func center(_ direction: CInt) {
        _wxc_wxWindow_Center(rawValue, direction)
    }
    
    public func centeronParent(_ direction: CInt) {
        _wxc_wxWindow_CenterOnParent(rawValue, direction)
    }
    
    public func clearBackground() {
        _wxc_wxWindow_ClearBackground(rawValue)
    }
    
    public func clientToScreen(_ point: Point) -> Point {
        return Point(wxPoint: _wxc_wxWindow_ClientToScreen(rawValue, point.x, point.y))!
    }
    
    @discardableResult
    public func close(force _force:Bool = false) -> Bool {
        return _wxc_wxWindow_Close(rawValue, _force)
    }
    
    public func convertDialogToPixels(_ point: Point) -> Point {
        return Point(wxPoint: _wxc_wxWindow_ConvertDialogToPixels(rawValue, point.x, point.y))!
    }
    
    public func convertPixelsToDialog(_ point: Point) -> Point {
        return Point(wxPoint: _wxc_wxWindow_ConvertPixelsToDialog(rawValue, point.x, point.y))!
    }
    
    public func deleteRelatedConstraints() {
        _wxc_wxWindow_DeleteRelatedConstraints(rawValue)
    }
    
    @discardableResult
    public func enable() -> Bool {
        return _wxc_wxWindow_Enable(rawValue)
    }
    
    @discardableResult
    public func disable() -> Bool {
        return _wxc_wxWindow_Disable(rawValue)
    }
    
    public func findFocus() -> wxWindow? {
        return wxWindow(rawValue: _wxc_wxWindow_FindFocus(rawValue))
    }
    
    public func findWindow<T: wxWindow>(_ name: String) -> T? {
        return name.withWxString {
            return T(rawValue: _wxc_wxWindow_FindWindow(rawValue, $0))
        }
    }
    
    public func fit() {
        _wxc_wxWindow_Fit(rawValue)
    }
    
    public func fitInside() {
        _wxc_wxWindow_FitInside(rawValue)
    }
    
    public func freeze() {
        _wxc_wxWindow_Freeze(rawValue)
    }
    
    public var effectiveMinSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetEffectiveMinSize(rawValue))!
        }
    }
    
    public var autoLayout: Bool {
        get {
            return _wxc_wxWindow_GetAutoLayout(rawValue)
        }
        
        set {
            _wxc_wxWindow_SetAutoLayout(rawValue, newValue)
        }
    }
    
    public var backgroundColour: wxColour {
        get {
            let colour = wxColour()
            
            _wxc_wxWindow_GetBackgroundColour(rawValue, colour.rawValue)
            
            return colour
        }
        
        set {
            _ = _wxc_wxWindow_SetBackgroundColour(rawValue, newValue.rawValue)
        }
    }
    
    public var besSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetBestSize(rawValue))!
        }
    }
    
    public var caret: wxCaret? {
        get {
            return wxCaret(rawValue: _wxc_wxWindow_GetCaret(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetCaret(rawValue, caret?.rawValue)
        }
    }
    
    public var charHeight: CInt {
        get {
            return _wxc_wxWindow_GetCharHeight(rawValue)
        }
    }
    
    public var charWidth: CInt {
        get {
            return _wxc_wxWindow_GetCharWidth(rawValue)
        }
    }
    
    internal var _clientData: wxClientData?
    public var clientData: wxClientData? {
        get {
            guard _clientData != nil else {
                return wxClientData(rawValue: _wxc_wxWindow_GetClientData(rawValue))
            }
            
            return _clientData
        }
        
        set {
            _wxc_wxWindow_SetClientData(rawValue, newValue?.rawValue)
            _clientData = newValue
        }
    }
    
    public var clientSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetClientSize(rawValue))!
        }
    }
    
    public var clientSizeConstraint: (width: CInt, height: CInt) {
        get {
            var _width: CInt = 0, _height: CInt = 0
            
            _wxc_wxWindow_GetClientSizeConstraint(rawValue, &_width, &_height)
            
            return (_width, _height)
        }
    }
    
    public var constraints: wxLayoutConstraints? {
        get {
            return wxLayoutConstraints(rawValue: _wxc_wxWindow_GetConstraints(rawValue))
        }
    }
    
    public var constraintsInvolvedIn: wxWindowList? {
        get {
            return wxWindowList(rawValue: _wxc_wxWindow_GetConstraintsInvolvedIn(rawValue))
        }
    }
    
    public var cursor: wxCursor? {
        get {
            return wxCursor(rawValue: _wxc_wxWindow_GetCursor(rawValue))
        }
    }
    
    internal var _dropTarget: wxDropTargetBase?
    public var dropTarget: wxDropTargetBase? {
        get {
            guard _dropTarget != nil else {
                return wxDropTargetBase(rawValue: _wxc_wxWindow_GetDropTarget(rawValue))
            }
            
            return _dropTarget
        }
        
        set {
            if let dropTarget = _dropTarget {
                dropTarget.rebase()
            }
            
            _dropTarget = newValue
        }
    }
    
    internal var _eventHandler: wxEvtHandler?
    public var eventHandler: wxEvtHandler? {
        get {
            guard _eventHandler != nil else {
                return wxEvtHandler(rawValue: _wxc_wxWindow_GetEventHandler(rawValue))
            }
            
            return _eventHandler
        }
    }
    
    public var font: wxFont {
        get {
            let font = wxFont()
            
            _wxc_wxWindow_GetFont(rawValue, font.rawValue)
            
            return font
        }
        
    }
    
    public var foregroundColour: wxColour {
        get {
            let colour = wxColour()
            
            _wxc_wxWindow_GetForegroundColour(rawValue, colour.rawValue)
            
            return colour
        }
    }
    
    public var handle: UnsafeMutableRawPointer {
        get {
            return _wxc_wxWindow_GetHandle(rawValue)
        }
    }
    
    public var ID: wxWindowID {
        get {
            return _wxc_wxWindow_GetId(rawValue)
        }
    }
    
    public var label: String? {
        get {
            return String(wxString: _wxc_wxWindow_GetLabel(rawValue))
        }
    }
    
    public var isLabelEmpty: Bool {
        get {
            return _wxc_wxWindow_GetLabelEmpty(rawValue)
        }
    }
    
    public var maxHeight: CInt {
        get {
            return _wxc_wxWindow_GetMaxHeight(rawValue)
        }
    }
    
    public var maxWidth: CInt {
        get {
            return _wxc_wxWindow_GetMaxWidth(rawValue)
        }
    }
    
    public var minHeight: CInt {
        get {
            return _wxc_wxWindow_GetMinHeight(rawValue)
        }
    }
    
    public var minWidth: CInt {
        get {
            return _wxc_wxWindow_GetMinWidth(rawValue)
        }
    }
    
    public var name: String? {
        get {
            return String(wxString: _wxc_wxWindow_GetName(rawValue))
        }
    }
    
    public func getParent<T: wxWindow>() -> T? {
        return T(rawValue: _wxc_wxWindow_GetParent(rawValue))
    }
    
    public var position: Point {
        get {
            return Point(wxPoint: wxWindow_GetPosition(rawValue))!
        }
    }
    
    public var positionConstraint: Point {
        get {
            var x: CInt = 0, y: CInt = 0
            _wxc_wxWindow_GetPositionConstraint(rawValue, &x, &y)
            
            return Point(x: x, y: y)
        }
    }
    
    public var rect: Rect {
        get {
            return Rect(wxRect: _wxc_wxWindow_GetRect(rawValue))!
        }
    }
    
    public func getScrollPos(orientation: CInt) -> CInt {
        return _wxc_wxWindow_GetScrollPos(rawValue, orientation)
    }
    
    public func getScrollRange(orientation: CInt) -> CInt {
        return _wxc_wxWindow_GetScrollRange(rawValue, orientation)
    }
    
    public func getScrollThumb(orientation: CInt) -> CInt {
        return _wxc_wxWindow_GetScrollThumb(rawValue, orientation)
    }
    
    public var size: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetSize(rawValue))!
        }
        
        set {
            _wxc_wxWindow_SetClientSize(rawValue, newValue.width, newValue.height)
        }
    }
    
    public var sizeConstraint: Size {
        get {
            var w: CInt = 0, h: CInt = 0
            _wxc_wxWindow_GetSizeConstraint(rawValue, &w, &h)
            
            return Size(width: w, height: h)
        }
    }
    
    public var sizer: wxSizer? {
        get {
            return wxSizer(rawValue: _wxc_wxWindow_GetSizer(rawValue))
        }
    }
    
    public func getTextExtent(descent: UnsafeMutablePointer<CInt>? = nil, externalLeading: UnsafeMutablePointer<CInt>? = nil, font: wxFont? = nil) -> (width: CInt, height: CInt) {
        
        var w: CInt = 0, h: CInt = 0
        
        _wxc_wxWindow_GetTextExtent(rawValue, &w, &h, descent, externalLeading, font?.rawValue)
        
        return (w, h)
    }
    
    public var toolTip: String? {
        get {
            return String(wxString: _wxc_wxWindow_GetToolTip(rawValue))
        }
    }
    
    public var updateRegion: wxRegion! {
        get {
            return wxRegion(rawValue: _wxc_wxWindow_GetUpdateRegion(rawValue))
        }
    }
    
    public var validator: wxValidator? {
        get {
            return wxValidator(rawValue: _wxc_wxWindow_GetValidator(rawValue))
        }
    }
    
    public var virtualSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetVirtualSize(rawValue))!
        }
    }
    
    public var windowStyleFlag: CInt {
        get {
            return _wxc_wxWindow_GetWindowStyleFlag(rawValue)
        }
    }
    
    public func hasFlag(_ flag: CInt) -> Bool {
        return _wxc_wxWindow_HasFlag(rawValue, flag)
    }
    
    public var hasFocus: Bool {
        get {
            return _wxc_wxWindow_HasFocus(rawValue)
        }
    }
    
    @discardableResult
    public func hide() -> Bool {
        return _wxc_wxWindow_Hide(rawValue)
    }
    
    public func initDialog() {
        _wxc_wxWindow_InitDialog(rawValue)
    }
    
    public var isBeingDeleted: Bool {
        get {
            return _wxc_wxWindow_IsBeingDeleted(rawValue)
        }
    }
    
    public var isEnabled: Bool {
        get {
            return _wxc_wxWindow_IsEnabled(rawValue)
        }
    }
    
    public var isExposed: Bool {
        get {
            return _wxc_wxWindow_IsExposed(rawValue)
        }
    }
    
    public var isShown: Bool {
        get {
            return _wxc_wxWindow_IsShown(rawValue)
        }
    }
    
    public var isTopLevel: Bool {
        get {
            return _wxc_wxWindow_IsTopLevel(rawValue)
        }
    }
    
    public func layout() -> CInt {
        return _wxc_wxWindow_Layout(rawValue)
    }
    
    public func layoutPhase1(_ noChanges: UnsafeMutablePointer<CInt>) -> Bool {
        return _wxc_wxWindow_LayoutPhase1(rawValue, noChanges)
    }
    
    public func layoutPhase2(_ noChanges: UnsafeMutablePointer<CInt>) -> Bool {
        return _wxc_wxWindow_LayoutPhase2(rawValue, noChanges)
    }
    
    public func lower() {
        wxWindow_Lower(rawValue)
    }
    
    public func move(to pos: Point) {
        _wxc_wxWindow_Move(rawValue, pos.x, pos.y)
    }
    
    public func moveConstraint(to pos: Point) {
        _wxc_wxWindow_MoveConstraint(rawValue, pos.x, pos.y)
    }
    
    @discardableResult
    public func popEventHandler<T: wxEvtHandler>(_ deleteHandler: Bool = false) -> T? {
        guard let oldEventHandler = _eventHandler else {
            return T(rawValue: _wxc_wxWindow_PopEventHandler(rawValue, deleteHandler))
        }
        
        _eventHandler = oldEventHandler.nextHandler
        
        _ = _wxc_wxWindow_PopEventHandler(rawValue, deleteHandler)
        
        if deleteHandler {
            return nil
        }
        
        return oldEventHandler as? T
    }
    
    public func popupMenu(_ menu: wxMenu, at pos: Point) -> Bool {
        return _wxc_wxWindow_PopupMenu(rawValue, menu.rawValue, pos.x, pos.y)
    }
    
    public func prepareDC(_ dc: wxDC) {
        _wxc_wxWindow_PrepareDC(rawValue, dc.rawValue)
    }
    
    public func pushEventHandler(_ handler: wxEvtHandler) {
        if _eventHandler != nil {
            _eventHandler!._nextHandler = handler
        } else {
            _eventHandler = handler
        }
        
        _wxc_wxWindow_PushEventHandler(rawValue, handler.rawValue)
    }
    
    public func raise() {
        _wxc_wxWindow_Raise(rawValue)
    }
    
    public func refresh(eraseBackground: Bool = true) {
        _wxc_wxWindow_Refresh(rawValue, eraseBackground)
    }
    
    public func refres(rect: Rect, eraseBackground: Bool = true) {
        _wxc_wxWindow_RefreshRect(rawValue, eraseBackground, rect.x, rect.y, rect.width, rect.height)
    }
    
    public func releaseMouse() {
        _wxc_wxWindow_ReleaseMouse(rawValue)
    }
    
    public func removeChild(_ child: wxWindow) {
        _wxc_wxWindow_RemoveChild(rawValue, child.rawValue)
    }
    
    public func removeConstraintReference(otherWindow: wxWindow) {
        _wxc_wxWindow_RemoveConstraintReference(rawValue, otherWindow.rawValue)
    }
    
    @discardableResult
    public func reparent(_ parent: wxWindow) -> Bool {
        return _wxc_wxWindow_Reparent(rawValue, parent.rawValue)
    }
    
    public func resetConstraints() {
        _wxc_wxWindow_ResetConstraints(rawValue)
    }
    
    public func screenToClient(_ pos: Point) -> Point? {
        return Point(wxPoint: _wxc_wxWindow_ScreenToClient(rawValue, pos.x, pos.y))
    }
    
    public func scrollWindow(deltaX: CInt, deltaY: CInt) {
        _wxc_wxWindow_ScrollWindow(rawValue, deltaX, deltaY)
    }
    
    public func scrollWindow(rect: Rect, deltaX: CInt, deltaY: CInt) {
        _wxc_wxWindow_ScrollWindowRect(rawValue, deltaX, deltaY, rect.x, rect.y, rect.width, rect.height)
    }
    
    public func setAcceleratorTable(_ table: wxAcceleratorTable) {
        _wxc_wxWindow_SetAcceleratorTable(rawValue, table.rawValue)
    }
    
    public func setBackgroundColour(_ colour: wxColour) -> Bool {
        return _wxc_wxWindow_SetBackgroundColour(rawValue, colour.rawValue)
    }
    
    public func setClientObject(_ object: wxClientData) {
        _wxc_wxWindow_SetClientObject(rawValue, object.rawValue)
    }
    
    public func setConstraintSizes(recurse: Bool = true) {
        _wxc_wxWindow_SetConstraintSizes(rawValue, recurse)
    }
}
