githubUserSearch.controller('GitUserSearchController', ['Search', function (Search) {

  var self = this;
  var github_access_token = "<%= @github_access_token %>";
  self.doSearch = function() {
    Search.query(self.searchTerm)
      .then(function(response) {
        self.searchResult = response.data;
      })
  };

}]);
