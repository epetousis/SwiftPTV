//
//  AllRoutesForTypeViewController.swift
//  SwiftPTVExampleiOS
//
//  Created by Evan Petousis on 6/11/17.
//

import UIKit
import SwiftPTV

class AllRoutesForTypeViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView?
    @IBOutlet var routeTypeField: UITextField?

    var communicator: SwiftPTV
    var routes: [Route]
    
    required init?(coder aDecoder: NSCoder) {
        communicator = SwiftPTV(apiKey: APIDetails.apiKey, userID: APIDetails.userID)
        routes = [Route]()
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleRefresh(sender: UIButton?) {
        let routeTypeText = self.routeTypeField?.text ?? "0"
        communicator.retrieveRouteTypes(parameters: nil) { _ in
            guard let routeType = Int(routeTypeText) else {
                    return
            }
            self.communicator.retrieveRoutes(parameters: ["route_types" : [routeType]]) { routesResponse in
                if let routesResponse = routesResponse,
                    let routes = routesResponse.routes {
                    self.routes = routes
                    
                    DispatchQueue.main.async {
                        self.tableView?.reloadData()
                    }
                }
            }
        }
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return routes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "routeCell", for: indexPath)
        let route = routes[indexPath.row]
        
        cell.textLabel?.text = route.name ?? ""
        cell.detailTextLabel?.text = "\(route.number ?? "") - \(route.ID ?? 0)"
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
