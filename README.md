# docker-es-curator-cron
Docker container to run elasticsearch curator 4
Elasticsearch Curator helps you curate, or manage, your Elasticsearch indices and snapshots


##Documentation

https://www.elastic.co/guide/en/elasticsearch/client/curator/4.0/index.html

https://www.elastic.co/blog/curator_v4_release



This image comes with a default set of configuration files for curator,
but if you want to provide your own set of configuration and action files, you can do so via a volume mounted at /usr/share/curator/config:

```
$ docker run -d -v "$PWD/config":/usr/share/curator/config shanelee007/curator4
```


##Commands

* Define config file:

Location is /usr/share/curator/config/curator.yml

* Define the action

Samples are located under config dir /usr/share/curator/config

###Dry run
```
 curator --dry-run ./config/create_location_index_curator.yml
```

If your happy then run it:


```
 curator  ./config/create_location_index_curator.yml

```

###Cron job

```crontab -e```

```
0 0 15 1/1 * ? * /usr/local/bin/curator /usr/share/curator/config/create_location_index_curator.yml
```


