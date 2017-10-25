# Part 2:  AJAX

## Summary
In Part 2 we'll take a functioning Sinatra application and enhance the user
experience by adding some AJAX calls.  The application is a blog-like application for poetry.  Users can author poems on the site and also applaud poems (i.e., like poems).  There is no authentication involved.


### Current Site:  Writing a New Poem
When writing a new poem on the current, AJAX-less site, the user visits the site root where a list of recent poems and a form are displayed.  The user fills out and submits the form.  If the new poem is successfully created, the user is directed to a new page where the new poem is shown. (see [animation][current-new-poem])


### Current Site:  Applauding a Poem
Applauding a poem on the current, AJAX-less site can be done either from the site root or from a page showing a specific poem.  On either page, where a poem is displayed, an "Applaud" button is also visible.  Clicking on the button increases the like count for the poem and directs the user to a page where the poem is shown.  (see [animation][current-like])


### Future Site
Our AJAX enhancements will make it so the user never leaves the homepage.  All requests will be AJAX requests, and we'll update the DOM based on the responses.  Specific details will be addressed in the releases.


## Releases
### Release 0: Update Writing a New Poem
![ajax new post][ajax-new-poem]  
*Figure 1*. Writing a new poem with AJAX.

Begin by updating how new poems are created.  When the form to create a new poem is submitted and the server response is received, (1) the page should be updated to show the new poem and (2) the form should be reset (see Figure 1).


### Release 1: Update Applauding a Poem
![ajax like][ajax-like]  
*Figure 2*.  Applauding a poem with AJAX.

Improve the experience of applauding a poem.  When a poem is displayed, a line of text below the title states how many readers have applauded the poem.  As seen in Figure 2, when clicking the button to applaud a poem, the page should be updated to reflect the new number of readers who have applauded the poem.  The page should not refresh or redirect.

*Note:*  This should work for posts that were added to the page after the initial page load, *without refreshing the page*.


### Release 2: Graceful Degradation
When we enhance a site with JavaScript, we want to preserve the functionality of our site for users without JavaScript.  So, if a user has disabled JavaScript, our site should retain its AJAX-less features.  [Use the Chrome Developer Tools to disable JavaScript][disable JS] (Version 51.0.2704.106 shown) and ensure that the site works without it.


## Conclusion
You have completed Part 2 of the assessment. If you haven't done so already, commit your changes and move on to Part 3.


[ajax-new-poem]: readme-assets/ajax-new-poem.gif
[ajax-like]: readme-assets/ajax-like.gif
[current-new-poem]: readme-assets/current-new-poem.gif
[current-like]: readme-assets/current-like.gif
[disable JS]: readme-assets/disable-javascript.gif

