//
//  wxLayoutConstraints.swift
//  wxSwift
//
//  Created by Юрий Вовк on 12/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

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
