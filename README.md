# S.I.M
S.I.M aka simple inventory manager is a simple zig application that can see what is in your inventory and what is either out of stock

# DO NOT USE AS HELP

I somehow completly broke everythin in a desperate attempt to get it to work. Well, it should still work if you figure out how to either add a small delay from choosing the 'c' option and entering a name.

I think the issue might be that in the time of the user pressing enter on the 'c' option it also gets to register it for the name part, and there for gives it the name ' ' (ascii code 13 or 128).

I am taking a break from this project, and maybe even Zig. I may give Odin a try and we will see what I enjoy more. Who knows, maybe ill just stick to C++

# Update 2

I know the cause of this black magic, but now I got a new issue. The read issue is something along the lines of readByte only reads the first byte as it should, so if the user pressed 'c' and 'enter' it reads 'c' but then the '\r' is leaft in the read stream or something, and therefore you don't get to give the new object a name because it reads the enter '\r' key as the first thing.

But now when I read the Inventory.txt file witch looks like this as of now

ABCD
BCD
CD
D

It only reads the D's so the inventory output becomes DDDD. Why, because it wants to, let it....
