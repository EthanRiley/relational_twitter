import pandas as pd
import time
from twitter_mysql import TwitterAPI
from twitter_objects import Tweet, Follow, User

# Create a function that gets as many timelines as it can for a minute
def get_timelines():
    api = TwitterAPI('pySQL', 'Python123', 'test_twitter')
    start = time.time_ns()
    time_elapsed = 0
    total_timelines = 0
    while time_elapsed < 60:
        user_id = api.get_random_user_id()
        api.get_timeline(user_id)
        total_timelines += 1
        finish = time.time_ns()
        time_elapsed = (finish - start) / 10 ** 9
    api.dbu.close()
    return total_timelines

def main():
    time_per_10k = get_timelines()
    print(time_per_10k)

if __name__ == '__main__':
    main()
