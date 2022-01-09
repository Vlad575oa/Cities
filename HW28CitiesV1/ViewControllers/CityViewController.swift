//
//  CityViewController.swift
//  HW28CitiesV1
//
//  Created by Johnny Boshechka on 1/7/22.
//

import UIKit

protocol TabBarViewControllerDelegate {
    func setNewValues(for categirys: [Categora])
}

class CityViewController: UIViewController {
    
    @IBOutlet weak var currentCityView: UIImageView!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var foundedDateLabel: UILabel!
    @IBOutlet weak var sightsTableView: UITableView!
    
   // var city: [City] = City.returnCityesArray()
    var city: City!
    var categirys: [Categora] = [.theatre, .sport, .architecture, .food, .park]
    var sortedPlace: [Place] = []
//    var delegate: SettingsViewControllerDelegate!
    
    //private var categirys: [Categora] = [.theatre, .sport, .architecture, .food, .park]
    override func viewDidLoad() {
        super.viewDidLoad()
        sightsTableView.rowHeight = 80
        getSortedPlace()
        setupCity()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //        delegate.setNewValues(for: categirys)
        //        print(self.categirys)
    
    }
    
    private func getSortedPlace() {
        for categiry in categirys {
            for place in city.places {
                if categiry == place.category {
                    sortedPlace.append(place)
                }
            }
        }
    }
    
    private func setupCity() {
        navigationItem.title = city.usersCity
        currentCityView.image = UIImage(named: city.usersCity)
        populationLabel.text = "Численность населения: \(String(city.population))"
        areaLabel.text = "Площадь города: \(String(city.area))"
        foundedDateLabel.text = "Основан в : \(String(city.foundedDate))"
    }
}
    extension CityViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // delegate.setNewValues(for: categirys)
            categirys.count
            // city.places.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)
            
            var content = cell.defaultContentConfiguration()
            
            content.text = sortedPlace[indexPath.row].name
            content.image = UIImage(named: sortedPlace[indexPath.row].name)
            content.imageProperties.cornerRadius = tableView.rowHeight / 2
            cell.contentConfiguration = content
            
            return cell
        }
        
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            
        }
        
        
    }
    
    //extension CityViewController: SettingsViewControllerDelegate {
    //    func setNewValues(for categirys: [Categora]) {
    //
    //        self.categirys = categirys
    //
    //    }
    //}
    //extension CityViewController: TabBarViewControllerDelegate {
    //    func setNewValues(for categirys: [Categora]) {
    //
    //        self.categirys = categirys
    //
    //    }
    //}
