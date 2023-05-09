//
//  JuegoUIView.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 08/05/23.
//

import SwiftUI
import SceneKit

class GameView: SCNView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    // Configurar la vista
    scene = SCNScene()
    allowsCameraControl = true
    backgroundColor = UIColor.black
    autoenablesDefaultLighting = true
    isPlaying = true
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
}


struct JuegoUIView: View {
    var body: some View {
        GameView(frame: UIScreen.main.bounds)
              //.edgesIgnoringSafeArea(.all)
    }
}

struct JuegoUIView_Previews: PreviewProvider {
    static var previews: some View {
        JuegoUIView()
    }
}
