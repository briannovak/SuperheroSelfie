/*
See LICENSE folder for this sample’s licensing information.

Abstract:
An `SCNNode` subclass demonstrating a basic use of `ARSCNFaceGeometry`.
*/

import ARKit
import SceneKit

class Mask1: SCNNode, VirtualFaceContent {
    
    init(geometry: ARSCNFaceGeometry) {
//        let material = geometry.firstMaterial!
        let material = SCNMaterial()
        
//        material.diffuse.contents = UIColor.green
        material.diffuse.contents = UIImage(named: "Models.scnassets/blue_brow.gif")
//        material.transparency = 0.5
        geometry.materials = [material]
        material.lightingModel = .physicallyBased
        
        super.init()
        self.geometry = geometry
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("\(#function) has not been implemented")
    }
    
    // MARK: VirtualFaceContent
    
    /// - Tag: SCNFaceGeometryUpdate
    func update(withFaceAnchor anchor: ARFaceAnchor) {
        let faceGeometry = geometry as! ARSCNFaceGeometry
        faceGeometry.update(from: anchor.geometry)
    }
}
