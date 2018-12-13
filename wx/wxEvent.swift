//
//  wxEvent.swift
//  wxSwift
//
//  Created by Юрий Вовк on 08/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

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

public typealias wxEventType = CInt
public func wxNewEventType() -> CInt {
    return _wxc_wxEvent_NewEventType()
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
