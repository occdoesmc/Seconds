import UIKit

class AnimalListViewController: UITableViewController {
    
    let animalList = AnimalList()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let animalIndex = tableView.indexPathForSelectedRow!.row
        let animal = animalList.animalsByTime[animalIndex]
        segue.destination.title = animal.name
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.animalsByTime.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let animal = animalList.animalsByTime[indexPath.row]
        let animalListCell = tableView.dequeueReusableCell(withIdentifier: AnimalListCell.preferredReuseIdentifier, for: indexPath) as! AnimalListCell
        animalListCell.nameLabel.text = animal.name
        animalListCell.timeMultiplierLabel.text = String(animal.timeMultiplier)
        return animalListCell
    }
    
}
