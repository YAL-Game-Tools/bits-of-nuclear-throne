# Changing `GameCont` variables in `game_start`

Did you know that `GameCont.area = 1` is not the same as `with (GameCont) area = 1`?

I had to add an "is this an object?" check to each variable instruction handler.