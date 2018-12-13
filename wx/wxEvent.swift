//
//  wxEvent.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxEvent: wxObject {
    
    internal var _eventObject: wxObject?
    
    public var eventObject: wxObject? {
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
    
    internal func setEventObject(_ ptr: CVoidPtr) {
        _wxc_wxEvent_SetEventObject(rawValue, ptr)
    }
    
    internal func getEventObject() -> CVoidPtr {
        return _wxc_wxEvent_GetEventObject(rawValue)
    }
    
    public var eventId: CInt {
        get {
            return _wxc_wxEvent_GetId(rawValue)
        }
        
        set {
            _wxc_wxEvent_SetId(rawValue, newValue)
        }
    }
    
    public var eventType: wxEventType {
        get {
            return _wxc_wxEvent_GetEventType(rawValue)
        }
        
        set {
            _wxc_wxEvent_SetEventType(rawValue, newValue)
        }
    }
    
    public var isSkipped: Bool {
        get {
            return _wxc_wxEvent_GetSkipped(rawValue)
        }
    }
    
    public var isCommandEvent: Bool {
        get {
            return _wxc_wxEvent_IsCommandEvent(rawValue)
        }
    }
    
    public var timestamp: CLong {
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
    
    public func skip() {
        _wxc_wxEvent_Skip(rawValue)
    }
}
