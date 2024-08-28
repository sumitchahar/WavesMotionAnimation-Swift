//  ViewController.swift
//  CodeMigrations
//  Created by Sumit on 26/08/24.

 import UIKit

 class DetailsController: UIViewController {

     var viewModel = DetailsControllerViewModel()
     var identifiers:String = "DetailsControllerTVCell"
     
     @IBOutlet weak var table_view:UITableView! {
         didSet {
             let nib = UINib(nibName: identifiers, bundle: nil)
             table_view.register(nib, forCellReuseIdentifier: identifiers)
         }
     }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 }

extension DetailsController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.detailsControllerModel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifiers, for: indexPath) as! DetailsControllerTVCell
            cell.updateValue(viewModel.detailsControllerModel[indexPath.row])
            cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: 0)
            UIView.animate(withDuration: 4, delay: 0.05 * Double(indexPath.row), usingSpringWithDamping: 1.0, initialSpringVelocity: 0.1, options: .curveEaseIn, animations: {
                 cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: cell.contentView.frame.height)
         })
           return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
 }
