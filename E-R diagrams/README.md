In this section, I would design a database for a social media site like Facebook.		
		
<b> STEP BY STEP DESIGN OF FACEBOOK		</b>
<br>	Facebook is a social network or a website that allows us to:	
		create a profile,
		connect with other profiles by adding them as our friends,
		share content such as text posts, photos and videos.
		
I'll not develop the website here. I am just designing the database.	

	
<b> Basic Features of Facebook: which I am going to cover in this section </b>
	1. sign up and create a profile.
	2. Add other profiles as friends
	3. Add posts that contain text, photos or videos.
	4. See posts that friends have added
	5. Like and add comments to posts others have added.
	
I am going to create a database design that could implement these features.
	
<b> 1. sign up and create a profile. </b>
	
I use LucidChart to draw all of my database diagrams.
Lucidchart | Diagramming Powered By Intelligence
	
In order to create a profile, I can assume that a user needs to enter some information.
Lets create our first table for storing user information.  
Call it <b> 'user_profile'</b>

<b> Primary key: </b> 
It’s a good idea to have a unique way of identifying this record.

![image alt](https://github.com/hinaazubairr/SQL-Projects/blob/main/E-R%20diagrams/1.PNG?raw=true)


<b> 2. Add other profiles as friends		</b>
<br>			
	we can assume that the functionality to search for profiles and find profiles will exist on the application, and we just need to allow the friends to be stored in the database.		
<br>	Friendship= is a relationship between two profiles.		
<br> There's a concept called a <b> SELF-JOIN </b> , which allows you to join a record to another record of the same table.		
<br> This is useful for hierarchical relationships, such as employees and managers, where managers are also employees or product categories and subcategories.		
<br> However, using a self-join relationship will only allow a single friend.	
		we want users to be able to have many friends.	
<br> and this is actually a <b> MANY TO MANY RELATIONSHIP </b>. To accomplish this, we add a joining table to our database.		
<br> we can add the table here, and call it by the relationship b/w the two profiles.		
<br> we'call it friendship. If we have other relationship types in the future, we can rename the table, but for now its friendship.		
<br> Now we add 2 columns: one for each side of the frienship. We'll call the columns : profile_request and profile_accept, as we can assume that one person will request friendship of another.		
			
<br> if the user declines the request, we don’t add the record to the table.		
<br> or if the other person requests a friendship, we could add a table constraint or an application feature, to prevent this from happening.		
			

![image alt](https://github.com/hinaazubairr/SQL-Projects/blob/main/E-R%20diagrams/2.PNG?raw=true)



<br>
<b> 3. Add posts that contain text, photos or videos.	</b>
<br>	A post is owned by a profile or a user, so we can create a table for posts and link it to the user_profile table.	
		we add an 'id' column for the PK. We also add in the profile_id as a FK.
	and we can all it owner_profile_id, to indicate it’s the profile that owns the post.	
<br>	types of posts: we could have separate tables for the different types of posts: a text_post, a video_post and an image_post table.	
	or we could have one table with several attributes. Or may be another way.	
<br>	There are pros and cons to each approach.	
<br>	This is one way we can do it. We'll  use a single user_post table. We can  add a text field to capture any text for  the post, for written posts for example.	
	We can also add a media field, which  can contain a photo or a video. This  could be a text value that refers to the  URL on the server of the video or photo.  	
	but to keep it simple,  we can assume that the file will be stored on  the server and this would be a reference to it.	
	We can also store the date and  time that the post was created,  so it can be shown in the  application or analysed in the data.	




![image alt](https://github.com/hinaazubairr/SQL-Projects/blob/main/E-R%20diagrams/3.PNG?raw=true)


<br>
<b>	4. See posts that friends have added				</b>
<br>	The next feature is the ability  to see posts from others.				
	We can assume this is a news  feed or timeline feature,  where you can see posts that others have made.				
	This is something that is likely  built into the application,  				
	where it queries the database to  find posts and show them on screen.  				
	We don't need to make database changes for  this, so let's move to the next feature.				
					
					
					
<br>
<b>5. Like and add comments to posts others have added.				</b>
<br>	The last feature is the ability  to like or comment on other posts.				
	What is a like? It's an indication that you  like a post that someone else has put up.				
	For likes, we need to store a few  things. We store the person who liked it,  				
	and the post that was liked. A user can do  this on many posts, but only once per post.				
	So, in our database design, we have a  new table to store this information.  				
<br>	We want to store the post ID that was liked,  the user_profile ID that liked the post.				
	This is a separate table so we can  store multiple likes for a post. If  				
	we just added a user_profile_liked_id  to the user_post table, we could only  				
	store one ID in that column. In this new  table, we can store as many as we want.				
	We can also store a date and time of the  like, so we can see when it was liked.				
					
					

