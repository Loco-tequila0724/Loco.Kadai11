import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var prefectureLabel: UILabel!

    @IBAction private func showSelectionViewButton(_ sender: Any) {
        guard let navigationController = storyboard?.instantiateViewController(identifier: "SelectionViewController") as? UINavigationController, let selectionViewController = navigationController.topViewController as? SelectionViewController else { return }

        selectionViewController.delegate = self
        present(navigationController, animated: true, completion: nil)
    }

    @IBAction private func exit(segue: UIStoryboardSegue) { }
}

extension ViewController: SelectionViewControllerDelegate {
    func didSelectPrefecture(prefectureName: String) {
        prefectureLabel.text = prefectureName
    }
}
