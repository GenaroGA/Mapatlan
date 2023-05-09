//
//  MapBoxMap.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 03/05/23.
//

import SwiftUI
import MapboxMaps


struct MapBoxView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> MapViewController {
        return MapViewController()
    }
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {}
}


class MapViewController: UIViewController{
    internal var mapView: MapView!
    override public func viewDidLoad() {
        super.viewDidLoad()
        let myResourceOption = ResourceOptions(accessToken: "pk.eyJ1IjoiZ2VuYXJvZ2EiLCJhIjoiY2xmazM2c2EwMDZ1OTNwcnZramljOHE3ZCJ9.90IIKm72FYXHoNKNj50HRg")
        let myMapInitOptions = MapInitOptions(resourceOptions: myResourceOption)
        
        
        mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOptions)
        mapView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        self.view.addSubview(mapView)
    }
}
