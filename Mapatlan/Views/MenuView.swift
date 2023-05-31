//
//  MenuView.swift
//  Mapatlan
//
//  Created by ServicioMapatlan on 29/05/23.
//
import SwiftUI

struct MenuView: View {
    // Lista de lugares para la funcionalidad en el futuro
    let places = ["CID", "CETED", "Libreria", "CEDETEC", "CEI"]
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Añadimos una barra de búsqueda.
                SearchBar(text: $searchText)
                    .padding(.top)

                List {
                    ForEach(places.filter({ searchText.isEmpty ? true : $0.lowercased().contains(searchText.lowercased()) }), id: \.self) { place in
                        NavigationLink(destination: MapV()) {
                            Text(place)
                        }
                    }
                }
                .navigationBarTitle("Lugares")
            }
        }
    }
}

struct SearchBar: UIViewRepresentable {
    
    @Binding var text: String

    class Coordinator: NSObject, UISearchBarDelegate {

        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }

    }

    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
