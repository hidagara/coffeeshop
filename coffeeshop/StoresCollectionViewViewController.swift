//
//  StoresCollectionViewViewController.swift
//  coffeeshop
//
//  Created by Roman Guseynov on 19.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import UIKit

class StoresCollectionViewViewController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    collectionView.register(StoreCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
//    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.delegate = self
    collectionView.register(UINib(nibName: "StoreReusableViewCollectionReusableView", bundle: nil), forSupplementaryViewOfKind: "kind", withReuseIdentifier: "KindView")
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension StoresCollectionViewViewController: UICollectionViewDataSource {
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 20
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as UICollectionViewCell
    
    cell.backgroundColor = .red
    cell.layer.cornerRadius = 10.0
    return cell
}
}
extension StoresCollectionViewViewController: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    let view = collectionView.dequeueReusableSupplementaryView(ofKind: "kind", withReuseIdentifier: "KindView", for: indexPath)
    return view
  }
}
