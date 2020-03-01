// ---------------------------------------------
// Ninde P Dialogue
// ---------------------------------------------
BEGIN LK#NI25P

// Kicked Out
IF ~Global("LK#NindeJoined","LOCALS",1)~ LK#NP_intro
  SAY @0 /* My father, bless his senile heart, used to say that even the sweetest apples rot.  Perhaps...yes, I could certainly do with a break from the road.  My feet must be restored to their former, delicate selves.  Speak plain, <CHARNAME>, do you desire my company any longer? */
  ++ @1 /* Well your little break from adventuring will have to wait for a while, Ninde.  We still have need of you yet. */ DO ~JoinParty()~ EXIT
  + ~!AreaCheck("AR4500") GlobalLT("chapter","GLOBAL",%bg2_chapter_9%)~ + @2 /* Maybe it's time we thought about going our separate ways, Ninde. */ + LK#NP_goplz1
  + ~!AreaCheck("AR4500") GlobalGT("chapter","GLOBAL",%bg2_chapter_8%)~ + @2 /* Maybe it's time we thought about going our separate ways, Ninde. */ + LK#NP_goplz2
  + ~AreaCheck("AR4500")~ + @2 /* Maybe it's time we thought about going our separate ways, Ninde. */ + LK#NP_goplz3
END

IF ~~ LK#NP_goplz1
  SAY @3 /* Very well.  Should you change your mind upon realising the peril travelling without me engenders, you might find me in Saradush's inn... assuming it is not yet on fire.  I know it's very hard, but do try not to get yourself killed, <CHARNAME>, you silly creature. */
IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",0) EscapeAreaMove("AR5003",870,550,3)~  EXIT
END

IF ~~ LK#NP_goplz2
  SAY @4 /* Very well.  Should you change your mind upon realising the peril travelling without me engenders, you might yet find me in Amkethran's inn, dreadfully tedious though it is.  I know it's very hard, but do try not to get yourself killed, <CHARNAME>, you silly creature. */
IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",0) EscapeAreaMove("AR5501",650,248,9)~ EXIT
END

IF ~~ LK#NP_goplz3
  SAY @5 /* You have an odd notion of "separate ways" if you mean to leave me in this personal hell pocket of yours.  But very well.  Should you change your mind upon realising the peril travelling without me engenders, do come and find me. */
IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",0)~  EXIT
END

// Rejoining
IF ~Global("LK#NindeJoined","LOCALS",0)~ LK#NJ2_intro
  SAY @6 /* Oh, it's you again.  I see you're walking and talking, so congratulations, you've exceeded my expectations.  Have you come about our little...business proposal? */
  ++ @7 /* Indeed I have.  We could use your skills, if you're still interested. */ + LK#NJ2_joinplz
  ++ @8 /* Ha, nope.  I just came to watch a fine lady such as you marinating in this hole.  Amusing to say the least. */ + LK#NJ2_nopes
  ++ @9 /* No, we just happened to be nearby.  It's good to see you again, Ninde. */ + LK#NJ2_niceno
END

IF ~~ LK#NJ2_joinplz
  SAY @10 /* Ah, it's refreshing to know you've some remnant of common sense, Bhaalspawn.  One can go far on a little common sense, it seems.  Very well, onward to glory and wealth, or something equally banal. */
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ LK#NJ2_nopes
  SAY @11 /* I suppose simple things amuse the simple-minded.  Get your gawking done and leave.  The scenery is dreadful enough without your fat simian face ruining it further, peasant. */
  IF ~~ EXIT
END

IF ~~ LK#NJ2_niceno
  SAY @12 /* How awfully sentimental.  I have little time for chitchat, Bhaalspawn.  Apologies for curtailing our little discourse, but more important matters call. */
  IF ~~ EXIT
END
