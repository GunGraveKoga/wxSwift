//
//  wxEvtHandler.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

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
