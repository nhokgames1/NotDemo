var app = angular.module('plunker', []);

app.controller('MainCtrl', ['tempDataStorageService', function(tempDataStorageService) {
  
  var myCtrl = this;

	myCtrl.myCats = angular.copy(tempDataStorageService.cats);
	
	myCtrl.localStorage = tempDataStorageService;
	
	myCtrl.saveToLocalStorage = function () {
	  tempDataStorageService.cats = angular.copy(myCtrl.myCats);
	}

}]);


app.factory('tempDataStorageService', function() {
    // The service object
    var storage = this;
    
    storage.cats = [{name: "fluffy", color: "white" }, 
                {name: "luna", color: "black" }];
    
    // return the service object
    return storage;
});
