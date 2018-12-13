//
//  wxClosure.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

internal typealias wxClosureFun = @convention(c) (CVoidPtr, CVoidPtr, CVoidPtr) -> Void

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

fileprivate class __wxClosureCallbackWrapper<E: wxEvent> {
    typealias Event = E
    var _eventObject: wxObject
    let _eventHandler: (Event) -> Void
    
    func createEvent(_ ptr: CVoidPtr) -> wxEvent? {
        return Event(rawValue: ptr)
    }
    
    func performEvent(_ event: Event) {
        _eventHandler(event)
    }
    
    init(_ object: wxObject, _ callback: @escaping (Event) -> Void) {
        _eventObject = object
        _eventHandler = callback
    }
}

fileprivate class __wxClosureMethodWrapper<T: AnyObject, E: wxEvent> {
    typealias EventObjectType = T
    typealias Event = E
    var _target: EventObjectType
    weak var _sender: wxObject?
    let _action: (EventObjectType) -> (Event) -> Void
    
    init(_ sender: wxObject, _ target: EventObjectType, _ action: @escaping (EventObjectType) -> (Event) ->Void) {
        _target = target
        _action = action
    }
    
    func createEvent(_ ptr: CVoidPtr) -> wxEvent? {
        return Event(rawValue: ptr)
    }
    
    func performEvent(_ event: Event) {
        _action(_target)(event)
    }
}

public final class wxClosure: wxObject {
    
    public var closureData: CVoidPtr {
        get {
            return _wxc_wxClosure_GetData(rawValue)
        }
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init<E: wxEvent>(_ object: wxObject, _ callbac: @escaping (E) -> Void) {
        let closureFunction: wxClosureFun = {
            (funcPtr: CVoidPtr, data: CVoidPtr, event: CVoidPtr) -> Void in

            guard let context: __wxClosureCallbackWrapper<wxEvent> = bridge(data) else {
                return
            }
            
            guard let _event = context.createEvent(event) else {
                let _context: __wxClosureCallbackWrapper<wxEvent>? = bridgeTransfer(data)
                return
            }
            
            let old = _event.getEventObject()
            
            defer {
                _event.setEventObject(old)
            }
            
            _event.eventObject = context._eventObject
            
            context.performEvent(_event)
        }
        
        let _context = __wxClosureCallbackWrapper(object, callbac)
        
        super.init(rawValue: _wxc_wxClosure_Create(closureFunction, bridgeRetained(_context)))!
    }
    
    public init<T: AnyObject, E: wxEvent>(_ sender: wxObject, _ target: T, _ action: @escaping (T) -> (E) -> Void) {
        let closureFunc: wxClosureFun = {
            (funcPtr: CVoidPtr, data: CVoidPtr, event: CVoidPtr) -> Void in
            
            guard let context: __wxClosureMethodWrapper<AnyObject, wxEvent> = bridge(data) else {
                return
            }
            
            guard let _event = context.createEvent(event) else {
                let _context: __wxClosureMethodWrapper<AnyObject, wxEvent>? = bridgeTransfer(data)
                return
            }
            
            
            let old = _event.getEventObject()
            
            defer {
                _event.setEventObject(old)
            }
            
            _event.eventObject = context._sender
            
            context.performEvent(_event)
        }
        
        let _contex = __wxClosureMethodWrapper<T, E>(sender, target, action)
        
        super.init(rawValue: _wxc_wxClosure_Create(closureFunc, bridgeRetained(_contex)))!
    }
}
