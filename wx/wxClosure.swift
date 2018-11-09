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

fileprivate class __wxClosureCallbackWrapper {
    var _eventObject: wxObject
    let _eventHandler: (wxEvent) -> Void
    
    init(_ object: wxObject, _ callback: @escaping (wxEvent) -> Void) {
        _eventObject = object
        _eventHandler = callback
    }
}

fileprivate class __wxClosureMethodWrapper<T: AnyObject> {
    typealias EventObjectType = T
    var _target: EventObjectType
    weak var _sender: wxObject?
    let _action: (EventObjectType) -> (wxEvent) -> ()
    
    init(_ sender: wxObject, _ target: EventObjectType, _ action: @escaping (EventObjectType) -> (wxEvent) -> ()) {
        _target = target
        _action = action
    }
    
    func performAction(_ event: wxEvent) {
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
    
    public init(_ object: wxObject, _ callbac: @escaping (wxEvent) -> Void) {
        let closureFunction: wxClosureFun = {
            (funcPtr: CVoidPtr, data: CVoidPtr, event: CVoidPtr) -> Void in

            let context: __wxClosureCallbackWrapper?
            
            guard let _event = wxEvent(rawValue: event) else {
                context = bridgeTransfer(data)
                return
            }
            
            context = bridge(data)
            
            let old = _event.getEventObject()
            
            defer {
                _event.setEventObject(old)
            }
            
            _event.eventObject = context?._eventObject
            
            context?._eventHandler(_event)
        }
        
        let _context = __wxClosureCallbackWrapper(object, callbac)
        
        super.init(rawValue: _wxc_wxClosure_Create(closureFunction, bridgeRetained(_context)))!
    }
    
    public init<T: AnyObject>(_ sender: wxObject, _ target: T, _ action: @escaping (T) -> (wxEvent) -> ()) {
        let closureFunc: wxClosureFun = {
            (funcPtr: CVoidPtr, data: CVoidPtr, event: CVoidPtr) -> Void in
            
            let context: __wxClosureMethodWrapper<AnyObject>?
            
            guard let _event = wxEvent(rawValue: event) else {
                context = bridgeTransfer(data)
                return
            }
            
            context = bridge(data)
            
            let old = _event.getEventObject()
            
            defer {
                _event.setEventObject(old)
            }
            
            _event.eventObject = context?._sender
            
            context?.performAction(_event)
        }
        
        let _contex = __wxClosureMethodWrapper<T>(sender, target, action)
        
        super.init(rawValue: _wxc_wxClosure_Create(closureFunc, bridgeRetained(_contex)))!
    }
}
