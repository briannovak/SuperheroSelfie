/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A type representing the available options for virtual content.
*/

enum VirtualContentType: Int {
    case none
//    case faceGeometry
    case browMask
    case FullMask
    case majoraSmall
//    case overlayModel
    case blendShapeModel
    
    static let orderedValues: [VirtualContentType] = [.none, .browMask, .FullMask, .majoraSmall, .blendShapeModel]
    
    var imageName: String {
        switch self {
        case .none: return "none"
//        case .faceGeometry: return "faceGeometry"
        case .browMask: return "browMask"
        case .FullMask: return "FullMask"
        case .majoraSmall: return "majoraSmall"
//        case .overlayModel: return "overlayModel"
        case .blendShapeModel: return "blendShapeModel"
        }
    }
}
