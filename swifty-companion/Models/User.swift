//
//  User.swift
//  swifty-companion
//
//  Created by Mpho KGOSISEJO on 2018/10/16.
//  Copyright © 2018 Mpho KGOSISEJO. All rights reserved.
//

import Foundation

struct User: Decodable {
    let id: Int?
    let email: String?
    let login: String?
    let first_name: String?
    let last_name: String?
    let url: URL?
    let phone: String?
    let displayname: String?
    let image_url: URL?
    let staff: Bool?
    let correction_point: Int?
    let pool_month: String?
    let pool_year: String?
    let location: String?
    let wallet: Int?
    
    let cursus_users: [CursusUsers]?
    let projects_users: [ProjectsUsers]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case email
        case login
        case first_name
        case last_name
        case url
        case phone
        case displayname
        case image_url
        case staff = "staff?"
        case correction_point
        case pool_month
        case pool_year
        case location
        case wallet
        case cursus_users
        case projects_users
    }
}

struct CursusUsers: Decodable {
    let grade: String?
    let level: Double?
    let skills: [Skills]?
}

struct Skills: Decodable {
    let id: Int?
    let name: String?
    let level: Double?
}

struct ProjectsUsers: Decodable {
    let id: Int?
    let occurrence: Int?
    let final_mark: Int?
    let status: String?
    let validated: Bool?
    let current_team_id: Int?
    let project: Project
//    let marked_at: Date?
    let marked: Bool?
    
    enum CodingKeys: String, CodingKey {
        case id
        case occurrence
        case final_mark
        case status
        case validated = "validated?"
        case current_team_id
        case project
        //    case marked_at: Date?
        case marked
    }
}

struct Project: Decodable {
    let id: Int?
    let name: String?
    let slug: String?
    let parent_id: Int?
}

/*
 {
 "id": 24842,
 "email": "mkgosise@student.wethinkcode.co.za",
 "login": "mkgosise",
 "first_name": "Mpho",
 "last_name": "Kgosisejo",
 "url": "https://api.intra.42.fr/v2/users/mkgosise",
 "phone": null,
 "displayname": "Mpho Kgosisejo",
 "image_url": "https://cdn.intra.42.fr/users/mkgosise.jpg",
 "staff?": false,
 "correction_point": 3,
 "pool_month": "april",
 "pool_year": "2017",
 "location": null,
 "wallet": 0,
 "groups": [],
 "cursus_users": [
 {
 "grade": null,
 "level": 10.38,
 "skills": [
 {
 "id": 2,
 "name": "Imperative programming",
 "level": 6.57
 },
 {
 "id": 4,
 "name": "Unix",
 "level": 6.31
 },
 {
 "id": 17,
 "name": "Object-oriented programming",
 "level": 5.84
 },
 {
 "id": 3,
 "name": "Rigor",
 "level": 5.62
 },
 {
 "id": 14,
 "name": "Adaptation & creativity",
 "level": 4.5
 },
 {
 "id": 6,
 "name": "Web",
 "level": 4.27
 },
 {
 "id": 1,
 "name": "Algorithms & AI",
 "level": 3.24
 },
 {
 "id": 7,
 "name": "Group & interpersonal",
 "level": 2.34
 },
 {
 "id": 12,
 "name": "DB & Data",
 "level": 2.32
 },
 {
 "id": 15,
 "name": "Technology integration",
 "level": 1.99
 },
 {
 "id": 13,
 "name": "Organization",
 "level": 1.6400000000000001
 },
 {
 "id": 11,
 "name": "Security",
 "level": 1.1
 },
 {
 "id": 9,
 "name": "Parallel computing",
 "level": 0.9
 }
 ],
 "id": 19579,
 "begin_at": "2017-05-29T08:42:00.000Z",
 "end_at": null,
 "cursus_id": 8,
 "has_coalition": true,
 "user": {
 "id": 24842,
 "login": "mkgosise",
 "url": "https://api.intra.42.fr/v2/users/mkgosise"
 },
 "cursus": {
 "id": 8,
 "created_at": "2015-09-22T11:35:20.216Z",
 "name": "WeThinkCode_",
 "slug": "wethinkcode_"
 }
 },
 {
 "grade": null,
 "level": 0.36,
 "skills": [
 {
 "id": 3,
 "name": "Rigor",
 "level": 0.45
 },
 {
 "id": 1,
 "name": "Algorithms & AI",
 "level": 0.31
 },
 {
 "id": 4,
 "name": "Unix",
 "level": 0.31
 }
 ],
 "id": 19009,
 "begin_at": "2017-04-17T06:42:00.000Z",
 "end_at": "2017-05-13T18:42:00.000Z",
 "cursus_id": 11,
 "has_coalition": true,
 "user": {
 "id": 24842,
 "login": "mkgosise",
 "url": "https://api.intra.42.fr/v2/users/mkgosise"
 },
 "cursus": {
 "id": 11,
 "created_at": "2015-12-08T11:59:17.803Z",
 "name": "BootCamp",
 "slug": "bootcamp"
 }
 }
 ],
 "projects_users": [
 {
 "id": 506503,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1558885,
 "project": {
 "id": 637,
 "name": "03",
 "slug": "day-09-03",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:21.713Z",
 "marked": true
 },
 {
 "id": 507249,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559811,
 "project": {
 "id": 654,
 "name": "20",
 "slug": "day-09-20",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:18.354Z",
 "marked": true
 },
 {
 "id": 505809,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1557945,
 "project": {
 "id": 634,
 "name": "00",
 "slug": "bootcamp-day-09-00",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:22.201Z",
 "marked": true
 },
 {
 "id": 506500,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1558882,
 "project": {
 "id": 636,
 "name": "02",
 "slug": "day-09-02",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:21.939Z",
 "marked": true
 },
 {
 "id": 506504,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1558886,
 "project": {
 "id": 638,
 "name": "04",
 "slug": "day-09-04",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:21.500Z",
 "marked": true
 },
 {
 "id": 505977,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1558163,
 "project": {
 "id": 635,
 "name": "01",
 "slug": "bootcamp-day-09-01",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:22.077Z",
 "marked": true
 },
 {
 "id": 506512,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1558894,
 "project": {
 "id": 641,
 "name": "07",
 "slug": "day-09-07",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:20.686Z",
 "marked": true
 },
 {
 "id": 506506,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1558888,
 "project": {
 "id": 639,
 "name": "05",
 "slug": "day-09-05",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:21.259Z",
 "marked": true
 },
 {
 "id": 506855,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559337,
 "project": {
 "id": 644,
 "name": "10",
 "slug": "day-09-10",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:20.474Z",
 "marked": true
 },
 {
 "id": 507253,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559815,
 "project": {
 "id": 657,
 "name": "22",
 "slug": "day-09-22",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:17.987Z",
 "marked": true
 },
 {
 "id": 507186,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559747,
 "project": {
 "id": 650,
 "name": "16",
 "slug": "day-09-16",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:19.170Z",
 "marked": true
 },
 {
 "id": 507236,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559798,
 "project": {
 "id": 653,
 "name": "19",
 "slug": "day-09-19",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:18.582Z",
 "marked": true
 },
 {
 "id": 507055,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559567,
 "project": {
 "id": 647,
 "name": "13",
 "slug": "day-09-13",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:19.741Z",
 "marked": true
 },
 {
 "id": 507233,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559795,
 "project": {
 "id": 651,
 "name": "17",
 "slug": "day-09-17",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:18.970Z",
 "marked": true
 },
 {
 "id": 506856,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559338,
 "project": {
 "id": 645,
 "name": "11",
 "slug": "day-09-11",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:20.217Z",
 "marked": true
 },
 {
 "id": 507056,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559568,
 "project": {
 "id": 648,
 "name": "14",
 "slug": "day-09-14",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:19.560Z",
 "marked": true
 },
 {
 "id": 507235,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559797,
 "project": {
 "id": 652,
 "name": "18",
 "slug": "day-09-18",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:18.765Z",
 "marked": true
 },
 {
 "id": 507259,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559821,
 "project": {
 "id": 658,
 "name": "23",
 "slug": "day-09-23",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:17.796Z",
 "marked": true
 },
 {
 "id": 506854,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559336,
 "project": {
 "id": 643,
 "name": "09",
 "slug": "day-09-09",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:20.577Z",
 "marked": true
 },
 {
 "id": 506509,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1558891,
 "project": {
 "id": 640,
 "name": "06",
 "slug": "day-09-06",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:21.050Z",
 "marked": true
 },
 {
 "id": 507057,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559569,
 "project": {
 "id": 649,
 "name": "15",
 "slug": "day-09-15",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:19.378Z",
 "marked": true
 },
 {
 "id": 506858,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559341,
 "project": {
 "id": 646,
 "name": "12",
 "slug": "day-09-12",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:19.973Z",
 "marked": true
 },
 {
 "id": 506511,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1558893,
 "project": {
 "id": 642,
 "name": "08",
 "slug": "day-09-08",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:20.839Z",
 "marked": true
 },
 {
 "id": 507250,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1559812,
 "project": {
 "id": 655,
 "name": "21",
 "slug": "day-09-21",
 "parent_id": 633
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-09-01T15:38:18.162Z",
 "marked": true
 },
 {
 "id": 505290,
 "occurrence": 0,
 "final_mark": 16,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1557275,
 "project": {
 "id": 680,
 "name": "Joburg-Exam-01",
 "slug": "bootcamp-joburg-exam-01",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-05-05T17:00:30.542Z",
 "marked": true
 },
 {
 "id": 505689,
 "occurrence": 0,
 "final_mark": 21,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1557798,
 "project": {
 "id": 633,
 "name": "Day 09",
 "slug": "bootcamp-day-09",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-05-07T17:35:12.620Z",
 "marked": true
 },
 {
 "id": 505690,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1564572,
 "project": {
 "id": 629,
 "name": "Colle 02",
 "slug": "bootcamp-colle-02",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T16:13:42.246Z",
 "marked": true
 },
 {
 "id": 510340,
 "occurrence": 0,
 "final_mark": 13,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1565128,
 "project": {
 "id": 626,
 "name": "Day 10",
 "slug": "bootcamp-day-10",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T16:05:11.236Z",
 "marked": true
 },
 {
 "id": 510733,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1565672,
 "project": {
 "id": 627,
 "name": "Day 12",
 "slug": "bootcamp-day-12",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T16:09:30.113Z",
 "marked": true
 },
 {
 "id": 510399,
 "occurrence": 0,
 "final_mark": 43,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1565203,
 "project": {
 "id": 698,
 "name": "Joburg-Exam-02",
 "slug": "bootcamp-joburg-exam-02",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-05-09T10:00:29.629Z",
 "marked": true
 },
 {
 "id": 510734,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1565673,
 "project": {
 "id": 628,
 "name": "Day 13",
 "slug": "bootcamp-day-13",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T16:11:40.411Z",
 "marked": true
 },
 {
 "id": 510341,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1565129,
 "project": {
 "id": 625,
 "name": "Day 11",
 "slug": "bootcamp-day-11",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T16:08:04.544Z",
 "marked": true
 },
 {
 "id": 511395,
 "occurrence": 0,
 "final_mark": 22,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1566750,
 "project": {
 "id": 681,
 "name": "Joburg-Final-Exam",
 "slug": "bootcamp-joburg-final-exam",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-05-13T14:00:17.791Z",
 "marked": true
 },
 {
 "id": 511571,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1568754,
 "project": {
 "id": 631,
 "name": "BSQ",
 "slug": "bootcamp-bsq",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-05-20T16:42:20.804Z",
 "marked": true
 },
 {
 "id": 514736,
 "occurrence": 1,
 "final_mark": 100,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1626865,
 "project": {
 "id": 1,
 "name": "Libft",
 "slug": "libft",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-13T11:20:55.348Z",
 "marked": true
 },
 {
 "id": 518976,
 "occurrence": 1,
 "final_mark": 11,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1626862,
 "project": {
 "id": 5,
 "name": "ft_printf",
 "slug": "ft_printf",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-07-08T09:53:13.041Z",
 "marked": true
 },
 {
 "id": 524566,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1581991,
 "project": {
 "id": 26,
 "name": "Filler",
 "slug": "filler",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-07-16T16:48:55.744Z",
 "marked": true
 },
 {
 "id": 524567,
 "occurrence": 1,
 "final_mark": 95,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1729157,
 "project": {
 "id": 3,
 "name": "ft_ls",
 "slug": "ft_ls",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-09-06T14:34:03.418Z",
 "marked": true
 },
 {
 "id": 698563,
 "occurrence": 0,
 "final_mark": 92,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1788783,
 "project": {
 "id": 49,
 "name": "Day 00",
 "slug": "42-piscine-c-formation-piscine-php-day-00",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-05T04:25:37.836Z",
 "marked": true
 },
 {
 "id": 698561,
 "occurrence": 0,
 "final_mark": 13,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1788781,
 "project": {
 "id": 48,
 "name": "Piscine PHP",
 "slug": "piscine-php",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-18T16:44:02.558Z",
 "marked": true
 },
 {
 "id": 703201,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1793746,
 "project": {
 "id": 51,
 "name": "Day 02",
 "slug": "42-piscine-c-formation-piscine-php-day-02",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-08T16:49:38.891Z",
 "marked": true
 },
 {
 "id": 703202,
 "occurrence": 0,
 "final_mark": 75,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1793747,
 "project": {
 "id": 52,
 "name": "Day 03",
 "slug": "42-piscine-c-formation-piscine-php-day-03",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-09T14:05:12.086Z",
 "marked": true
 },
 {
 "id": 703200,
 "occurrence": 0,
 "final_mark": 1,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1793745,
 "project": {
 "id": 50,
 "name": "Day 01",
 "slug": "42-piscine-c-formation-piscine-php-day-01",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-09T14:09:00.106Z",
 "marked": true
 },
 {
 "id": 706467,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1796583,
 "project": {
 "id": 53,
 "name": "Day 04",
 "slug": "42-piscine-c-formation-piscine-php-day-04",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-12T16:44:35.453Z",
 "marked": true
 },
 {
 "id": 706468,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1797304,
 "project": {
 "id": 59,
 "name": "Rush00",
 "slug": "piscine-php-rush00",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-11T16:43:02.656Z",
 "marked": true
 },
 {
 "id": 707230,
 "occurrence": 0,
 "final_mark": 10,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1797251,
 "project": {
 "id": 54,
 "name": "Day 05",
 "slug": "42-piscine-c-formation-piscine-php-day-05",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-16T13:07:58.051Z",
 "marked": true
 },
 {
 "id": 710141,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1800835,
 "project": {
 "id": 56,
 "name": "Day 07",
 "slug": "42-piscine-c-formation-piscine-php-day-07",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-15T16:49:02.040Z",
 "marked": true
 },
 {
 "id": 710144,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1800838,
 "project": {
 "id": 58,
 "name": "Day 09",
 "slug": "42-piscine-c-formation-piscine-php-day-09",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-18T16:44:02.653Z",
 "marked": true
 },
 {
 "id": 710142,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1800836,
 "project": {
 "id": 57,
 "name": "Day 08",
 "slug": "42-piscine-c-formation-piscine-php-day-08",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-16T16:44:05.718Z",
 "marked": true
 },
 {
 "id": 717542,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1808241,
 "project": {
 "id": 55,
 "name": "Day 06",
 "slug": "42-piscine-c-formation-piscine-php-day-06",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-18T16:56:53.989Z",
 "marked": true
 },
 {
 "id": 717544,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1808243,
 "project": {
 "id": 60,
 "name": "Rush01",
 "slug": "piscine-php-rush01",
 "parent_id": 48
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-18T16:56:56.673Z",
 "marked": true
 },
 {
 "id": 575604,
 "occurrence": 1,
 "final_mark": 114,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1776125,
 "project": {
 "id": 33,
 "name": "ft_select",
 "slug": "ft_select",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-09-21T09:40:00.971Z",
 "marked": true
 },
 {
 "id": 591592,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1664197,
 "project": {
 "id": 523,
 "name": "21sh",
 "slug": "21sh",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-09-03T16:45:06.713Z",
 "marked": true
 },
 {
 "id": 591593,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1665845,
 "project": {
 "id": 22,
 "name": "Corewar",
 "slug": "corewar",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-10-08T16:49:16.749Z",
 "marked": true
 },
 {
 "id": 719268,
 "occurrence": 0,
 "final_mark": 109,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1809933,
 "project": {
 "id": 537,
 "name": "Camagru",
 "slug": "camagru",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-11-07T16:55:06.639Z",
 "marked": true
 },
 {
 "id": 633315,
 "occurrence": 3,
 "final_mark": 86,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1875722,
 "project": {
 "id": 35,
 "name": "42sh",
 "slug": "42sh",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-01-22T11:41:48.087Z",
 "marked": true
 },
 {
 "id": 777404,
 "occurrence": 1,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1991901,
 "project": {
 "id": 961,
 "name": "Joburg-First-Internship",
 "slug": "wethinkcode_-joburg-first-internship",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-17T16:57:25.284Z",
 "marked": true
 },
 {
 "id": 515511,
 "occurrence": 0,
 "final_mark": null,
 "status": "parent",
 "validated?": null,
 "current_team_id": null,
 "project": {
 "id": 61,
 "name": "Rushes",
 "slug": "rushes",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 863304,
 "occurrence": 1,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1991902,
 "project": {
 "id": 966,
 "name": "Peer Video",
 "slug": "wethinkcode_-joburg-first-internship-peer-video",
 "parent_id": 961
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-17T16:57:24.144Z",
 "marked": true
 },
 {
 "id": 866257,
 "occurrence": 0,
 "final_mark": 47,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1988405,
 "project": {
 "id": 65,
 "name": "Day 02",
 "slug": "42-piscine-c-formation-piscine-cpp-day-02",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-12T14:12:37.124Z",
 "marked": true
 },
 {
 "id": 866258,
 "occurrence": 0,
 "final_mark": 75,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1988406,
 "project": {
 "id": 66,
 "name": "Day 03",
 "slug": "42-piscine-c-formation-piscine-cpp-day-03",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-13T12:55:47.085Z",
 "marked": true
 },
 {
 "id": 866251,
 "occurrence": 0,
 "final_mark": 29,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1988399,
 "project": {
 "id": 62,
 "name": "Piscine CPP",
 "slug": "piscine-cpp",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-21T07:51:08.971Z",
 "marked": true
 },
 {
 "id": 866255,
 "occurrence": 0,
 "final_mark": 50,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1988403,
 "project": {
 "id": 64,
 "name": "Day 01",
 "slug": "42-piscine-c-formation-piscine-cpp-day-01",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-09T06:52:06.821Z",
 "marked": true
 },
 {
 "id": 866254,
 "occurrence": 0,
 "final_mark": 65,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1988402,
 "project": {
 "id": 63,
 "name": "Day 00",
 "slug": "42-piscine-c-formation-piscine-cpp-day-00",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-08T08:02:54.237Z",
 "marked": true
 },
 {
 "id": 866620,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1988791,
 "project": {
 "id": 67,
 "name": "Day 04",
 "slug": "42-piscine-c-formation-piscine-cpp-day-04",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-17T16:43:15.695Z",
 "marked": true
 },
 {
 "id": 867191,
 "occurrence": 0,
 "final_mark": 73,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1990350,
 "project": {
 "id": 69,
 "name": "Rush00",
 "slug": "piscine-cpp-rush00",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-13T14:24:10.601Z",
 "marked": true
 },
 {
 "id": 867960,
 "occurrence": 0,
 "final_mark": 40,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1990211,
 "project": {
 "id": 70,
 "name": "Day 05",
 "slug": "42-piscine-c-formation-piscine-cpp-day-05",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-15T09:04:33.259Z",
 "marked": true
 },
 {
 "id": 868125,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1990455,
 "project": {
 "id": 71,
 "name": "Day 06",
 "slug": "42-piscine-c-formation-piscine-cpp-day-06",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-20T16:42:20.276Z",
 "marked": true
 },
 {
 "id": 869059,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1991512,
 "project": {
 "id": 73,
 "name": "Day 08",
 "slug": "42-piscine-c-formation-piscine-cpp-day-08",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-22T16:44:01.325Z",
 "marked": true
 },
 {
 "id": 869062,
 "occurrence": 0,
 "final_mark": 100,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1991515,
 "project": {
 "id": 72,
 "name": "Day 07",
 "slug": "42-piscine-c-formation-piscine-cpp-day-07",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-16T12:20:38.759Z",
 "marked": true
 },
 {
 "id": 871956,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1995871,
 "project": {
 "id": 76,
 "name": "Rush01",
 "slug": "piscine-cpp-rush01",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-24T17:23:58.364Z",
 "marked": true
 },
 {
 "id": 871954,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1995869,
 "project": {
 "id": 68,
 "name": "Exam00",
 "slug": "piscine-cpp-exam00",
 "parent_id": 62
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-17T17:22:59.783Z",
 "marked": true
 },
 {
 "id": 871955,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1995870,
 "project": {
 "id": 75,
 "name": "Exam01",
 "slug": "piscine-cpp-exam01",
 "parent_id": 62
 },
 "cursus_ids": [],
 "marked_at": "2018-06-17T17:23:01.696Z",
 "marked": true
 },
 {
 "id": 875796,
 "occurrence": 0,
 "final_mark": 100,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1999743,
 "project": {
 "id": 870,
 "name": "avaj-launcher",
 "slug": "avaj-launcher",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-06-25T14:15:32.622Z",
 "marked": true
 },
 {
 "id": 865029,
 "occurrence": 1,
 "final_mark": null,
 "status": "finished",
 "validated?": null,
 "current_team_id": 1994895,
 "project": {
 "id": 965,
 "name": "Company final evaluation",
 "slug": "wethinkcode_-joburg-first-internship-company-final-evaluation",
 "parent_id": 961
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 865028,
 "occurrence": 1,
 "final_mark": null,
 "status": "finished",
 "validated?": null,
 "current_team_id": 1994893,
 "project": {
 "id": 964,
 "name": "Company mid evaluation",
 "slug": "wethinkcode_-joburg-first-internship-company-mid-evaluation",
 "parent_id": 961
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 865027,
 "occurrence": 1,
 "final_mark": null,
 "status": "finished",
 "validated?": null,
 "current_team_id": 1994892,
 "project": {
 "id": 963,
 "name": "Duration",
 "slug": "wethinkcode_-joburg-first-internship-duration",
 "parent_id": 961
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 865026,
 "occurrence": 1,
 "final_mark": null,
 "status": "finished",
 "validated?": null,
 "current_team_id": 1994891,
 "project": {
 "id": 962,
 "name": "Contract Upload",
 "slug": "wethinkcode_-joburg-first-internship-contract-upload",
 "parent_id": 961
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 501250,
 "occurrence": 0,
 "final_mark": 5,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1550957,
 "project": {
 "id": 672,
 "name": "Day 03",
 "slug": "bootcamp-day-03",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T15:21:43.155Z",
 "marked": true
 },
 {
 "id": 501648,
 "occurrence": 1,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1555428,
 "project": {
 "id": 669,
 "name": "Joburg-Exam-00",
 "slug": "bootcamp-joburg-exam-00",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-04-28T13:39:58.106Z",
 "marked": true
 },
 {
 "id": 521288,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1577787,
 "project": {
 "id": 4,
 "name": "FdF",
 "slug": "fdf",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-07-09T16:43:48.427Z",
 "marked": true
 },
 {
 "id": 539496,
 "occurrence": 2,
 "final_mark": 100,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1730737,
 "project": {
 "id": 7,
 "name": "minishell",
 "slug": "minishell",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-09-07T12:17:59.392Z",
 "marked": true
 },
 {
 "id": 539498,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1599843,
 "project": {
 "id": 27,
 "name": "Push_swap",
 "slug": "push_swap",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-07-30T16:47:03.697Z",
 "marked": true
 },
 {
 "id": 540603,
 "occurrence": 7,
 "final_mark": 90,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1710121,
 "project": {
 "id": 11,
 "name": "C Exam Alone In The Dark - Beginner",
 "slug": "c-exam-alone-in-the-dark-beginner",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2017-08-30T07:34:49.411Z",
 "marked": true
 },
 {
 "id": 502670,
 "occurrence": 0,
 "final_mark": 5,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1552600,
 "project": {
 "id": 616,
 "name": "Day 04",
 "slug": "bootcamp-day-04",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T15:23:06.729Z",
 "marked": true
 },
 {
 "id": 502672,
 "occurrence": 0,
 "final_mark": 5,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1552602,
 "project": {
 "id": 617,
 "name": "Day 05",
 "slug": "bootcamp-day-05",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-11-20T05:17:45.023Z",
 "marked": true
 },
 {
 "id": 501864,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1552426,
 "project": {
 "id": 623,
 "name": "Colle 00",
 "slug": "bootcamp-colle-00",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T15:31:50.611Z",
 "marked": true
 },
 {
 "id": 501720,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1551491,
 "project": {
 "id": 611,
 "name": "Sastantua",
 "slug": "bootcamp-sastantua",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T15:24:41.098Z",
 "marked": true
 },
 {
 "id": 500209,
 "occurrence": 0,
 "final_mark": 5,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1549582,
 "project": {
 "id": 670,
 "name": "Day 00",
 "slug": "bootcamp-day-00",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T11:14:17.798Z",
 "marked": true
 },
 {
 "id": 500453,
 "occurrence": 1,
 "final_mark": 10,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1554330,
 "project": {
 "id": 606,
 "name": "Day 01",
 "slug": "bootcamp-day-01",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T15:14:39.498Z",
 "marked": true
 },
 {
 "id": 501239,
 "occurrence": 0,
 "final_mark": 11,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1550949,
 "project": {
 "id": 608,
 "name": "Day 02",
 "slug": "bootcamp-day-02",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T15:19:49.715Z",
 "marked": true
 },
 {
 "id": 746751,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1866044,
 "project": {
 "id": 597,
 "name": "Hypertube",
 "slug": "hypertube",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-01-21T16:46:16.008Z",
 "marked": true
 },
 {
 "id": 504346,
 "occurrence": 0,
 "final_mark": -42,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1555795,
 "project": {
 "id": 622,
 "name": "Match-N-Match",
 "slug": "bootcamp-match-n-match",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-10-19T15:39:02.698Z",
 "marked": true
 },
 {
 "id": 504500,
 "occurrence": 0,
 "final_mark": 20,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1556007,
 "project": {
 "id": 618,
 "name": "Day 06",
 "slug": "bootcamp-day-06",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-11-20T05:20:28.888Z",
 "marked": true
 },
 {
 "id": 504675,
 "occurrence": 0,
 "final_mark": 20,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1556265,
 "project": {
 "id": 621,
 "name": "Day 07",
 "slug": "bootcamp-day-07",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-11-20T05:21:27.516Z",
 "marked": true
 },
 {
 "id": 505688,
 "occurrence": 0,
 "final_mark": 13,
 "status": "finished",
 "validated?": false,
 "current_team_id": 1557797,
 "project": {
 "id": 620,
 "name": "Day 08",
 "slug": "bootcamp-day-08",
 "parent_id": null
 },
 "cursus_ids": [
 11
 ],
 "marked_at": "2017-11-20T05:36:10.723Z",
 "marked": true
 },
 {
 "id": 737383,
 "occurrence": 1,
 "final_mark": 102,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1863418,
 "project": {
 "id": 596,
 "name": "Matcha",
 "slug": "matcha",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-01-13T20:40:45.505Z",
 "marked": true
 },
 {
 "id": 518975,
 "occurrence": 3,
 "final_mark": 107,
 "status": "finished",
 "validated?": true,
 "current_team_id": 1876360,
 "project": {
 "id": 2,
 "name": "Get_Next_Line",
 "slug": "get_next_line",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-05-29T14:23:42.510Z",
 "marked": true
 },
 {
 "id": 921593,
 "occurrence": 0,
 "final_mark": 119,
 "status": "finished",
 "validated?": true,
 "current_team_id": 2051694,
 "project": {
 "id": 872,
 "name": "fix-me",
 "slug": "fix-me",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-08-21T15:21:11.503Z",
 "marked": true
 },
 {
 "id": 1113938,
 "occurrence": 0,
 "final_mark": null,
 "status": "finished",
 "validated?": null,
 "current_team_id": 2272631,
 "project": {
 "id": 743,
 "name": "Day 00",
 "slug": "piscine-swift-ios-day-00",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 1113939,
 "occurrence": 0,
 "final_mark": null,
 "status": "finished",
 "validated?": null,
 "current_team_id": 2272632,
 "project": {
 "id": 744,
 "name": "Day 01",
 "slug": "piscine-swift-ios-day-01",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 877746,
 "occurrence": 1,
 "final_mark": 103,
 "status": "finished",
 "validated?": true,
 "current_team_id": 2273145,
 "project": {
 "id": 871,
 "name": "swingy",
 "slug": "swingy",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-07-12T09:26:06.255Z",
 "marked": true
 },
 {
 "id": 1118690,
 "occurrence": 0,
 "final_mark": 32,
 "status": "finished",
 "validated?": false,
 "current_team_id": 2277784,
 "project": {
 "id": 748,
 "name": "Day 04",
 "slug": "piscine-swift-ios-day-04",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-10T09:42:22.263Z",
 "marked": true
 },
 {
 "id": 1118688,
 "occurrence": 0,
 "final_mark": null,
 "status": "finished",
 "validated?": null,
 "current_team_id": 2277782,
 "project": {
 "id": 747,
 "name": "Day 03",
 "slug": "piscine-swift-ios-day-03",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 1118724,
 "occurrence": 0,
 "final_mark": null,
 "status": "finished",
 "validated?": null,
 "current_team_id": 2277819,
 "project": {
 "id": 745,
 "name": "Day 02",
 "slug": "piscine-swift-ios-day-02",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 },
 {
 "id": 1125615,
 "occurrence": 0,
 "final_mark": 86,
 "status": "finished",
 "validated?": true,
 "current_team_id": 2285266,
 "project": {
 "id": 750,
 "name": "Day 05",
 "slug": "piscine-swift-ios-day-05",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-11T09:02:15.067Z",
 "marked": true
 },
 {
 "id": 1126675,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 2286581,
 "project": {
 "id": 751,
 "name": "Day 06",
 "slug": "piscine-swift-ios-day-06",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-13T07:28:28.101Z",
 "marked": true
 },
 {
 "id": 1126676,
 "occurrence": 0,
 "final_mark": 75,
 "status": "finished",
 "validated?": true,
 "current_team_id": 2286582,
 "project": {
 "id": 752,
 "name": "Day 07",
 "slug": "piscine-swift-ios-day-07",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-13T07:38:12.187Z",
 "marked": true
 },
 {
 "id": 1108802,
 "occurrence": 0,
 "final_mark": 102,
 "status": "finished",
 "validated?": true,
 "current_team_id": 2267362,
 "project": {
 "id": 742,
 "name": "Piscine Swift iOS",
 "slug": "piscine-swift-ios",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-16T10:10:42.928Z",
 "marked": true
 },
 {
 "id": 1123710,
 "occurrence": 0,
 "final_mark": 51,
 "status": "finished",
 "validated?": true,
 "current_team_id": 2284907,
 "project": {
 "id": 749,
 "name": "Rush00",
 "slug": "piscine-swift-ios-rush00",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-08T11:26:24.397Z",
 "marked": true
 },
 {
 "id": 1128238,
 "occurrence": 0,
 "final_mark": 70,
 "status": "finished",
 "validated?": true,
 "current_team_id": 2288380,
 "project": {
 "id": 753,
 "name": "Day 08",
 "slug": "piscine-swift-ios-day-08",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-14T12:08:47.066Z",
 "marked": true
 },
 {
 "id": 1129931,
 "occurrence": 0,
 "final_mark": 0,
 "status": "finished",
 "validated?": false,
 "current_team_id": 2290315,
 "project": {
 "id": 754,
 "name": "Day 09",
 "slug": "piscine-swift-ios-day-09",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-16T10:10:42.587Z",
 "marked": true
 },
 {
 "id": 1131351,
 "occurrence": 0,
 "final_mark": 98,
 "status": "finished",
 "validated?": true,
 "current_team_id": 2291572,
 "project": {
 "id": 755,
 "name": "Rush01",
 "slug": "piscine-swift-ios-rush01",
 "parent_id": 742
 },
 "cursus_ids": [
 8
 ],
 "marked_at": "2018-10-16T09:42:44.843Z",
 "marked": true
 },
 {
 "id": 1134892,
 "occurrence": 0,
 "final_mark": null,
 "status": "searching_a_group",
 "validated?": null,
 "current_team_id": null,
 "project": {
 "id": 536,
 "name": "Swifty Companion",
 "slug": "swifty-companion",
 "parent_id": null
 },
 "cursus_ids": [
 8
 ],
 "marked_at": null,
 "marked": false
 }
 ],
 "languages_users": [
 {
 "id": 41878,
 "language_id": 2,
 "user_id": 24842,
 "position": 1,
 "created_at": "2017-04-07T16:25:16.468Z"
 }
 ],
 "achievements": [],
 "titles": [],
 "titles_users": [],
 "partnerships": [],
 "patroned": [],
 "patroning": [],
 "expertises_users": [],
 "campus": [
 {
 "id": 5,
 "name": "Johannesburg",
 "time_zone": "Africa/Johannesburg",
 "language": {
 "id": 2,
 "name": "English",
 "identifier": "en",
 "created_at": "2015-04-14T16:07:38.122Z",
 "updated_at": "2018-10-13T06:54:02.165Z"
 },
 "users_count": 1752,
 "vogsphere_id": 1,
 "country": "South Africa",
 "address": "84 Albertina Sisulu Rd, Johannesburg",
 "zip": "2000",
 "city": "Johannesburg",
 "website": "https://www.wethinkcode.co.za/",
 "facebook": "https://www.facebook.com/wethinkcode/",
 "twitter": "https://twitter.com/wethinkcode"
 }
 ],
 "campus_users": [
 {
 "id": 14791,
 "user_id": 24842,
 "campus_id": 5,
 "is_primary": true
 }
 ]
 }
*/
