//
//  ViewController.swift
//  Park Map
//
//  Created by Scott Laforest on 4/26/21.
//

import UIKit
import MapKit
class MKMapKit: UIView {
    
}

class ViewController: UIViewController {
    
    @IBOutlet var MapView: MKMapView!


    override func viewDidLoad() {
        super.viewDidLoad()
      _ = CLLocation(latitude: 39.099724, longitude: -94.578331)
        // Do any additional setup after loading the view.
    }


}

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
