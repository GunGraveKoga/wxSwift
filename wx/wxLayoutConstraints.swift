//
//  wxLayoutConstraints.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("wxLayoutConstraints_Create")
fileprivate func wxLayoutConstraints_Create() -> CVoidPtr
internal func _wxc_wxLayoutConstraints_Create() -> CVoidPtr {
    return wxLayoutConstraints_Create()
}

@_silgen_name("wxLayoutConstraints_bottom")
fileprivate func wxLayoutConstraints_bottom(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_bottom(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_bottom(ptr)
}

@_silgen_name("wxLayoutConstraints_centreX")
fileprivate func wxLayoutConstraints_centreX(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_centreX(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_centreX(ptr)
}

@_silgen_name("wxLayoutConstraints_centreY")
fileprivate func wxLayoutConstraints_centreY(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_centreY(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_centreY(ptr)
}

@_silgen_name("wxLayoutConstraints_height")
fileprivate func wxLayoutConstraints_height(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_height(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_height(ptr)
}

@_silgen_name("wxLayoutConstraints_left")
fileprivate func wxLayoutConstraints_left(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_left(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_left(ptr)
}

@_silgen_name("wxLayoutConstraints_right")
fileprivate func wxLayoutConstraints_right(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_right(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_right(ptr)
}

@_silgen_name("wxLayoutConstraints_top")
fileprivate func wxLayoutConstraints_top(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_top(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_top(ptr)
}

@_silgen_name("wxLayoutConstraints_width")
fileprivate func wxLayoutConstraints_width(_ ptr: CVoidPtr) -> CVoidPtr
internal func _wxc_wxLayoutConstraints_width(_ ptr: CVoidPtr) -> CVoidPtr {
    return wxLayoutConstraints_width(ptr)
}

public final class wxLayoutConstraints: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init() {
        super.init(rawValue: _wxc_wxLayoutConstraints_Create())!
    }
    
    public var bottom: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_bottom(rawValue))!
        }
    }
    
    public var centerX: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_centreX(rawValue))!
        }
    }
    
    public var centerY: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_centreY(rawValue))!
        }
    }
    
    public var height: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_height(rawValue))!
        }
    }
    
    public var left: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_left(rawValue))!
        }
    }
    
    public var right: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_right(rawValue))!
        }
    }
    
    public var top: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_top(rawValue))!
        }
    }
    
    public var width: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_width(rawValue))!
        }
    }
}
