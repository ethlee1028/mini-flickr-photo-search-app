# mini-flickr-photo-search-app

1. Project
You need to build a mini flickr photo search app. This app is just for demo. Your app is not required to be the same as UI or layout.

This project is expected to cost 2-3 hours. You will have 3 days to complete this project. Feel free to take more time to polish the app in terms of feature side (we are excited to see more interesting features you add) and architecture side (we expect the product level code, we are looking for a good architecture and design pattern even if it's a small app). 

Feel free to use any 3rd party libraries if you think it’s needed. This project must be written in Swift.

After you finish the project, please send it to this email - kai.chen@dime.trade
Questions? Feel free to send me an email.

2. Setup
Go to https://identity.flickr.com and either create a new Flickr account, or sign in with your existing account.
Once signed in successfully, go to Flickr API Explorer.
Find and click Call Method… at the bottom of the page.
This will generate a URL link at the very bottom of the page that looks like:
```
https://www.flickr.com/services/rest/?method=flickr.photos.search
&api_key=f0589d37afc0e29525f51ccb26932a06
&format=rest
&auth_token=72157717064637163-20d89cb35333d1eb
&api_sig=80ada3ca6dba49f7fcc9ced2743de537
```
Copy the API key from the URL. You can find this by looking for the number between &api_key= and the next & you see. In the above example, the API key is f0589d37afc0e29525f51ccb26932a06.
Note: The API key changes every day or so, so you’ll occasionally have to regenerate a new key. The app will let you know whenever the key is invalid.
We will replace the working api_key when we test your app.

3. Minimum Requirement
Search feature
Photo result page
Search result paging

4. Extra Bonus
Photo details page
Save the favorite photo
Search history
User login
Anything else you can think a good search app should have
