# Springboard Data Science Capstone Project 1 - Do Metacritic Review Scores influence Video Game Sales?
[Click here for project report]()


## Define the problem
Recently, we saw more and more news articles discussing the impact of internet review scores on the sales of video games like [this one]( https://www.dailydot.com/parsec/metacritic-scores-game-sales-gdc-2015/)  We have also seen reports like ['Former IGN employee admits review scores are skewed due to public relations'](https://www.zeldadungeon.net/former-ign-employee-admits-review-scores-are-skewed-due-to-public-relations/). It seems that review scores really matter to the video sales from these news articles...and some video game publishers really believe that to go extra miles to influence the critic review scores.

However, I want to use my data science skills to see if Internet video games scores really have some kind of impact on game sales. I hope to see if [review scores are really hurting video games](https://kotaku.com/metacritic-matters-how-review-scores-hurt-video-games-472462218). If they do, how much influence do they have? And when did this trend start?

## Identify your client
The target audiences could be:
1. The marketing and public relations teams of video game publishers: they might be interested to see if they need to spend some extra efforts to increase the review scores from the critics and/or the users
2. The consumers: they might be interested to see if review scores would influence their decisions in buying a game
3. The critics: they might be interested to see whether a game's review score could impact a game's sales and/or impact consumers' behavior, therefore put more consideration and responsibilities in their reviews

## Describe your data set, and how you cleaned/wrangled it
This project is made possible by an [awesome dataset](https://www.kaggle.com/rush4ratio/video-game-sales-with-ratings/) from kaggle by Rush Kirubi that includes the names of games released from 1980-2016, their sales in different regions (North America, Europe, Japan, and other regions), and their critic review scores (Critic_Score) and user review scores (User_Score) scraped from Metacritic.

I took the following steps to clean/wrangle the dataset

1. Since I am interested in the relationship between review scores and video games sales. I removed all the games with no critic scores or user score: i.e. all the remaining games have both critic scores and user scores.
2. To study the influence of Metacritic review scores on the game, I only kept the games that were released after the 1-year birthday of Metacritic, because I assume only a very little percent of the games released before that time's sales would be attributed to Metacritic scores, if any. So only games released from 2000-2016 were kept in my dataset.
3. The Critic_Score column is rated on a 0-10 scale and the User_Score column is rated on a 0-100 scale, so I normalized the User_Score column by multiplying it by 100.
4. I also created a column called "Exclusivity", which indicates whether a game is a console exclusive (denoted by '1') or not (denoted by '0').
5. Furthermore, since Metacritic is a US-based website, I want to see if its review scores have the same effect on the video game sales in North America vs. the other parts of the world, so I've created a column "NonNA_Sales" that indicates a game's sale in the regions other than North America.

## List other potential data sets you could use
The dataset I'm using has the overall critic review score for each video game, that score was aggregated by Metacritic from various video game review critics/websites. If the dataset has the breakdown of each score that indicates the review score from each critic and website, that would help us further discover if some particular critics and websites are more influential in consumer decision makings than the others.

## Explain your initial findings
1. More users are paying attention to reviews on Metacritics in recent years (2010 and on)
    i. On one hand, the non-Japanese users take critics' scores more into consideration when deciding buying a game or not
    ii. On the other hand, much more users started to post reviews on Metacritics since 2010, which might be the cause of the declining relevance between Metacritics user scores and game sales.

**So Critic_Score matters for the game sales non-JP market, while the User_Score does not.

2. Critics scores are better indicators for sales in Non_JP regions than JP for post-2010 games, and a game that sold well in other regions didn't necessarily sell well in Japan, **so we might need to use different marketing strategies for Japan**.
