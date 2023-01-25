import pandas as pd
import time
from twitter_mysql import TwitterAPI
from twitter_objects import Tweet, Follow, User
# Load tweet.csv 

# Create Tweet objects associated with each line of the csv file
def load_and_profile_tweets():
    # Create API Connection
    api = TwitterAPI('pySQL', 'Python123', 'test_twitter')
    #  Load the csv file
    tweets = pd.read_csv('data/tweet.csv')
    start = time.time_ns()
    time_per_10k = []
    for i in range(len(tweets)):
        if i % 10 ** 4 == 0:
            finish = time.time_ns()
            completion_time = (finish - start) / 10 ** 9
            time_per_10k.append(completion_time)
            start = time.time_ns()
        tweet = Tweet(int(tweets['USER_ID'][i]), tweets['TWEET_TEXT'][i])
        api.post_tweet(tweet)
    api.dbu.close()
    return time_per_10k

# Either create all objects at once and store in memory or create one at a time and insert into the database
# Insert each Tweet object into the database
# Try batching as many as 5 at a time
# import time
# Every 10,000 iterations how many seconds did it take

def main():
    time_per_10k = load_and_profile_tweets()
    print(time_per_10k)

if __name__ == '__main__':
    main()