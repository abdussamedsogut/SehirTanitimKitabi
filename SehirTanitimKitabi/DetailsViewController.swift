//
//  DetailsViewController.swift
//  SehirTanitimKitabi
//
//  Created by Abdüssamed Söğüt on 3.03.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    var sehir:Sehir?
    
    @IBOutlet weak var sehirBolgesiLabel: UILabel!
    @IBOutlet weak var sehirIsmiLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let s = sehir {
            sehirIsmiLabel.text = s.isim
            sehirBolgesiLabel.text = s.bolge
            imageView.image = s.gorsel
        }

    }
    

}
