/* We've got our database design.  
Let's take a look at a couple of sample queries  that the application may use to find information.
Sample queries
This query finds the details of all of  your friends. 
We have the friendship table  and the user_profile table, and show the  records here from the user_profile table.
We've got this extra part of the query here  because of how the friendship table is structured.  
It's possible for a profile ID to exist  in either of the two friendship columns,  
so we need to cater for that,  otherwise we would omit some records.
*/

SELECT p.given_name, p.surname, p.country
FROM user_profile p
INNER JOIN friendships f ON f.profile_request = p.id
WHERE f.profile_accept=14
UNION
SELECT p.given_name, p.surname, p.country
FROM user_profile p
INNER JOIN friendships f ON f.profile_accept = p.id
WHERE f.profile_request=14



/* ALL COMMENTS ON A POST:
Here's another query that shows all of the  comments on a specific post of yours. We've  
got the post_comments table and the user_profile  table, and we are filtering on a specific post ID.
*/
SELECT 
c.created_datetime, c.comment_text, p.given_name, p.surname
FROM user_profile p
INNER JOIN post_comment c ON p.id = c.profile_id
WHERE c.post_id = 31;



/* ALL OF YOUR TEXT POSTS
This query here shows all of  the text posts you have added.  
We filter based on the user_profile_id.  We also filter where the media is NULL,  
assuming that if this field is null there are no  images or videos and therefore it is a text post.
*/

SELECT c.created_datetime, c.comment_text
FROM post_comment
WHERE c.profile_id=14;
