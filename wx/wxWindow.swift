//
//  wxWindow.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public struct wxWindowSizeFlags: OptionSet {
    public let rawValue: CInt
    
    public static let wxSIZE_AUTO_WIDTH = wxWindowSizeFlags(rawValue: 0x0001)
    public static let wxSIZE_AUTO_HEIGHT = wxWindowSizeFlags(rawValue: 0x0002)
    public static let wxSIZE_AUTO: wxWindowSizeFlags = [.wxSIZE_AUTO_WIDTH, .wxSIZE_AUTO_HEIGHT]
    public static let wxSIZE_USE_EXISTING = wxWindowSizeFlags(rawValue: 0x0000)
    public static let wxSIZE_ALLOW_MINUS_ONE = wxWindowSizeFlags(rawValue: 0x0004)
    public static let wxSIZE_NO_ADJUSTMENTS = wxWindowSizeFlags(rawValue: 0x0008)
    public static let wxSIZE_FORCE = wxWindowSizeFlags(rawValue: 0x0010)
    
    public init(rawValue: CInt) {
        self.rawValue = rawValue
    }
}

public struct wxWindowStyle: OptionSet {
    public let rawValue: CLong
    
    public static let wxVSCROLL = wxWindowStyle(rawValue: 0x80000000)
    public static let wxHSCROLL = wxWindowStyle(rawValue: 0x40000000)
    public static let wxCAPTION = wxWindowStyle(rawValue: 0x20000000)
    @available(*, deprecated)
    public static let wxDOUBLE_BORDER = wxWindowStyle(rawValue: 0x10000000)
    public static let wxSUNKEN_BORDER = wxWindowStyle(rawValue: 0x08000000)
    public static let wxRAISED_BORDER = wxWindowStyle(rawValue: 0x04000000)
    public static let wxBORDER: wxWindowStyle = .wxSIMPLE_BORDER
    public static let wxSIMPLE_BORDER = wxWindowStyle(rawValue: 0x02000000)
    public static let wxSTATIC_BORDER = wxWindowStyle(rawValue: 0x01000000)
    public static let wxNO_BORDER = wxWindowStyle(rawValue: 0x00200000)
    public static let wxALWAYS_SHOW_SB = wxWindowStyle(rawValue: 0x00800000)
    public static let wxBORDER_DEFAULT = wxWindowStyle(rawValue: 0)
    public static let wxBORDER_SIMPLE: wxWindowStyle = .wxSIMPLE_BORDER
    public static let wxBORDER_SUNKEN: wxWindowStyle = .wxSUNKEN_BORDER
    public static let wxBORDER_RAISED: wxWindowStyle = .wxRAISED_BORDER
    public static let wxBORDER_THEME = wxWindowStyle(rawValue: 0x10000000)
    public static let wxBORDER_NONE: wxWindowStyle = .wxNO_BORDER
    @available(*, deprecated)
    public static let wxBORDER_DOUBLE = wxWindowStyle(rawValue: 0x10000000)
    public static let wxTRANSPARENT_WINDOW = wxWindowStyle(rawValue: 0x00100000)
    public static let wxTAB_TRAVERSAL = wxWindowStyle(rawValue: 0x00080000)
    public static let wxWANTS_CHARS = wxWindowStyle(rawValue: 0x00040000)
    public static let wxNO_FULL_REPAINT_ON_RESIZE = wxWindowStyle(rawValue: 0)
    public static let wxCLIP_CHILDREN = wxWindowStyle(rawValue: 0x00400000)
    public static let wxFULL_REPAINT_ON_RESIZE = wxWindowStyle(rawValue: 0x00010000)
    public static let wxBORDER_MASK = wxWindowStyle(rawValue: 0x1f200000)
    public static let wxCLIP_SIBLINGS = wxWindowStyle(rawValue: 0x20000000)
    #if __WXMOTIF__
    public static let wxRETAINED = wxWindowStyle(rawValue: 0x00020000)
    #else
    public static let wxRETAINED = wxWindowStyle(rawValue: 0x00000000)
    #endif
    public static let wxPOPUP_WINDOW = wxWindowStyle(rawValue: 0x00020000)
    public static let wxWINDOW_STYLE_MASK: wxWindowStyle = [.wxVSCROLL, .wxHSCROLL, .wxBORDER_MASK, .wxALWAYS_SHOW_SB, .wxCLIP_CHILDREN, .wxCLIP_SIBLINGS, .wxTRANSPARENT_WINDOW, .wxTAB_TRAVERSAL, .wxWANTS_CHARS, .wxRETAINED, .wxPOPUP_WINDOW, .wxFULL_REPAINT_ON_RESIZE]
    
    public init(rawValue: CLong) {
        self.rawValue = rawValue
    }
}

public struct wxWindowExtraStyle: OptionSet {
    public let rawValue: CLong
    
    @available(*, deprecated, message: "This flag is obsolete as recursive validation is now the default (and only possible) behaviour. Simply don't use it any more in the new code.")
    public static let wxWS_EX_VALIDATE_RECURSIVELY = wxWindowExtraStyle(rawValue: 0x00000000)
    public static let wxWS_EX_BLOCK_EVENTS = wxWindowExtraStyle(rawValue: 0x00000002)
    public static let wxWS_EX_TRANSIENT = wxWindowExtraStyle(rawValue: 0x00000004)
    public static let wxWS_EX_THEMED_BACKGROUND = wxWindowExtraStyle(rawValue: 0x00000008)
    public static let wxWS_EX_PROCESS_IDLE = wxWindowExtraStyle(rawValue: 0x00000010)
    public static let wxWS_EX_PROCESS_UI_UPDATES = wxWindowExtraStyle(rawValue: 0x00000020)
    public static let wxWS_EX_CONTEXTHELP = wxWindowExtraStyle(rawValue: 0x00000080)
    
    public init(rawValue: CLong) {
        self.rawValue = rawValue
    }
}

open class wxWindow: wxEvtHandler {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init(withRect rect: Rect, parent: wxWindow? = nil, windowId: wxWindowID, style: wxWindowStyle) {
        super.init(rawValue: _wxc_wxWindow_Create(parent?.rawValue, windowId.rawValue, rect.x, rect.y, rect.width, rect.height, style.rawValue))!
    }
    
    public init(parent: wxWindow? = nil, windowId: wxWindowID, position: Point = wxDefaultPosition, size: Size = wxDefaultSize, style: wxWindowStyle) {
        super.init(rawValue: _wxc_wxWindow_Create(parent?.rawValue, windowId.rawValue, position.x, position.y, size.width, size.height, style.rawValue))!
    }
    
    @discardableResult
    open func destroy() -> Bool {
        guard let rawValue = rawValue else {
            return true
        }
        
        return _wxc_wxWindow_Destroy(rawValue)
    }
    
    override open func destroy() {
        if let rawValue = rawValue {
            _ = _wxc_wxWindow_Destroy(rawValue)
        }
    }
    
    @discardableResult
    open func destroyChildren() -> Bool {
        return _wxc_wxWindow_DestroyChildren(rawValue)
    }
    
    open func addChild(_ child: wxWindow) {
        _wxc_wxWindow_AddChild(rawValue, child.rawValue)
    }
    
    open func addConstraintReference(_ other: wxWindow) {
        _wxc_wxWindow_AddConstraintReference(rawValue, other.rawValue)
    }
    
    open func captureMouse() {
        _wxc_wxWindow_CaptureMouse(rawValue)
    }
    
    open func center(_ direction: CInt) {
        _wxc_wxWindow_Center(rawValue, direction)
    }
    
    open func centeronParent(_ direction: CInt) {
        _wxc_wxWindow_CenterOnParent(rawValue, direction)
    }
    
    open func clearBackground() {
        _wxc_wxWindow_ClearBackground(rawValue)
    }
    
    open func clientToScreen(_ point: Point) -> Point {
        return Point(wxPoint: _wxc_wxWindow_ClientToScreen(rawValue, point.x, point.y))!
    }
    
    @discardableResult
    open func close(force _force:Bool = false) -> Bool {
        return _wxc_wxWindow_Close(rawValue, _force)
    }
    
    open func convertDialogToPixels(_ point: Point) -> Point {
        return Point(wxPoint: _wxc_wxWindow_ConvertDialogToPixels(rawValue, point.x, point.y))!
    }
    
    open func convertPixelsToDialog(_ point: Point) -> Point {
        return Point(wxPoint: _wxc_wxWindow_ConvertPixelsToDialog(rawValue, point.x, point.y))!
    }
    
    open func deleteRelatedConstraints() {
        _wxc_wxWindow_DeleteRelatedConstraints(rawValue)
    }
    
    @discardableResult
    open func enable() -> Bool {
        return _wxc_wxWindow_Enable(rawValue)
    }
    
    @discardableResult
    open func disable() -> Bool {
        return _wxc_wxWindow_Disable(rawValue)
    }
    
    open func findFocus() -> wxWindow? {
        return wxWindow(rawValue: _wxc_wxWindow_FindFocus(rawValue))
    }
    
    open func findWindow<T: wxWindow>(_ name: String) -> T? {
        return name.withWxString {
            return T(rawValue: _wxc_wxWindow_FindWindow(rawValue, $0))
        }
    }
    
    open func fit() {
        _wxc_wxWindow_Fit(rawValue)
    }
    
    open func fitInside() {
        _wxc_wxWindow_FitInside(rawValue)
    }
    
    open func freeze() {
        _wxc_wxWindow_Freeze(rawValue)
    }
    
    open var effectiveMinSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetEffectiveMinSize(rawValue))!
        }
    }
    
    open var autoLayout: Bool {
        get {
            return _wxc_wxWindow_GetAutoLayout(rawValue)
        }
        
        set {
            _wxc_wxWindow_SetAutoLayout(rawValue, newValue)
        }
    }
    
    open var backgroundColour: wxColour {
        get {
            let colour = wxColour()
            
            _wxc_wxWindow_GetBackgroundColour(rawValue, colour.rawValue)
            
            return colour
        }
        
        set {
            _ = _wxc_wxWindow_SetBackgroundColour(rawValue, newValue.rawValue)
        }
    }
    
    open var besSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetBestSize(rawValue))!
        }
    }
    
    open var caret: wxCaret? {
        get {
            return wxCaret(rawValue: _wxc_wxWindow_GetCaret(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetCaret(rawValue, caret?.rawValue)
        }
    }
    
    open var charHeight: CInt {
        get {
            return _wxc_wxWindow_GetCharHeight(rawValue)
        }
    }
    
    open var charWidth: CInt {
        get {
            return _wxc_wxWindow_GetCharWidth(rawValue)
        }
    }
    
    internal var _clientData: wxClientData?
    open var clientData: wxClientData? {
        get {
            return getClientData()
        }
        
        set {
            setClientData(newValue)
        }
    }
    
    open func getClientData<T: wxClientData>() -> T? {
        guard let clientData = _clientData else {
            return T(rawValue: _wxc_wxWindow_GetClientData(rawValue))
        }
        
        return clientData as? T
    }
    
    open func getClientData() -> CVoidPtr {
        return _wxc_wxWindow_GetClientData(rawValue)
    }
    
    open func setClientData<T: wxClientData>(_ clientData: T?) {
        _wxc_wxWindow_SetClientData(rawValue, clientData?.rawValue)
        _clientData = clientData
    }
    
    open func setClientData(_ clientData: CVoidPtr) {
        _wxc_wxWindow_SetClientData(rawValue, clientData)
    }
    
    open var clientSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetClientSize(rawValue))!
        }
        
        set {
            _wxc_wxWindow_SetClientSize(rawValue, newValue.width, newValue.height)
        }
    }
    
    open var clientSizeConstraint: (width: CInt, height: CInt) {
        get {
            var _width: CInt = 0, _height: CInt = 0
            
            _wxc_wxWindow_GetClientSizeConstraint(rawValue, &_width, &_height)
            
            return (_width, _height)
        }
    }
    
    open var constraints: wxLayoutConstraints? {
        get {
            return wxLayoutConstraints(rawValue: _wxc_wxWindow_GetConstraints(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetConstraints(rawValue, newValue?.rawValue)
        }
    }
    
    open var constraintsInvolvedIn: wxWindowList? {
        get {
            return wxWindowList(rawValue: _wxc_wxWindow_GetConstraintsInvolvedIn(rawValue))
        }
    }
    
    open var cursor: wxCursor? {
        get {
            return wxCursor(rawValue: _wxc_wxWindow_GetCursor(rawValue))
        }
        
        set {
            _ = _wxc_wxWindow_SetCursor(rawValue, newValue?.rawValue)
        }
    }
    
    internal var _dropTarget: wxDropTargetBase?
    open var dropTarget: wxDropTargetBase? {
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
            
            _wxc_wxWindow_SetDropTarget(rawValue, newValue?.rawValue)
            
            _dropTarget = newValue
        }
    }
    
    internal var _eventHandler: wxEvtHandler?
    open var eventHandler: wxEvtHandler? {
        get {
            guard _eventHandler != nil else {
                return wxEvtHandler(rawValue: _wxc_wxWindow_GetEventHandler(rawValue))
            }
            
            return _eventHandler
        }
    }
    
    open var font: wxFont {
        get {
            let font = wxFont()
            
            _wxc_wxWindow_GetFont(rawValue, font.rawValue)
            
            return font
        }
        
        set {
            _ = _wxc_wxWindow_SetFont(rawValue, newValue.rawValue)
        }
        
    }
    
    open var foregroundColour: wxColour {
        get {
            let colour = wxColour()
            
            _wxc_wxWindow_GetForegroundColour(rawValue, colour.rawValue)
            
            return colour
        }
        
        set {
            _ = _wxc_wxWindow_SetForegroundColour(rawValue, newValue.rawValue)
        }
    }
    
    open var handle: UnsafeMutableRawPointer {
        get {
            return _wxc_wxWindow_GetHandle(rawValue)
        }
    }
    
    open var Id: wxWindowID {
        get {
            return wxWindowID(rawValue: _wxc_wxWindow_GetId(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetId(rawValue, newValue.rawValue)
        }
    }
    
    open var label: String? {
        get {
            return String(wxString: _wxc_wxWindow_GetLabel(rawValue))
        }
        
        set {
            if let value = newValue {
                value.withWxString {
                    _wxc_wxWindow_SetLabel(rawValue, $0)
                }
            } else {
                _wxc_wxWindow_SetLabel(rawValue, nil)
            }
        }
    }
    
    open var isLabelEmpty: Bool {
        get {
            return _wxc_wxWindow_GetLabelEmpty(rawValue)
        }
    }
    
    open var maxHeight: CInt {
        get {
            return _wxc_wxWindow_GetMaxHeight(rawValue)
        }
    }
    
    open var maxWidth: CInt {
        get {
            return _wxc_wxWindow_GetMaxWidth(rawValue)
        }
    }
    
    open var minHeight: CInt {
        get {
            return _wxc_wxWindow_GetMinHeight(rawValue)
        }
    }
    
    open var minWidth: CInt {
        get {
            return _wxc_wxWindow_GetMinWidth(rawValue)
        }
    }
    
    open var name: String? {
        get {
            return String(wxString: _wxc_wxWindow_GetName(rawValue))
        }
        
        set {
            if let value = newValue {
                value.withWxString {
                    _wxc_wxWindow_SetName(rawValue, $0)
                }
            } else {
                _wxc_wxWindow_SetName(rawValue, nil)
            }
        }
    }
    
    open func getParent<T: wxWindow>() -> T? {
        return T(rawValue: _wxc_wxWindow_GetParent(rawValue))
    }
    
    open var position: Point {
        get {
            return Point(wxPoint: _wxc_wxWindow_GetPosition(rawValue))!
        }
    }
    
    open var positionConstraint: Point {
        get {
            var x: CInt = 0, y: CInt = 0
            _wxc_wxWindow_GetPositionConstraint(rawValue, &x, &y)
            
            return Point(x: x, y: y)
        }
    }
    
    open var rect: Rect {
        get {
            return Rect(wxRect: _wxc_wxWindow_GetRect(rawValue))!
        }
    }
    
    open func getScrollPos(orientation: wxOrientation) -> CInt {
        return _wxc_wxWindow_GetScrollPos(rawValue, orientation.rawValue)
    }
    
    open func getScrollRange(orientation: wxOrientation) -> CInt {
        return _wxc_wxWindow_GetScrollRange(rawValue, orientation.rawValue)
    }
    
    open func getScrollThumb(orientation: wxOrientation) -> CInt {
        return _wxc_wxWindow_GetScrollThumb(rawValue, orientation.rawValue)
    }
    
    open var size: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetSize(rawValue))!
        }
        
        set {
            var r = rect
            r.size = newValue
            
            setSize(rect: r)
        }
    }
    
    open var sizeConstraint: Size {
        get {
            var w: CInt = 0, h: CInt = 0
            _wxc_wxWindow_GetSizeConstraint(rawValue, &w, &h)
            
            return Size(width: w, height: h)
        }
        
        set {
            var r = Rect(x: 0, y: 0, width: 0, height: 0)
            r.origin = positionConstraint
            r.size = newValue
            
            _wxc_wxWindow_SetSizeConstraint(rawValue, r.x , r.y, r.width, r.height)
        }
    }
    
    open var sizer: wxSizer? {
        get {
            return wxSizer(rawValue: _wxc_wxWindow_GetSizer(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetSizer(rawValue, newValue?.rawValue)
        }
    }
    
    open func getTextExtent(descent: UnsafeMutablePointer<CInt>? = nil, externalLeading: UnsafeMutablePointer<CInt>? = nil, font: wxFont? = nil) -> (width: CInt, height: CInt) {
        
        var w: CInt = 0, h: CInt = 0
        
        _wxc_wxWindow_GetTextExtent(rawValue, &w, &h, descent, externalLeading, font?.rawValue)
        
        return (w, h)
    }
    
    open var toolTip: String? {
        get {
            return String(wxString: _wxc_wxWindow_GetToolTip(rawValue))
        }
        
        set {
            if let value = newValue {
                value.withWxString {
                    _wxc_wxWindow_SetToolTip(rawValue, $0)
                }
            } else {
                _wxc_wxWindow_SetToolTip(rawValue, nil)
            }
        }
    }
    
    open var updateRegion: wxRegion! {
        get {
            return wxRegion(rawValue: _wxc_wxWindow_GetUpdateRegion(rawValue))
        }
    }
    
    open var validator: wxValidator? {
        get {
            return wxValidator(rawValue: _wxc_wxWindow_GetValidator(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetValidator(rawValue, newValue?.rawValue)
        }
    }
    
    open var virtualSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetVirtualSize(rawValue))!
        }
        
        set {
            _wxc_wxWindow_SetVirtualSize(rawValue, newValue.width, newValue.height)
        }
    }
    
    open var windowStyleFlag: wxWindowStyle {
        get {
            return wxWindowStyle(rawValue: _wxc_wxWindow_GetWindowStyleFlag(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetWindowStyleFlag(rawValue, newValue.rawValue)
        }
    }
    
    open var windowStyle: wxWindowStyle {
        get {
            return windowStyleFlag
        }
        
        set {
            windowStyleFlag = newValue
        }
    }
    
    open func hasFlag(_ flag: CInt) -> Bool {
        return _wxc_wxWindow_HasFlag(rawValue, flag)
    }
    
    open var hasFocus: Bool {
        get {
            return _wxc_wxWindow_HasFocus(rawValue)
        }
    }
    
    @discardableResult
    open func hide() -> Bool {
        return _wxc_wxWindow_Hide(rawValue)
    }
    
    open func initDialog() {
        _wxc_wxWindow_InitDialog(rawValue)
    }
    
    open var isBeingDeleted: Bool {
        get {
            return _wxc_wxWindow_IsBeingDeleted(rawValue)
        }
    }
    
    open var isEnabled: Bool {
        get {
            return _wxc_wxWindow_IsEnabled(rawValue)
        }
    }
    
    open var isExposed: Bool {
        get {
            return _wxc_wxWindow_IsExposed(rawValue)
        }
    }
    
    open var isShown: Bool {
        get {
            return _wxc_wxWindow_IsShown(rawValue)
        }
    }
    
    open var isTopLevel: Bool {
        get {
            return _wxc_wxWindow_IsTopLevel(rawValue)
        }
    }
    
    open func layout() -> CInt {
        return _wxc_wxWindow_Layout(rawValue)
    }
    
    open func layoutPhase1(_ noChanges: UnsafeMutablePointer<CInt>) -> Bool {
        return _wxc_wxWindow_LayoutPhase1(rawValue, noChanges)
    }
    
    open func layoutPhase2(_ noChanges: UnsafeMutablePointer<CInt>) -> Bool {
        return _wxc_wxWindow_LayoutPhase2(rawValue, noChanges)
    }
    
    open func lower() {
        _wxc_wxWindow_Lower(rawValue)
    }
    
    open func move(to pos: Point) {
        _wxc_wxWindow_Move(rawValue, pos.x, pos.y)
    }
    
    open func moveConstraint(to pos: Point) {
        _wxc_wxWindow_MoveConstraint(rawValue, pos.x, pos.y)
    }
    
    @discardableResult
    open func popEventHandler<T: wxEvtHandler>(_ deleteHandler: Bool = false) -> T? {
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
    
    open func popupMenu(_ menu: wxMenu, at pos: Point) -> Bool {
        return _wxc_wxWindow_PopupMenu(rawValue, menu.rawValue, pos.x, pos.y)
    }
    
    open func prepareDC(_ dc: wxDC) {
        _wxc_wxWindow_PrepareDC(rawValue, dc.rawValue)
    }
    
    open func pushEventHandler(_ handler: wxEvtHandler) {
        if _eventHandler != nil {
            _eventHandler!._nextHandler = handler
        } else {
            _eventHandler = handler
        }
        
        _wxc_wxWindow_PushEventHandler(rawValue, handler.rawValue)
    }
    
    open func raise() {
        _wxc_wxWindow_Raise(rawValue)
    }
    
    open func refresh(eraseBackground: Bool = true) {
        _wxc_wxWindow_Refresh(rawValue, eraseBackground)
    }
    
    open func refres(rect: Rect, eraseBackground: Bool = true) {
        _wxc_wxWindow_RefreshRect(rawValue, eraseBackground, rect.x, rect.y, rect.width, rect.height)
    }
    
    open func releaseMouse() {
        _wxc_wxWindow_ReleaseMouse(rawValue)
    }
    
    open func removeChild(_ child: wxWindow) {
        _wxc_wxWindow_RemoveChild(rawValue, child.rawValue)
    }
    
    open func removeConstraintReference(otherWindow: wxWindow) {
        _wxc_wxWindow_RemoveConstraintReference(rawValue, otherWindow.rawValue)
    }
    
    @discardableResult
    open func reparent(_ parent: wxWindow) -> Bool {
        return _wxc_wxWindow_Reparent(rawValue, parent.rawValue)
    }
    
    open func resetConstraints() {
        _wxc_wxWindow_ResetConstraints(rawValue)
    }
    
    open func screenToClient(_ pos: Point) -> Point? {
        return Point(wxPoint: _wxc_wxWindow_ScreenToClient(rawValue, pos.x, pos.y))
    }
    
    open func scrollWindow(deltaX: CInt, deltaY: CInt) {
        _wxc_wxWindow_ScrollWindow(rawValue, deltaX, deltaY)
    }
    
    open func scrollWindow(rect: Rect, deltaX: CInt, deltaY: CInt) {
        _wxc_wxWindow_ScrollWindowRect(rawValue, deltaX, deltaY, rect.x, rect.y, rect.width, rect.height)
    }
    
    open func setAcceleratorTable(_ table: wxAcceleratorTable) {
        _wxc_wxWindow_SetAcceleratorTable(rawValue, table.rawValue)
    }
    
    @discardableResult
    open func setBackgroundColour(_ colour: wxColour) -> Bool {
        return _wxc_wxWindow_SetBackgroundColour(rawValue, colour.rawValue)
    }
    
    open func setClientObject(_ object: wxClientData) {
        _wxc_wxWindow_SetClientObject(rawValue, object.rawValue)
    }
    
    open func setConstraintSizes(recurse: Bool = true) {
        _wxc_wxWindow_SetConstraintSizes(rawValue, recurse)
    }
    
    @discardableResult
    open func setCursor(_ cursor: wxCursor?) -> Bool {
        return _wxc_wxWindow_SetCursor(rawValue, cursor?.rawValue)
    }
    
    open func setExtraStyle(_ extraStyle: wxWindowExtraStyle) {
        _wxc_wxWindow_SetExtraStyle(rawValue, extraStyle.rawValue)
    }
    
    open func setFocus() {
        _wxc_wxWindow_SetFocus(rawValue)
    }
    
    open func setFont(_ font: wxFont) -> Bool {
        return _wxc_wxWindow_SetFont(rawValue, font.rawValue)
    }
    
    open func setForegroundColour(_ colour: wxColour) -> Bool {
        return _wxc_wxWindow_SetForegroundColour(rawValue, colour.rawValue)
    }
    
    open func setScrollPos(orientation: wxOrientation, position: CInt, refresh: Bool = true) {
        _wxc_wxWindow_SetScrollPos(rawValue, orientation.rawValue, position, refresh)
    }
    
    open func setScrollbar(orientation: wxOrientation, position: CInt, thumbSize: CInt, range: CInt, refresh: Bool = true) {
        _wxc_wxWindow_SetScrollbar(rawValue, orientation.rawValue, position, thumbSize, range, refresh)
    }
    
    open func setSize(rect: Rect, sizeFlags: wxWindowSizeFlags = .wxSIZE_AUTO) {
        _wxc_wxWindow_SetSize(rawValue, rect.x, rect.y, rect.width, rect.height, sizeFlags.rawValue)
    }
    
    open func setSizeHints(minSize: Size, maxSize: Size = wxDefaultSize, incSize: Size = wxDefaultSize) {
        _wxc_wxWindow_SetSizeHints(rawValue, minSize.width, minSize.height, maxSize.width, maxSize.height, incSize.width, incSize.height)
    }
    
    @discardableResult
    open func show() -> Bool {
        return _wxc_wxWindow_Show(rawValue)
    }
    
    open func thaw() {
        _wxc_wxWindow_Thaw(rawValue)
    }
    
    @discardableResult
    open func transferDataFromWindow() -> Bool {
        return _wxc_wxWindow_TransferDataFromWindow(rawValue)
    }
    
    @discardableResult
    open func transferDataToWindow() -> Bool {
        return _wxc_wxWindow_TransferDataToWindow(rawValue)
    }
    
    open func unsetConstraints(_ constraints: wxLayoutConstraints) {
        _wxc_wxWindow_UnsetConstraints(rawValue, constraints.rawValue)
    }
    
    open func updateWindowUI() {
        _wxc_wxWindow_UpdateWindowUI(rawValue)
    }
    
    open func validate() -> Bool {
        return _wxc_wxWindow_Validate(rawValue)
    }
    
    open func warpPointer(to pos: Point) {
        _wxc_wxWindow_WarpPointer(rawValue, pos.x, pos.y)
    }
}
