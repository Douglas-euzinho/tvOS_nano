//
//  ViewController.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 12/05/22.
//

import UIKit
import MapKit
import CoreData

class ViewController: UIViewController{
    
    static var teste = Capital()

    var latitude: Double = 0
    var longitude: Double = 0
    
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudeTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var placesCollectionView: UICollectionView!
    let reuseIdentifier = "Cell"
    
    var placesFavorited: [NSManagedObject] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        arrayOfPlaces.append(contentsOf: [londres, oslo, paris, rome, washington])
        placesCollectionView.reloadData()
    }
    
    @IBAction func captureLatitude(_ sender: Any) {
        guard let latitude = sender as? UITextField else { return }
        self.latitudeTextField.text = latitude.text
        self.latitude = (latitude.text! as NSString).doubleValue
        ViewController.teste.latitude = self.latitude
    }
    
    @IBAction func captureLongitude(_ sender: Any) {
        guard let longitude = sender as? UITextField else { return }
        self.longitudeTextField.text = longitude.text
        self.longitude = (longitude.text! as NSString).doubleValue
        ViewController.teste.longitude = self.longitude
    }
    
    @IBAction func captureName(_ sender: Any) {
        guard let name = sender as? UITextField else { return }
        self.nameTextField.text = name.text
        ViewController.teste.title = nameTextField.text
    }
    
    @IBAction func searchButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Map", bundle: nil)
        let mapViewController = storyboard.instantiateViewController(withIdentifier: "MapViewController")
        show(mapViewController, sender: self)
    }
}





