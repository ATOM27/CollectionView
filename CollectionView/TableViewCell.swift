//
//  TableViewCell.swift
//  CollectionView
//
//  Created by Eugene Mekhedov on 10.10.17.
//  Copyright © 2017 Eugene Mekhedov. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet private weak var collectionView: UICollectionView!
    var collectionViewOffset: CGFloat{
        get{
            return collectionView.contentOffset.x
        }
        set{
            collectionView.contentOffset.x = newValue
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCollectionViewDataSourseDelegate<D:UICollectionViewDelegate & UICollectionViewDataSource>(dataSourseDelegate: D, forRow row: Int){
        collectionView.dataSource = dataSourseDelegate
        collectionView.delegate = dataSourseDelegate
        collectionView.tag = row
        collectionView.reloadData()
    }

}


