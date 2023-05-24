//
//  MapBoxMap.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 03/05/23.
//

import SwiftUI
import MapboxMaps
import CoreLocation

// Implementación de `UIViewControllerRepresentable` para usar una vista de UIKit en SwiftUI
struct MapBoxView: UIViewControllerRepresentable {
    // Crear el UIViewController
    func makeUIViewController(context: Context) -> MapViewController {
        return MapViewController()
    }
    
    // Actualizar el UIViewController
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {}
}

// Implementación de un UIViewController personalizado
public class MapViewController: UIViewController {
    // Declaración de la vista de mapa
    internal var mapView: MapView!
    
    // Declaración del consumidor de ubicación de la cámara
    private var cameraLocationConsumer: CameraLocationConsumer!
    
    // Estilo de mapa predeterminado
    private var style: Style = .customUri {
        // Cada vez que se cambia el estilo, se actualiza el URI del estilo del mapa
        didSet {
            mapView.mapboxMap.style.uri = style.uri
        }
    }
    
    // Enumeración de los estilos de mapa disponibles
    private enum Style: Int, CaseIterable {
        // Nombres de los estilos
        var name: String {
            switch self {
            case .light:
                return "Light"
            case .satelliteStreets:
                return "Satelite"
            case .customUri:
                return "Custom"
            }
        }
        
        // URI del estilo de MapBox
        var uri: StyleURI {
            switch self {
            case .light:
                return .light
            case .satelliteStreets:
                return .satelliteStreets
            case .customUri:
                let customStyleURL = URL(string: "mapbox://styles/genaroga/clhsbur32015g01pa03sg2rxm")!
                return .init(url: customStyleURL)!
            }
        }
        
        case light
        case satelliteStreets
        case customUri
    }
    
    // Se llama cuando la vista ha sido cargada
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Configuración de las opciones de MapBox
        let myResourceOption = ResourceOptions(accessToken: "pk.eyJ1IjoiZ2VuYXJvZ2EiLCJhIjoiY2xmazM2c2EwMDZ1OTNwcnZramljOHE3ZCJ9.90IIKm72FYXHoNKNj50HRg")
        let myMapInitOptions = MapInitOptions(resourceOptions: myResourceOption, styleURI: style.uri)
        
        // Inicialización de la vista de mapa
        mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOptions)
        // Configuración de la vista de mapa para que se redimensione con la vista del controlador
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // Añadir la vista de mapa a la vista del controlador
        self.view.addSubview(mapView)
        
        // Inicialización del consumidor de ubicación de la cámara
        cameraLocationConsumer = CameraLocationConsumer(mapView: mapView)
        
        // Configuración del tipo de indicador de ubicación a utilizar (en este caso, se utiliza un "puck" 2D)
        mapView.location.options.puckType = .puck2D()
        
        // Una vez que el mapa se ha cargado completamente...
        mapView.mapboxMap.onNext(event: .mapLoaded) { [weak self] _ in
            guard let self = self else { return }
            // Añadir el consumidor de ubicación al gestor de ubicaciones del mapa
            self.mapView.location.addLocationConsumer(newConsumer: self.cameraLocationConsumer)
        }
    }
    // Considera agregar otros métodos según tus necesidades
    // Por ejemplo, si quieres cambiar de estilos, agrega el método respectivo y los elementos de UI
}

// Crear una clase que se adhiera a `LocationConsumer` para recibir actualizaciones de ubicación
public class CameraLocationConsumer: LocationConsumer {
    weak var mapView: MapView?
    
    init(mapView: MapView) {
        self.mapView = mapView
    }
    
    // Se llama cada vez que se recibe una nueva actualización de ubicación
    public func locationUpdate(newLocation: Location) {
        // Mueve suavemente la cámara del mapa al centro de la nueva ubicación
        mapView?.camera.ease(
            to: CameraOptions(center: newLocation.coordinate, zoom: 16),
            duration: 1.3)
    }
}
