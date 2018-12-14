//
//  wxLayoutConstraints.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxLayoutConstraints: wxObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public init() {
        super.init(rawValue: _wxc_wxLayoutConstraints_Create())!
    }
    
    open var bottom: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_bottom(rawValue))!
        }
    }
    
    open var centerX: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_centreX(rawValue))!
        }
    }
    
    open var centerY: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_centreY(rawValue))!
        }
    }
    
    open var height: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_height(rawValue))!
        }
    }
    
    open var left: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_left(rawValue))!
        }
    }
    
    open var right: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_right(rawValue))!
        }
    }
    
    open var top: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_top(rawValue))!
        }
    }
    
    open var width: wxIndividualLayoutConstraint {
        get {
            return wxIndividualLayoutConstraint(rawValue: _wxc_wxLayoutConstraints_width(rawValue))!
        }
    }
}
