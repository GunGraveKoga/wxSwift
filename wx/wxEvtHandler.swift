//
//  wxEvtHandler.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

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

public let wxID_ANY = CInt(-1)

open class wxEvtHandler: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public func addPendingEvent(_ event: wxEvent) {
        _wxc_wxEvtHandler_AddPendingEvent(rawValue, event.rawValue)
    }
    
    public func connect(winId: CInt = wxID_ANY, lastId: CInt = wxID_ANY, eventType: wxEventType, closure: wxClosure) {
        
        _ = _wxc_wxEvtHandler_Connect(rawValue, winId, lastId, eventType, closure.rawValue)
    }
    
    public func bind<E: wxEvent>(eventType type: wxEventType, _ body: @escaping (E) -> Void) {
        self.connect(eventType: type, closure: wxClosure(self, body))
    }
    
    public func bind<T: AnyObject, E: wxEvent>(eventType type: wxEventType, target: T, action: @escaping (T) -> (E) -> Void) {
        self.connect(eventType: type, closure: wxClosure(self, target, action))
    }
    
    public func disconnect(winId: CInt = wxID_ANY, lastId: CInt = wxID_ANY, eventType: wxEventType, closure: wxClosure) {
        _ = _wxc_wxEvtHandler_Disconnect(rawValue, winId, lastId, eventType, closure.rawValue)
    }
    
    public var enabled: Bool {
        get {
            return _wxc_wxEvtHandler_GetEvtHandlerEnabled(rawValue)
        }
        
        set {
            _wxc_wxEvtHandler_SetEvtHandlerEnabled(rawValue, newValue)
        }
    }
    
    internal var _nextHandler: wxEvtHandler?
    
    public var nextHandler: wxEvtHandler? {
        get {
            return getNextHandler()
        }
        
        set {
            setNextHandler(newValue)
        }
    }
    
    public func setNextHandler<T: wxEvtHandler>(_ handler: T?) {
        _wxc_wxEvtHandler_SetNextHandler(rawValue, handler?.rawValue)
        _nextHandler = nextHandler
    }
    
    public func getNextHandler<T: wxEvtHandler>() -> T? {
        guard let handler = _nextHandler else {
            return T(rawValue:_wxc_wxEvtHandler_GetNextHandler(rawValue))
        }
        
        return handler as? T
    }
    
    internal var _previousHandler: wxEvtHandler?
    
    public var previousHandler: wxEvtHandler? {
        get {
            return getPreviousHandler()
        }
        
        set {
            setPreviousHandler(newValue)
        }
    }
    
    public func setPreviousHandler<T: wxEvtHandler>(_ handler: T?) {
        _wxc_wxEvtHandler_SetPreviousHandler(rawValue, handler?.rawValue)
        _previousHandler = handler
    }
    
    public func getPreviousHandler<T: wxEvtHandler>() -> T? {
        guard let handler = _previousHandler else {
            return T(rawValue: _wxc_wxEvtHandler_GetPreviousHandler(rawValue))
        }
        
        return handler as? T
    }
    
    public func processEvent(_ event: wxEvent) -> Bool {
        return _wxc_wxEvtHandler_ProcessEvent(rawValue, event.rawValue)
    }
    
    public func processPendingEvents() {
        _wxc_wxEvtHandler_ProcessPendingEvents(rawValue)
    }
    
    public override func destroy() {
        if let rawValue = rawValue {
            _wxc_wxEvtHandler_Delete(rawValue)
        }
    }
}
