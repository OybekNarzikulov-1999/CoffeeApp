//
//  RecommendedCoffeesTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 26/10/22.
//

import UIKit

class RecommendedCoffeesTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func initViews(){

        let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height))
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CoffeeCollectionViewCell.self, forCellWithReuseIdentifier: Constants.coffeeCollectionViewCell)
        self.contentView.addSubview(collectionView)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.coffeeCollectionViewCell, for: indexPath) as! CoffeeCollectionViewCell
        cell.initViews()
        return cell

    }
    
}
