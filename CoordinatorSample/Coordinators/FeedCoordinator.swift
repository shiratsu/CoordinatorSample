//
//  FeedCoordinator.swift
//  CoordinatorSample
//
//  Created by Yoshikuni Kato on 3/19/17.
//  Copyright © 2017 Yoshikuni Kato. All rights reserved.
//

import UIKit

final class FeedCoordinator: NavigationCoordinator, DetailsPresentable {

    let navigationController: UINavigationController

    init(presenter: UINavigationController) {
        self.navigationController = presenter
        presenter.title = "Feed"
    }

    func start() {
        let feedViewController = StoryboardScene.FeedViewController.initialViewController()
        feedViewController.itemSelected = showItemDetail
        navigationController.pushViewController(feedViewController, animated: false)
    }
}
