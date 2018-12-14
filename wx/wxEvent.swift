//
//  wxEvent.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

public typealias wxEventType = CInt
public func wxNewEventType() -> CInt {
    return _wxc_wxEvent_NewEventType()
}

open class wxEvent: wxObject {
    
    internal var _eventObject: wxObject?
    
    open var eventObject: wxObject? {
        get {
            guard let object = _eventObject else {
                return wxObject(rawValue: getEventObject())
            }
            
            return object
        }
        
        set {
            setEventObject(newValue?.rawValue)
            _eventObject = newValue
        }
    }
    
    open func setEventObject(_ ptr: CVoidPtr) {
        _wxc_wxEvent_SetEventObject(rawValue, ptr)
    }
    
    open func getEventObject() -> CVoidPtr {
        return _wxc_wxEvent_GetEventObject(rawValue)
    }
    
    open var eventId: CInt {
        get {
            return _wxc_wxEvent_GetId(rawValue)
        }
        
        set {
            _wxc_wxEvent_SetId(rawValue, newValue)
        }
    }
    
    open var eventType: wxEventType {
        get {
            return _wxc_wxEvent_GetEventType(rawValue)
        }
        
        set {
            _wxc_wxEvent_SetEventType(rawValue, newValue)
        }
    }
    
    open var isSkipped: Bool {
        get {
            return _wxc_wxEvent_GetSkipped(rawValue)
        }
    }
    
    open var isCommandEvent: Bool {
        get {
            return _wxc_wxEvent_IsCommandEvent(rawValue)
        }
    }
    
    open var timestamp: CLong {
        get {
            return _wxc_wxEvent_GetTimestamp(rawValue)
        }
        
        set {
            _wxc_wxEvent_SetTimestamp(rawValue, newValue)
        }
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    open func skip() {
        _wxc_wxEvent_Skip(rawValue)
    }
}
