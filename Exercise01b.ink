/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 *Basic Choices 
 * Knot structure 
 * Recurring choices 
 * Conditionals in descriptions
 * Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

== cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+[Take the east tunnel] ->east_tunnel
+[Take the west tunnel] ->west_tunnel
* [Pick up the torch] -> torch_pickup 


== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> west_tunnel_lit 
+ [Go Back] -> cave_mouth
-> END

== torch_pickup ==
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

. . . . end of example . . . 

== west_tunnel_lit ==
 The light of your torch reveals two more tunnels. You can proceed to either the left or right.
 * [Go Left] -> left_tunnel
 * [Go Right] -> right_tunnel
 * [Go Back] -> cave_mouth
 ->END
 
 /*
 Questions:
 If I return to west tunnel lit, why does it not show the option to go back the way I just came from? Would this be an example of me needing a conditional?? 
 */
 
 == left_tunnel ==
 As you walk further you notice green slime on the cave walls and a low grumbling sound.
 * [Continue down the tunnel] -> 
 ->END
 * [Go Back] ->west_tunnel_lit
 ->END
  
 == right_tunnel ==
 As you proceed you see a door up ahead with a candle burning inside a lantern hanging above the door.
 * [Continue down the tunnel] -> In_front_of_door
 ->END
 *[Go Back] ->west_tunnel_lit
 ->END
 
 == In_front_of_door == 
  You don't hear any noise coming from the other side of the door. You are unsure what to do.
 * [Knock on the door.]
 ->END
 * [Open the door.]
 ->END
 
 
 
 
 
 


 
