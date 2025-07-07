import SwiftUI
import MapKit

struct MapView: View {
    // 私有的计算属性，返回一个MKCoordinateRegion
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }

    var body: some View {
        Map(initialPosition: .region(region))
    }
}

#Preview {
    MapView()
} 