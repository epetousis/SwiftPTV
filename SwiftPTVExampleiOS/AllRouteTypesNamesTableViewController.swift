//
//  AllRouteTypesNamesTableViewController.swift
//  SwiftPTVExampleiOS
//
//  Created by evilgoldfish on 6/11/17.
//

import UIKit
import SwiftPTV

class AllRouteTypesNamesTableViewController: UITableViewController {
    
    var communicator: SwiftPTV
    var routeTypes: [RouteType]
    
    required init?(coder aDecoder: NSCoder) {
        communicator = SwiftPTV(apiKey: APIDetails.apiKey, userID: APIDetails.userID)
        routeTypes = [RouteType]()
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.refreshControl?.beginRefreshing()
        handleRefresh(sender: refreshControl)
    }
    
    @IBAction func handleRefresh(sender: UIRefreshControl?) {
        communicator.retrieveRouteTypes(parameters: nil) { routeTypesResponse in
            DispatchQueue.main.async {
                sender?.endRefreshing()
            }
            if let routeTypesResponse = routeTypesResponse,
                let routeTypes = routeTypesResponse.routeTypes {
                self.routeTypes = routeTypes

                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return routeTypes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "routeTypeCell", for: indexPath)
        let routeType = routeTypes[indexPath.row]

        cell.textLabel?.text = routeType.name ?? ""
        cell.detailTextLabel?.text = String(describing: routeType.type ?? 0)

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
