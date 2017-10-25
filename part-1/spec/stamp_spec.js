describe("a stamp", function() {
  var stamp;

  beforeEach(function() {
    stamp = new Stamp({ name: "Curtiss Jenny", issueDate: "1918", appraisalValues: [130, 140, 175, 155] });
  });

  it("has a name", function() {
    expect(stamp.name).toEqual("Curtiss Jenny");
  });

  it("has an issue date", function() {
    expect(stamp.issueDate).toEqual("1918");
  });

  it("has a collection of appraisal values", function() {
    expect(stamp.appraisalValues).toEqual([130, 140, 175, 155]);
  });

  it("has an average appraisal", function() {
    expect(stamp.averageAppraisal()).toEqual(150);
  });

  it("has a maximum appraisal", function() {
    expect(stamp.maximumAppraisal()).toEqual(175);
  });
});
