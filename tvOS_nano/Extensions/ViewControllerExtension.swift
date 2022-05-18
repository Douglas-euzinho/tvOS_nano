//
//  ViewControllerExtension.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 12/05/22.
//

import UIKit

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfPlaces.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = placesCollectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CellClass
        cell.nameTextCell.text = arrayOfPlaces[indexPath.row].title
        cell.backgroundColor = UIColor.darkGray
        
        for view in cell.subviews{
            view.removeFromSuperview()
        }
        
        
        
//        let arrayCell = arrayOfPlaces[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selecionou o: \(indexPath.item)")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 287.0, height: 277.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didUpdateFocusIn context: UICollectionViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if let pindex  = context.previouslyFocusedIndexPath, let cell = collectionView.cellForItem(at: pindex) {
               cell.contentView.layer.borderWidth = 0.0
               cell.contentView.layer.shadowRadius = 0.0
               cell.contentView.layer.shadowOpacity = 0.0
           }

           if let index  = context.nextFocusedIndexPath, let cell = collectionView.cellForItem(at: index) {
               cell.contentView.layer.borderWidth = 6.0
               cell.contentView.layer.borderColor = UIColor.white.cgColor
               cell.contentView.layer.shadowColor = UIColor.white.cgColor
               cell.contentView.layer.shadowRadius = 3.0
               cell.contentView.layer.shadowOpacity = 0.5
               cell.contentView.layer.shadowOffset = CGSize(width: 0, height: 0)
               collectionView.scrollToItem(at: index, at: [.centeredHorizontally, .centeredVertically], animated: true)
           }
    }
}
