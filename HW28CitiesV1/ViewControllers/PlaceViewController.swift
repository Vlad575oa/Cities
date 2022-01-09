//
//  PlaceViewController.swift
//  HW28CitiesV1
//
//  Created by user on 08.01.2022.
//

import UIKit

class PlaceViewController: UIViewController {

    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var discription: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLabel.image = UIImage(named: "Москва")
        nameLabel.text = "Театр Кино"
        rating.text = "рейтинг 10"
        category.text = "Категория Архитектура"
        city.text = "город Москва"
        street.text = "улица Московская 10"
        discription.text = "МоскваМосква"
    }

}
