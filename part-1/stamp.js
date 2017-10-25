/****************************************************************/
/*   It is required to use a for loop                           */
/*   when iterating over a stamp's array of appraisal values.   */
/****************************************************************/
var Stamp = function(attrs) {
  this.name = attrs.name;
  this.issueDate = attrs.issueDate;
  this. appraisalValues = attrs.appraisalValues;
};

Stamp.prototype.averageAppraisal = function() {
  var total = 0;
  for (var i = 0; i < this.appraisalValues.length; i++) {
    total += this.appraisalValues[i];
  }
  return total / this.appraisalValues.length;
};

Stamp.prototype.maximumAppraisal = function() {
  var max = 0;
  for (var i = 0; i < this.appraisalValues.length; i++) {
    if ( this.appraisalValues[i] >= max) {
      max = this.appraisalValues[i];
    }
  }
  return max;
};
