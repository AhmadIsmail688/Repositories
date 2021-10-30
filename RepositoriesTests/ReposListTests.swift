//
//  ReposListTests.swift
//  RepositoriesTests
//
//  Created by Ahmad Ismail on 30/10/2021.
//

import XCTest
@testable import Repositories

class ReposListTests: XCTestCase {

    let reposService = MockReposService()
    var reposListViewModel: ReposListViewModel!
    
    func testGetReposServiceCalled() async {
        reposListViewModel = await ReposListViewModel(reposService: self.reposService)
        await reposListViewModel.getRepos()
        XCTAssertTrue(reposService.isGetReposCalled)
    }
    
    @MainActor func testSearchTextWithLessThanTwoCharacters() {
        reposListViewModel = ReposListViewModel(repos: [DummyRepo.defaultRepo])
        reposListViewModel.searchText = "a"
        XCTAssertTrue(reposListViewModel.searchResults.count == 1)
    }
    
    @MainActor func testSearchWithExistingCharacters() {
        reposListViewModel = ReposListViewModel(repos: [DummyRepo.defaultRepo])
        reposListViewModel.searchText = "mo"
        XCTAssertTrue(reposListViewModel.searchResults.count == 1)
    }
    
    @MainActor func testSearchWithNonExistingCharacters() {
        reposListViewModel = ReposListViewModel(repos: [DummyRepo.defaultRepo])
        reposListViewModel.searchText = "xy"
        XCTAssertTrue(reposListViewModel.searchResults.isEmpty)
    }


    
}
