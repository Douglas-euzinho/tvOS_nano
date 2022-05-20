//
//  MapViewController.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 12/05/22.
//
import UIKit
import MapKit

class MapViewController: UIViewController{
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var favoriteButton: UIButton!

    @IBOutlet weak var returnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfPlaces.forEach { place in
            mapView.addAnnotation(place)
        }
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(MapViewController.forceFocus(gesture:)))
        self.mapView.addGestureRecognizer(gesture)
    }
    
    @IBAction func returnToHome(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewControler = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        show(viewControler, sender: self)
    }
    
    @IBAction func favoriteButton(_ sender: Any) {
        let coordinate = CLLocationCoordinate2D(latitude: ViewController.teste.latitude!, longitude: ViewController.teste.longitude!)
        let newCapital = CapitalPlaces(title: ViewController.teste.title!, coordinate: coordinate)
        arrayOfPlaces.append(newCapital)
    }
    
    @objc func forceFocus(gesture: UIGestureRecognizer){
        self.setNeedsFocusUpdate()
    }
}
