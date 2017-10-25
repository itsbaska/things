describe("a stamp collection", function() {
  var collection;
  var redStamp;
  var blueStamp;
  var greenStamp;

  beforeEach(function() {
    // Define stamp objects
    redStamp   = new Stamp({ name: "Red Stamp", issueDate: "1851", appraisalValues: [100, 200] });
    greenStamp = new Stamp({ name: "Green Stamp", issueDate: "1857", appraisalValues: [300, 400] });
    blueStamp  = new Stamp({ name: "Blue Stamp", issueDate: "1851", appraisalValues: [500, 500] });

    // Define the stamp collection object
    collection = new StampCollection([redStamp, greenStamp, blueStamp]);
  });

  it("has a collection of stamps", function() {
    expect(collection.stamps).toEqual([redStamp, greenStamp, blueStamp]);
  });

  it("returns a stamp with a given name", function() {
    expect(collection.stampNamed("Green Stamp")).toEqual(greenStamp);
  });

  it("returns all its stamps with a given issue date", function() {
    expect(collection.stampsIssued("1851")).toEqual([redStamp, blueStamp]);
  });

  it("has a value based on the maximum appraisal value of each stamp", function() {
    expect(collection.value()).toEqual(1100);
  });
});
