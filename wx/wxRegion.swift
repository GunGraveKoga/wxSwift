//
//  wxRegion.swift
//  wxSwift
//
//  Created by Юрий Вовк on 02/12/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

open class wxRegion: wxGDIObject {
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public required init() {
        super.init(rawValue: _wxc_wxRegion_CreateDefault())!
    }
    
    public init(rect: Rect) {
        super.init(rawValue: _wxc_wxRegion_CreateFromRect(rect.x, rect.y, rect.width, rect.height))!
    }
    
    open func assign(_ other: wxRegion) {
        _wxc_wxRegion_Assign(rawValue, other.rawValue)
    }
    
    open func contains(_ point: Point) -> Bool {
        return _wxc_wxRegion_ContainsPoint(rawValue, point.x, point.y)
    }
    
    open func contains(_ rect: Rect) -> Bool {
        return _wxc_wxRegion_ContainsRect(rawValue, rect.x, rect.y, rect.width, rect.height)
    }
    
    open func clear() {
        _wxc_wxRegion_Clear(rawValue)
    }
    
    override open func delete() {
        guard rawValue != nil else {
            return
        }
        
        _wxc_wxRegion_Delete(rawValue)
        rawValue = nil
    }
    
    open func isEmpty() -> Bool {
        return _wxc_wxRegion_IsEmpty(rawValue)
    }
    
    open func getBox() -> Rect {
        var x: wxCoord = 0, y: wxCoord = 0, w: wxCoord = 0, h: wxCoord = 0
        
        getBox(x: &x, y: &y, width: &w, height: &h)
        
        return Rect(x: x, y: y, width: w, height: h)
    }
    
    open func getBox(x: inout wxCoord, y: inout wxCoord, width: inout wxCoord, height: inout wxCoord) {
        _wxc_wxRegion_GetBox(rawValue, &x, &y, &width, &height)
    }
    
    @discardableResult
    open func formIntersection(_ rect: Rect) -> Bool {
        return _wxc_wxRegion_IntersectRect(rawValue, rect.x, rect.y, rect.width, rect.height)
    }
    
    @discardableResult
    open func formIntersection(_ region: wxRegion) -> Bool {
        return _wxc_wxRegion_IntersectRegion(rawValue, region.rawValue)
    }
    
    open func intersection(_ rect: Rect) -> Self {
        let _intersection = type(of: self).init()
        
        _intersection.assign(self)
        _intersection.formIntersection(rect)
        
        return _intersection
    }
    
    open func intersection(_ region: wxRegion) -> Self {
        let _intersection = type(of: self).init()
        
        _intersection.assign(self)
        _intersection.formIntersection(region)
        
        return _intersection
    }
    
    @discardableResult
    open func subtract(_ rect: Rect) -> Bool {
        return _wxc_wxRegion_SubtractRect(rawValue, rect.x, rect.y, rect.width, rect.height)
    }
    
    @discardableResult
    open func subtract(_ region: wxRegion) -> Bool {
        return _wxc_wxRegion_SubtractRegion(rawValue, region.rawValue)
    }
    
    open func subtracting(_ rect: Rect) -> Self {
        let _subtracting = type(of: self).init()
        
        _subtracting.assign(self)
        _subtracting.subtract(rect)
        
        return _subtracting
    }
    
    open func subtracting(_ region: wxRegion) -> Self {
        let _subtracting = type(of: self).init()
        
        _subtracting.assign(self)
        _subtracting.subtract(region)
        
        return _subtracting
    }
    
    @discardableResult
    open func formUnion(_ rect: Rect) -> Bool {
        return _wxc_wxRegion_UnionRect(rawValue, rect.x, rect.y, rect.width, rect.height)
    }
    
    @discardableResult
    open func formUnion(_ region: wxRegion) -> Bool {
        return _wxc_wxRegion_UnionRegion(rawValue, region.rawValue)
    }
    
    open func union(_ rect: Rect) -> Self {
        let _union = type(of: self).init()
        
        _union.assign(self)
        _union.formUnion(rect)
        
        return _union
    }
    
    open func union(_ region: wxRegion) -> Self {
        let _union = type(of: self).init()
        
        _union.assign(self)
        _union.formUnion(region)
        
        return _union
    }
    
    @discardableResult
    open func formXor(_ rect: Rect) -> Bool {
        return _wxc_wxRegion_XorRect(rawValue, rect.x, rect.y, rect.width, rect.height)
    }
    
    @discardableResult
    open func formXor(_ region: wxRegion) -> Bool {
        return _wxc_wxRegion_XorRegion(rawValue, region.rawValue)
    }
    
    open func xor(_ rect: Rect) -> Self {
        let _xor = type(of: self).init()
        
        _xor.assign(self)
        _xor.formXor(rect)
        
        return _xor
    }
    
    open func xor(_ region: wxRegion) -> Self {
        let _xor = type(of: self).init()
        
        _xor.assign(self)
        _xor.formXor(region)
        
        return _xor
    }
}
