# Part 1: JavaScript Objects
## Summary
In Part 1 of the assessment, we're going to write JavaScript.  Specifically, we're going to define a pair of custom objects:  `Stamp` and `StampCollection`.  Each of these custom objects will have properties and behaviors specific to itself.  Tests have been written to guide you through the development of each object.


### Running Jasmine Tests
We'll run the tests in the browser by opening the file `SpecRunner.html`, which runs the tests and displays the results.  On the command line navigate to the `part-1` directory and then run
...

```
$ open SpecRunner.html
```

... which should open the HTML file in the default browser.  As you make changes to the JavaScript code, refresh the page to rerun the tests.


## Releases
### Release 0: Stamp
We'll start by building a stamp object.  The tests that describe stamps are in the file `spec/stamp_spec.js`.  Write your code in the file `stamp.js`.

It is required to use a `for` loop when iterating over the array of appraisal values in *Release 0*.


### Release 1: Stamp Collection
Once the tests for the custom stamp object pass, move on to the stamp collection object type.  The tests that describe a stamp collection are in the file `spec/stamp_collection_spec.js`.  Write your code in the file `stamp_collection.js`.

It is required to use `Array.prototype` methods when iterating over the array of stamps in *Release 1*.


## Conclusion

Once all the tests have passed, you have completed Part 1 of the assessment. If
you haven't done so already, commit your changes and move on to Part 2.