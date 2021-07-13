import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var prefectureLabel: UILabel!

    @IBAction private func showSelectionViewButton(_ sender: Any) {
        guard let selectionViewController = storyboard?.instantiateViewController(identifier: "SelectionViewController") as? SelectionViewController else { return }

        let navigationController = UINavigationController(
            rootViewController: selectionViewController
        )

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
