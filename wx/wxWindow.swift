//
//  wxWindow.swift
//  wxSwift
//
//  Created by Юрий Вовк on 09/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxWindow: wxEvtHandler {
    
    public struct SizeFlags: OptionSet {
        public let rawValue: CInt
        
        public static let wxSIZE_AUTO_WIDTH = SizeFlags(rawValue: 0x0001)
        public static let wxSIZE_AUTO_HEIGHT = SizeFlags(rawValue: 0x0002)
        public static let wxSIZE_AUTO: SizeFlags = [.wxSIZE_AUTO_WIDTH, .wxSIZE_AUTO_HEIGHT]
        public static let wxSIZE_USE_EXISTING = SizeFlags(rawValue: 0x0000)
        public static let wxSIZE_ALLOW_MINUS_ONE = SizeFlags(rawValue: 0x0004)
        public static let wxSIZE_NO_ADJUSTMENTS = SizeFlags(rawValue: 0x0008)
        public static let wxSIZE_FORCE = SizeFlags(rawValue: 0x0010)
        
        public init(rawValue: CInt) {
            self.rawValue = rawValue
        }
    }
    
    public struct WindowStyleFlag: OptionSet {
        public let rawValue: CLong
        
        public static let wxVSCROLL = WindowStyleFlag(rawValue: 0x80000000)
        public static let wxHSCROLL = WindowStyleFlag(rawValue: 0x40000000)
        public static let wxCAPTION = WindowStyleFlag(rawValue: 0x20000000)
        @available(*, deprecated)
        public static let wxDOUBLE_BORDER = WindowStyleFlag(rawValue: 0x10000000)
        public static let wxSUNKEN_BORDER = WindowStyleFlag(rawValue: 0x08000000)
        public static let wxRAISED_BORDER = WindowStyleFlag(rawValue: 0x04000000)
        public static let wxBORDER: WindowStyleFlag = .wxSIMPLE_BORDER
        public static let wxSIMPLE_BORDER = WindowStyleFlag(rawValue: 0x02000000)
        public static let wxSTATIC_BORDER = WindowStyleFlag(rawValue: 0x01000000)
        public static let wxNO_BORDER = WindowStyleFlag(rawValue: 0x00200000)
        public static let wxALWAYS_SHOW_SB = WindowStyleFlag(rawValue: 0x00800000)
        public static let wxBORDER_DEFAULT = WindowStyleFlag(rawValue: 0)
        public static let wxBORDER_SIMPLE: WindowStyleFlag = .wxSIMPLE_BORDER
        public static let wxBORDER_SUNKEN: WindowStyleFlag = .wxSUNKEN_BORDER
        public static let wxBORDER_RAISED: WindowStyleFlag = .wxRAISED_BORDER
        public static let wxBORDER_THEME = WindowStyleFlag(rawValue: 0x10000000)
        public static let wxBORDER_NONE: WindowStyleFlag = .wxNO_BORDER
        @available(*, deprecated)
        public static let wxBORDER_DOUBLE = WindowStyleFlag(rawValue: 0x10000000)
        public static let wxTRANSPARENT_WINDOW = WindowStyleFlag(rawValue: 0x00100000)
        public static let wxTAB_TRAVERSAL = WindowStyleFlag(rawValue: 0x00080000)
        public static let wxWANTS_CHARS = WindowStyleFlag(rawValue: 0x00040000)
        public static let wxNO_FULL_REPAINT_ON_RESIZE = WindowStyleFlag(rawValue: 0)
        public static let wxCLIP_CHILDREN = WindowStyleFlag(rawValue: 0x00400000)
        public static let wxFULL_REPAINT_ON_RESIZE = WindowStyleFlag(rawValue: 0x00010000)
        public static let wxBORDER_MASK = WindowStyleFlag(rawValue: 0x1f200000)
        public static let wxCLIP_SIBLINGS = WindowStyleFlag(rawValue: 0x20000000)
        #if __WXMOTIF__
        public static let wxRETAINED = WindowStyleFlag(rawValue: 0x00020000)
        #else
        public static let wxRETAINED = WindowStyleFlag(rawValue: 0x00000000)
        #endif
        public static let wxPOPUP_WINDOW = WindowStyleFlag(rawValue: 0x00020000)
        public static let wxWINDOW_STYLE_MASK: WindowStyleFlag = [.wxVSCROLL, .wxHSCROLL, .wxBORDER_MASK, .wxALWAYS_SHOW_SB, .wxCLIP_CHILDREN, .wxCLIP_SIBLINGS, .wxTRANSPARENT_WINDOW, .wxTAB_TRAVERSAL, .wxWANTS_CHARS, .wxRETAINED, .wxPOPUP_WINDOW, .wxFULL_REPAINT_ON_RESIZE]
        
        public init(rawValue: CLong) {
            self.rawValue = rawValue
        }
    }
    
    public struct ExtraStyles: OptionSet {
        public let rawValue: CLong
        
        @available(*, deprecated, message: "This flag is obsolete as recursive validation is now the default (and only possible) behaviour. Simply don't use it any more in the new code.")
        public static let wxWS_EX_VALIDATE_RECURSIVELY = ExtraStyles(rawValue: 0x00000000)
        public static let wxWS_EX_BLOCK_EVENTS = ExtraStyles(rawValue: 0x00000002)
        public static let wxWS_EX_TRANSIENT = ExtraStyles(rawValue: 0x00000004)
        public static let wxWS_EX_THEMED_BACKGROUND = ExtraStyles(rawValue: 0x00000008)
        public static let wxWS_EX_PROCESS_IDLE = ExtraStyles(rawValue: 0x00000010)
        public static let wxWS_EX_PROCESS_UI_UPDATES = ExtraStyles(rawValue: 0x00000020)
        public static let wxWS_EX_CONTEXTHELP = ExtraStyles(rawValue: 0x00000080)
        
        public init(rawValue: CLong) {
            self.rawValue = rawValue
        }
    }
    
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
            return getClientData()
        }
        
        set {
            setClientData(newValue)
        }
    }
    
    public func getClientData<T: wxClientData>() -> T? {
        guard let clientData = _clientData else {
            return T(rawValue: _wxc_wxWindow_GetClientData(rawValue))
        }
        
        return clientData as? T
    }
    
    public func getClientData() -> CVoidPtr {
        return _wxc_wxWindow_GetClientData(rawValue)
    }
    
    public func setClientData<T: wxClientData>(_ clientData: T?) {
        _wxc_wxWindow_SetClientData(rawValue, clientData?.rawValue)
        _clientData = clientData
    }
    
    public func setClientData(_ clientData: CVoidPtr) {
        _wxc_wxWindow_SetClientData(rawValue, clientData)
    }
    
    public var clientSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetClientSize(rawValue))!
        }
        
        set {
            _wxc_wxWindow_SetClientSize(rawValue, newValue.width, newValue.height)
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
        
        set {
            _wxc_wxWindow_SetConstraints(rawValue, newValue?.rawValue)
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
        
        set {
            _ = _wxc_wxWindow_SetCursor(rawValue, newValue?.rawValue)
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
            
            _wxc_wxWindow_SetDropTarget(rawValue, newValue?.rawValue)
            
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
        
        set {
            _ = _wxc_wxWindow_SetFont(rawValue, newValue.rawValue)
        }
        
    }
    
    public var foregroundColour: wxColour {
        get {
            let colour = wxColour()
            
            _wxc_wxWindow_GetForegroundColour(rawValue, colour.rawValue)
            
            return colour
        }
        
        set {
            _ = _wxc_wxWindow_SetForegroundColour(rawValue, newValue.rawValue)
        }
    }
    
    public var handle: UnsafeMutableRawPointer {
        get {
            return _wxc_wxWindow_GetHandle(rawValue)
        }
    }
    
    public var Id: wxWindowID {
        get {
            return _wxc_wxWindow_GetId(rawValue)
        }
        
        set {
            _wxc_wxWindow_SetId(rawValue, newValue)
        }
    }
    
    public var label: String? {
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
    
    public func getParent<T: wxWindow>() -> T? {
        return T(rawValue: _wxc_wxWindow_GetParent(rawValue))
    }
    
    public var position: Point {
        get {
            return Point(wxPoint: _wxc_wxWindow_GetPosition(rawValue))!
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
    
    public func getScrollPos(orientation: wxOrientation) -> CInt {
        return _wxc_wxWindow_GetScrollPos(rawValue, orientation.rawValue)
    }
    
    public func getScrollRange(orientation: wxOrientation) -> CInt {
        return _wxc_wxWindow_GetScrollRange(rawValue, orientation.rawValue)
    }
    
    public func getScrollThumb(orientation: wxOrientation) -> CInt {
        return _wxc_wxWindow_GetScrollThumb(rawValue, orientation.rawValue)
    }
    
    public var size: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetSize(rawValue))!
        }
        
        set {
            var r = rect
            r.size = newValue
            
            setSize(rect: r)
        }
    }
    
    public var sizeConstraint: Size {
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
    
    public var sizer: wxSizer? {
        get {
            return wxSizer(rawValue: _wxc_wxWindow_GetSizer(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetSizer(rawValue, newValue?.rawValue)
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
    
    public var updateRegion: wxRegion! {
        get {
            return wxRegion(rawValue: _wxc_wxWindow_GetUpdateRegion(rawValue))
        }
    }
    
    public var validator: wxValidator? {
        get {
            return wxValidator(rawValue: _wxc_wxWindow_GetValidator(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetValidator(rawValue, newValue?.rawValue)
        }
    }
    
    public var virtualSize: Size {
        get {
            return Size(wxSize: _wxc_wxWindow_GetVirtualSize(rawValue))!
        }
        
        set {
            _wxc_wxWindow_SetVirtualSize(rawValue, newValue.width, newValue.height)
        }
    }
    
    public var windowStyleFlag: wxWindow.WindowStyleFlag {
        get {
            return WindowStyleFlag(rawValue: _wxc_wxWindow_GetWindowStyleFlag(rawValue))
        }
        
        set {
            _wxc_wxWindow_SetWindowStyleFlag(rawValue, newValue.rawValue)
        }
    }
    
    public var windowStyle: wxWindow.WindowStyleFlag {
        get {
            return windowStyleFlag
        }
        
        set {
            windowStyleFlag = newValue
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
        _wxc_wxWindow_Lower(rawValue)
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
    
    @discardableResult
    public func setBackgroundColour(_ colour: wxColour) -> Bool {
        return _wxc_wxWindow_SetBackgroundColour(rawValue, colour.rawValue)
    }
    
    public func setClientObject(_ object: wxClientData) {
        _wxc_wxWindow_SetClientObject(rawValue, object.rawValue)
    }
    
    public func setConstraintSizes(recurse: Bool = true) {
        _wxc_wxWindow_SetConstraintSizes(rawValue, recurse)
    }
    
    @discardableResult
    public func setCursor(_ cursor: wxCursor?) -> Bool {
        return _wxc_wxWindow_SetCursor(rawValue, cursor?.rawValue)
    }
    
    public func setExtraStyle(_ extraStyle: wxWindow.ExtraStyles) {
        _wxc_wxWindow_SetExtraStyle(rawValue, extraStyle.rawValue)
    }
    
    public func setFocus() {
        _wxc_wxWindow_SetFocus(rawValue)
    }
    
    public func setFont(_ font: wxFont) -> Bool {
        return _wxc_wxWindow_SetFont(rawValue, font.rawValue)
    }
    
    public func setForegroundColour(_ colour: wxColour) -> Bool {
        return _wxc_wxWindow_SetForegroundColour(rawValue, colour.rawValue)
    }
    
    public func setScrollPos(orientation: wxOrientation, position: CInt, refresh: Bool = true) {
        _wxc_wxWindow_SetScrollPos(rawValue, orientation.rawValue, position, refresh)
    }
    
    public func setScrollbar(orientation: wxOrientation, position: CInt, thumbSize: CInt, range: CInt, refresh: Bool = true) {
        _wxc_wxWindow_SetScrollbar(rawValue, orientation.rawValue, position, thumbSize, range, refresh)
    }
    
    public func setSize(rect: Rect, sizeFlags: wxWindow.SizeFlags = .wxSIZE_AUTO) {
        _wxc_wxWindow_SetSize(rawValue, rect.x, rect.y, rect.width, rect.height, sizeFlags.rawValue)
    }
    
    public func setSizeHints(minSize: Size, maxSize: Size = wxDefaultSize, incSize: Size = wxDefaultSize) {
        _wxc_wxWindow_SetSizeHints(rawValue, minSize.width, minSize.height, maxSize.width, maxSize.height, incSize.width, incSize.height)
    }
    
    @discardableResult
    public func show() -> Bool {
        return _wxc_wxWindow_Show(rawValue)
    }
    
    public func thaw() {
        _wxc_wxWindow_Thaw(rawValue)
    }
    
    @discardableResult
    public func transferDataFromWindow() -> Bool {
        return _wxc_wxWindow_TransferDataFromWindow(rawValue)
    }
    
    @discardableResult
    public func transferDataToWindow() -> Bool {
        return _wxc_wxWindow_TransferDataToWindow(rawValue)
    }
    
    public func unsetConstraints(_ constraints: wxLayoutConstraints) {
        _wxc_wxWindow_UnsetConstraints(rawValue, constraints.rawValue)
    }
    
    public func updateWindowUI() {
        _wxc_wxWindow_UpdateWindowUI(rawValue)
    }
    
    public func validate() -> Bool {
        return _wxc_wxWindow_Validate(rawValue)
    }
    
    public func warpPointer(to pos: Point) {
        _wxc_wxWindow_WarpPointer(rawValue, pos.x, pos.y)
    }
}
