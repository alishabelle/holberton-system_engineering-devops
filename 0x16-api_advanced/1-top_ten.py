#!/usr/bin/python3
""" queries reddit api """

import requests


def top_ten(subreddit):
    """ prints first 10 posts """
    head = {'User-Agent': 'jank'}
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    resp = requests.get(url, allow_redirects=False, headers=head)
    if resp.status_code >= 300:
        print(None)
    else:
        for r in resp.json().get('data').get('children'):
            print(r.get('data').get('title'))
