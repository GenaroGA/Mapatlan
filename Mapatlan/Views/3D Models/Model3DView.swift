//
//  Model3DView.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 03/05/23.
//

import SwiftUI
import SceneKit


struct Model3DView: View {
    var body: some View {
        VStack{
            SceneView(scene: scene(),options: [.autoenablesDefaultLighting,.allowsCameraControl])
                .ignoresSafeArea()
        }
    }
    
    func scene() -> SCNScene {
        let scene = SCNScene(named: "area5.usdc")!
        
        
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: -100, y: 15, z: 20) // ajusta la posición de la cámara aquí
        cameraNode.look(at: SCNVector3(x: -100, y: 80, z: 10))
        scene.rootNode.addChildNode(cameraNode)
        
        return scene
         
    }
}

struct Model3DView_Previews: PreviewProvider {
    static var previews: some View {
        Model3DView()
    }
}
