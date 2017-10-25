/******************************************************************/
/*   It is required to use Array.prototype methods                */
/*   when iterating over a stamp collections's array of stamps.   */
/******************************************************************/
var StampCollection = function(stamps) {
  this.stamps = stamps;
};

StampCollection.prototype.stampNamed = function(stampName) {
  function findStamp(stamp) {
    return stamp.name === stampName;
  }
  return this.stamps.find(findStamp);
};


StampCollection.prototype.stampsIssued = function(stampDate) {
  return this.stamps.filter(function(stamp) {
    return stamp.issueDate === stampDate;
  });
};

StampCollection.prototype.value = function() {
  var allValues = [];
  this.stamps.forEach(function(stamp) {
    allValues.push(stamp.maximumAppraisal());
  });
  return allValues.reduce(function(totalValue, value) {
    return totalValue + value;
  });
};

// why this no work???
// Expected '[object Object]400500' to equal 1100.
// Why is totalValue a string???
// return this.stamps.reduce(function(totalValue, stamp) {
//   return totalValue + stamp.maximumAppraisal();
// })
