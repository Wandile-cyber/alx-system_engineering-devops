
# Project: 0x1A. Application server | ALX Africa Intranet

> ## Excerpt
> Let’s serve what you built for AirBnB clone v3 - RESTful API on web-01.

---
Let’s serve what you built for [AirBnB clone v3 - RESTful API](https://intranet.alxswe.com/rltoken/QXJ9ryafcRfd_cARiugRiQ "AirBnB clone v3 - RESTful API") on `web-01`.

Requirements:

-   Git clone your `AirBnB_clone_v3`
-   Setup `Nginx` so that the route `/api/` points to a `Gunicorn` instance listening on port `5002`
-   `Nginx` must serve this page both locally and on its public IP on port `80`
-   To test your setup you should bind `Gunicorn` to `api/v1/app.py`
-   It may be helpful to import your data (and environment variables) from [this project](https://intranet.alxswe.com/rltoken/ZSQFQJPNTKrRdXynG6PWEw "this project")
-   Upload your `Nginx` config file as `4-app_server-nginx_config`

Example:

##### Terminal 1:

```
ubuntu@229-web-01:~/AirBnB_clone_v3$ tmux new-session -d 'gunicorn --bind 0.0.0.0:5002 api.v1.app:app'
ubuntu@229-web-01:~/AirBnB_clone_v3$ curl 127.0.0.1:5002/api/v1/states
[{"__class__":"State","created_at":"2019-05-10T00:39:27.032802","id":"7512f664-4951-4231-8de9-b18d940cc912","name":"California","updated_at":"2019-05-10T00:39:27.032965"},{"__class__":"State","created_at":"2019-05-10T00:39:36.021219","id":"b25625c8-8a7a-4c1f-8afc-257bf9f76bc8","name":"Arizona","updated_at":"2019-05-10T00:39:36.021281"}]
ubuntu@229-web-01:~/AirBnB_clone_v3$
ubuntu@229-web-01:~/AirBnB_clone_v3$ curl 127.0.0.1/api/v1/states
[{"__class__":"State","created_at":"2019-05-10T00:39:27.032802","id":"7512f664-4951-4231-8de9-b18d940cc912","name":"California","updated_at":"2019-05-10T00:39:27.032965"},{"__class__":"State","created_at":"2019-05-10T00:39:36.021219","id":"b25625c8-8a7a-4c1f-8afc-257bf9f76bc8","name":"Arizona","updated_at":"2019-05-10T00:39:36.021281"}]
ubuntu@229-web-01:~/AirBnB_clone_v3$
```

##### Local Terminal:

```
vagrant@ubuntu-xenial:~$ curl 35.231.193.217/api/v1/states
[{"__class__":"State","created_at":"2019-05-10T00:39:27.032802","id":"7512f664-4951-4231-8de9-b18d940cc912","name":"California","updated_at":"2019-05-10T00:39:27.032965"},{"__class__":"State","created_at":"2019-05-10T00:39:36.021219","id":"b25625c8-8a7a-4c1f-8afc-257bf9f76bc8","name":"Arizona","updated_at":"2019-05-10T00:39:36.021281"}]
vagrant@ubuntu-xenial:~$
```

