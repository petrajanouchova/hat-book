DROP TABLE IF EXISTS Submission;
DROP TABLE IF EXISTS Comment;
DROP TABLE IF EXISTS Post;
DROP TABLE IF EXISTS Author;
DROP TABLE IF EXISTS Subreddit;
CREATE TABLE Subreddit(SubredditID TEXT PRIMARY KEY, Subreddit_Name TEXT);
CREATE TABLE Author(Author TEXT PRIMARY KEY, Comment_Karma INT, Created TEXT, Is_Mod TEXT, Link_Karma INT);
CREATE TABLE Post(PostID TEXT PRIMARY KEY, Author TEXT REFERENCES Author, Created TEXT, BodyText TEXT);

CREATE TABLE Submission(PostID TEXT PRIMARY KEY REFERENCES Post, Score INT, SubredditID TEXT REFERENCES Subreddit, Title TEXT);
CREATE TABLE Comment(PostID TEXT PRIMARY KEY REFERENCES Post, Body TEXT, Controversial INT, Created TEXT, Edited TEXT, ParentID TEXT, Removal_Reason TEXT, Report_Reasons TEXT, Score INT, SubmissionID TEXT REFERENCES Submissions);


select * from post join comment using (postid);

REPLACE INTO AUTHOR(author) VALUES('fromcomemnt');

update author set comment_karma = '1' where author = 'fromcomment';