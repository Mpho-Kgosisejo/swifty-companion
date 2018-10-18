//
//  DetailScreenViewController.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/15.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import UIKit

class DetailScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var _tblProjects: UITableView!
    @IBOutlet weak var _tblSkills: UITableView!
    public var _userData: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self._tblProjects.delegate = self

        self.title = "\(self._userData.login!)'s profile"
        
        if let profileContainer: ProfileContainerViewController = self.childViewControllers.last as? ProfileContainerViewController{
            profileContainer.setFullName(name: self._userData.displayname!)
            profileContainer.setEmail(email: self._userData.email!)
            profileContainer.setWallet(wallet: String(self._userData.wallet!))
            profileContainer.setCorrectionPoints(points: String(self._userData.correction_point!))
            profileContainer.setImage(imageUrl: self._userData.image_url!)
            profileContainer.setRole(isStaff: self._userData.staff ?? false)
            if let cu = self._userData.cursus_users?.first {
                profileContainer.setLevel(level: String(format: "%.2f", cu.level!))
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 2 {
            return (self._userData.projects_users?.count)!
        }
        else {
            return (self._userData.cursus_users?.first?.skills?.count)!
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index: Int = indexPath.row
        
        if tableView.tag == 2 {
            let cell = self._tblProjects.dequeueReusableCell(withIdentifier: "projectCell") as! ProjectViewCell
            let project = self._userData.projects_users![index]
        
            if project.validated == false {
                cell.validated(v: ProjectValidated.faild)
            }
            else if project.validated == true {
                cell.validated(v: ProjectValidated.validated)
            } else {
                cell.validated(v: ProjectValidated.none)
            }
        
            cell._lblName.text = project.project.name
            cell._lblTries.text = "T\(String(project.occurrence ?? 0))"
            cell._lblMarks.text = "\(String(project.final_mark ?? 0))%"
        
            return (cell)
        } else {
            let cell = self._tblSkills.dequeueReusableCell(withIdentifier: "skillCell") as! SkillTableViewCell
            let skill = self._userData.cursus_users?.first?.skills![index]
            
            cell.setProgressBar(level: (skill?.level)!)
            cell._lblName.text = skill?.name
            
            return (cell)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("DetailScreenViewController.prepare(...)")
    }

    
}
