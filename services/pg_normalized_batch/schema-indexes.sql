CREATE INDEX idx1 ON tweet_tags(tag, id_tweets);
/*CREATE INDEX idx2 ON tweet_tags(id_tweets, tag);

/* 03.sql*/
/*create index idx3_0 on tweet_tags(tag, id_tweets);*/
create index idx3_1 on tweets(id_tweets, lang);

/* 04.sql*/
create index idx4 on tweets using gin(to_tsvector('english', text)) where lang = 'en';

/* 05.sql*/
/*create index idx5_0 on tweets using rum(to_tsvector('english', text), lang, id_tweets);*/
create index idx5_1 on tweet_tags(id_tweets, tag);
