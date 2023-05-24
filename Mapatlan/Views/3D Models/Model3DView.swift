//
//  Model3DView.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 03/05/23.
//
import SceneKit
import SwiftUI



struct Model3DView: View {
    var body: some View {
        SceneKitView(scene: SCNScene(named: "mapatlanTotal.usdc")!)
            .edgesIgnoringSafeArea(.all)
    }
}

struct SceneKitView: UIViewRepresentable {
    let scene: SCNScene
    
    func makeUIView(context: Context) -> SCNView {
        let view = SCNView()
        view.scene = scene
        view.allowsCameraControl = true
        view.autoenablesDefaultLighting = true
        view.backgroundColor = UIColor.clear
        return view
    }
    
    func updateUIView(_ uiView: SCNView, context: Context) {
        // Actualiza la vista si es necesario
    }
}


struct Model3DView_Previews: PreviewProvider {
    static var previews: some View {
        Model3DView()
    }
}
