 var app=angular.module("searchApp",[]).controller("TableCtrl",function($scope)
                    {
            
             var products=[{ID:"1",NAME:"GUITER",BRAND:"ACOUSTIC GUITARS",DESCRIPTION:"xx",PRICE:"5000",CATEGORY:"yy"},
                           {ID:"2",NAME:"LIVE RECORDING",BRAND:"ACCOUSTIC LIVE RECORDING",DESCRIPTION:"xx",PRICE:"2000",CATEGORY:"yy"},
                           {ID:"3",NAME:"DRUM",BRAND:"CAJON",DESCRIPTION:"xx",PRICE:"5939",CATEGORY:"yy"}]; 
             $scope.prod=products;
                    });
