#!/usr/bin/python3
""" Exporting csv files"""
import requests

def number_of_subscribers(subreddit):
    # Set a custom User-Agent to avoid Too Many Requests error
    headers = {'User-Agent': 'MyBot/1.0'}
    
    # Send a GET request to the Reddit API
    response = requests.get(f'https://www.reddit.com/r/{subreddit}/about.json', headers=headers)
    
    # Check if the request was successful
    if response.status_code == 200:
        data = response.json()
        return data['data']['subscribers']
    else:
        return 0
