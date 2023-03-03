//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by Abdüssamed Söğüt on 3.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var sehirler = [Sehir]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let adiyaman  = Sehir(isim: "Adıyaman", bolge: "Güneydoğu Anadolu", gorsel: UIImage(named: "adiyaman")!)
        let gaziantep  = Sehir(isim: "Gaziantep", bolge: "Güneydoğu Anadolu", gorsel: UIImage(named: "gaziantep")!)
        let kahramanmaras  = Sehir(isim: "Kahramanmaras", bolge: "Akdeniz", gorsel: UIImage(named: "kahramanmaras")!)
        let malatya  = Sehir(isim: "Malatya", bolge: "Doğu Anadolu", gorsel: UIImage(named: "malatya")!)
        let hatay  = Sehir(isim: "Hatay", bolge: "Akdeniz", gorsel: UIImage(named: "hatay")!)

        sehirler.append(adiyaman)
        sehirler.append(gaziantep)
        sehirler.append(kahramanmaras)
        sehirler.append(malatya)
        sehirler.append(hatay)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indeks = sender as? Int
        let gidilecekVC = segue.destination as! DetailsViewController
        gidilecekVC.sehir = sehirler[indeks!]
        
    }
    
}

extension ViewController:UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirler[indexPath.row].isim
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetailsVC", sender: indexPath.row)
    }
    
    
}
