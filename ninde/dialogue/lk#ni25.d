// ---------------------------------------------
// Ninde ToB Out-of-Party Dialogue
// ---------------------------------------------
BEGIN LK#NI25

/* As of v3.0, moved to lk#ni25_fatesp.d for EET compatibility
// FATE SPIRIT

EXTEND_TOP FATESP 6
+ ~!Dead("Ninde") !InMyArea("Ninde") CheckStatGT(Player1,12,CHR) Gender(Player1,MALE) Global("LK#NindeSummoned","GLOBAL",0)~ + @0 // Bring me my lover, Ninde.
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("lk#ni25",[1999.1228],1)
	SetGlobal("LK#NindeRomanceActive","GLOBAL",2)
	SetGlobal("LK#NindeRestored","GLOBAL",1)
	SetGlobal("LK#NindeSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("Ninde") !InMyArea("Ninde") Global("LK#NindeSummoned","GLOBAL",0)~ + @1 // Bring me Ninde, the elven necromancer.
 	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("lk#ni25",[1999.1228],1)
	SetGlobal("LK#NindeSummoned","GLOBAL",1)~ GOTO 8
END

APPEND LK#NI25
*/
IF ~NumTimesTalkedTo(0)~ join1
 SAY @2 /* Hello there, Bhaalspawn.  This was not...quite how I envisioned our next meeting, though perhaps a trek through the Nine Hells should not surprise me by now. */
 	++ @3 /* If you're done gaping, I need your help. */ + join2
 	++ @4 /* At least you won't be bored. */ + join3
 	++ @5 /* It's nice to see you too, Ninde. */ + join4
END

IF ~~ join2
 SAY @6 /* Do you?  How very fascinating.  Given your current company, however, I can't say that I'm particularly surprised. */
 	++ @7 /* That's nice.  Join up, please. */ + join5
 	++ @8 /* Could you wait here awhile?  I may need you later. */ + join6
END

IF ~~ join3
 SAY @9 /* I think that rather depends on you, darling.  From this delightful summoning of yours, shall I take it you want my help again for some bother or another? */
 	++ @10 /* Indeed, I do.  Join up, please. */ + join5
 	++ @8 /* Could you wait here awhile?  I may need you later. */ + join6
END

IF ~~ join4
 SAY @11 /* Yes, I'm sure it is.  But from this delightful summoning of yours, shall I take it you want my help again for some bother or another? */
 	++ @10 /* Indeed, I do.  Join up, please. */ + join5
 	++ @8 /* Could you wait here awhile?  I may need you later. */ + join6
END

IF ~~ join5
 SAY @12 /* I'm sure it will continue to be a pleasure, darling.  At least, I certainly hope so. */
IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ join6
 SAY @13 /* Hmph.  I would have much preferred a place with a view--or decent carpeting, at the very least--but I don't expect that I have much of a choice now.  Do be a dear and make a decision quickly, would you? */
IF ~~ EXIT
END

// joining later

IF ~NumTimesTalkedToGT(0)~ join7
 SAY @14 /* Oh, it's you.  I see you're walking and talking, so congratulations, you've exceeded my expectations.  Have you finally changed your mind? */
  ++ @15 /* Indeed I have.  We could use your skills, if you're still interested. */ + join8
  ++ @16 /* No, not yet.  It's good to see you again, Ninde. */ + join9
END

IF ~~ join8
  SAY @17 /* Ah, it's refreshing to know you've some remnant of common sense, Bhaalspawn.  One can go far on a little common sense, it seems.  Very well, onward to glory and wealth, or something equally banal. */
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ join9
 SAY @18 /* How awfully sentimental.  I have little interest in chitchat, Bhaalspawn.  Now, if you would excuse me... */
IF ~~ EXIT
END
//END of APPEND
