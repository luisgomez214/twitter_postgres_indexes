SET max_parallel_maintenance_workers = 60;
SET max_parallel_workers = 60;
SET maintenance_work_mem TO '4 GB';

create index on tweets(lang);

create index on tweet_tags(tag, id_tweets); 

create index on tweets(id_tweets, lang); 

create index on tweet_tags(id_tweets, tag); 

CREATE INDEX idx_tweets_text_gin ON tweets USING GIN(to_tsvector('english', text)) where lang = 'en';
