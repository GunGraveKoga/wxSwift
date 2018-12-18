//
//  wxDropTarget.swift
//  wxSwift
//
//  Created by Юрий Вовк on 13/11/2018.
//  Copyright © 2018 Yury Vovk. All rights reserved.
//

@_silgen_name("ELJDropTarget_Create")
fileprivate func ELJDropTarget_Create(_ obj: UnsafeMutableRawPointer) -> CVoidPtr
internal func _wxc_ELJDropTarget_Create(_ obj: UnsafeMutableRawPointer) -> CVoidPtr {
    return ELJDropTarget_Create(obj)
}

@_silgen_name("ELJDropTarget_Delete")
fileprivate func ELJDropTarget_Delete(_ ptr: CVoidPtr) -> Void
internal func _wxc_ELJDropTarget_Delete(_ ptr: CVoidPtr) -> Void {
    ELJDropTarget_Delete(ptr)
}

@_silgen_name("ELJDropTarget_SetOnData")
fileprivate func ELJDropTarget_SetOnData(_ ptr: CVoidPtr, _ func: CVoidPtr) -> Void
internal func _wxc_ELJDropTarget_SetOnData(_ ptr: CVoidPtr, _ func: CVoidPtr) -> Void {
    return ELJDropTarget_SetOnData(ptr, `func`)
}

internal typealias DragThreeFunc = @convention(c) (_ obj: UnsafeMutableRawPointer, _ x: CInt, _ y: CInt, _ def: CInt) -> CInt

public enum wxDragResult: CInt {
    case wxDragError = 0
    case wxDragNone
    case wxDragCopy
    case wxDragMove
    case wxDragLink
    case wxDragCancel
}

open class wxDropTargetBase {
    
    public internal(set) var rawValue: CVoidPtr
    
    public required init?(rawValue: CVoidPtr) {
        guard let rawValue = rawValue else {
            return nil
        }
        
        self.rawValue = rawValue
    }
    
    public required init() {}
    
    open static func == (lhs: wxDropTargetBase, rhs: wxDropTargetBase) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }
    
    open func onData(x: wxCoord, y: wxCoord, _ default: wxDragResult) -> wxDragResult {
        return `default`
    }
    
    internal func rebase() {}
}

open class wxDropTarget: wxDropTargetBase {
    private static let _onDataFunc: DragThreeFunc = {(obj: UnsafeMutableRawPointer, x: CInt, y: CInt, def: CInt) -> CInt in
        
        if let _def = wxDragResult(rawValue: def) {
            if let _obj: wxDropTargetBase = bridge(obj) {
                return _obj.onData(x: wxCoord(x), y: y, _def).rawValue
            }
        }
        
        return wxDragResult.wxDragError.rawValue
    }
    
    public required init?(rawValue: CVoidPtr) {
        super.init(rawValue: rawValue)
    }
    
    public required init() {
        super.init()
        
        self.rawValue = _wxc_ELJDropTarget_Create(bridge(self)!)
        
        _wxc_ELJDropTarget_SetOnData(rawValue, unsafeBitCast(wxDropTarget._onDataFunc, to: CVoidPtr.self))
    }
    
    deinit {
        if rawValue != nil {
            _wxc_ELJDropTarget_Delete(rawValue)
            rawValue = nil
        }
    }
    
    override func rebase() {
        rawValue = nil
    }
}
