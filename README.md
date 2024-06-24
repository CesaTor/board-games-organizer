# bgo

Simple BoardGame Organizer

## Why

I started this project with the goal to write in a few days a way to
- know what games you own
- retrieve useful details like "n. of players" or "time to play"
- organize them in collection to later know where you put them
- work offline after configuration because of low connectivity

Why again? because I like boardgames and in "ComeLaSfoglia" (a cultural association of which I'm a member) we needed a tool to know which games are in which shelf or suitecase to easily know what can be played

## Techy things

No special state management tool, I used BLoc and Riverpod but I wanted to try using just Vanilla Flutter and found out that ChangeNotifier is more than enough to get the job done

- BoardGamesGeeks api -> to get the games data
- Dio -> to handle requests
- Isar -> to store the offline data
- fpdart -> because I like it 

As simple as that