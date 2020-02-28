// ---------------------------------------------
// Ninde P Dialogue
// ---------------------------------------------
BEGIN LK#NINDP

// Leaving
IF ~Global("LK#NindeJoined","LOCALS",1) !Global("LK#NindeAbducted","GLOBAL",1)~ LK#NP_intro
  SAY @0 /* My father, bless his senile heart, used to say that even the sweetest apples rot.  Perhaps...yes, I could certainly do with a break from the road.  My feet must be restored to their former, delicate selves.  Speak plain, <CHARNAME>, do you desire my company any longer? */
  ++ @1 /* Well your little break from adventuring will have to wait for a while, Ninde.  We still have need of you yet. */ DO ~JoinParty()~ EXIT
  ++ @2 /* Maybe it's time we thought about going our separate ways, Ninde. */ + LK#NP_goplz
END

IF ~~ LK#NP_goplz
  SAY @3 /* Very well.  I shall return to Athkatla...should you change your mind upon realising the peril travelling without me engenders, you might find me in one of the more...colourful...inns of the city.  The Crooked Crane, I believe.  I know it's very hard, but do try not to get yourself killed, <CHARNAME>, you silly creature. */
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",0) LeaveParty() EscapeAreaMove("AR0021",585,355,6)~ EXIT
END

// Rejoining
IF ~Global("LK#NindeJoined","LOCALS",0) !Global("LK#NindeAbducted","GLOBAL",1)~ LK#NJ2_intro
  SAY @4 /* Oh, it's you again.  I see you're walking and talking, so congratulations, you've exceeded my expectations.  Have you come about our little...business proposal? */
  ++ @5 /* Indeed I have.  We could use your skills, if you're still interested. */ + LK#NJ2_joinplz
  ++ @6 /* Ha, nope.  I just came to watch a fine lady such as you marinating in this hole.  Amusing to say the least. */ + LK#NJ2_nopes
  ++ @7 /* No, we just happened to be nearby.  It's good to see you again, Ninde. */ + LK#NJ2_niceno
  ++ @8 /* Actually, I've decided to kill you. */ + LK#NJ2_violence
END

IF ~~ LK#NJ2_joinplz
  SAY @9 /* Ah, it's refreshing to know you've some remnant of common sense, Bhaalspawn.  One can go far on a little common sense in this city, it seems.  Very well, onward to glory and wealth, or something equally banal. */
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ LK#NJ2_nopes
  SAY @10 /* I suppose simple things amuse the simple-minded.  Get your gawking done and leave, because your fat simian face is rather ruining the otherwise charmingly quaint scenery, peasant. */
  IF ~~ EXIT
  IF ~InParty("Korgan") InParty("Edwin") !StateCheck("Korgan",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ EXTERN ~KORGANJ~ LK#NJ2_korgan
END

IF ~~ LK#NJ2_niceno
  SAY @11 /* How awfully sentimental.  I have little time for chitchat, Bhaalspawn.  Apologies for curtailing our little discourse, but more important matters call. */
  IF ~~ EXIT
END

IF ~~ LK#NJ2_violence
  SAY @12 /* I knew you were a dimwit the moment I set eyes on you, Bhaalspawn.  Truly, I pity you.  But I'm afraid you'll not have my blood today.  I wish Bodhi luck in gutting you, like she did your friend.  Imoen, is it?  Yes, I remember the little redhead screaming for mercy as her entrails were torn from her.  It did make for spectacular entertainment.  Farewell, my dear.  I'm sure we'll meet again. */
  IF ~~ DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

APPEND ~KORGANJ~
IF ~~ LK#NJ2_korgan
  SAY @13 /* Och, Edwin, the spellchucking wench has a sharper tongue then you!  'Tis a good job she'll not be joining us, since I couldn't bare the both of ye, and she just happens to be a nicer shape. */
  IF ~~ EXIT
END
END

// Bodhi abduction

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2) !InParty("Ninde") !Global("LK#NindeRomanceActive","GLOBAL",2)~ DO 0

INTERJECT BODHIAMB 5 LK#NindeBodhiAbduct
  == BODHIAMB IF ~Global("LK#NindeRomanceActive","GLOBAL",2) InParty("Ninde")~ THEN
  @14 /* You follow in the hopes of retrieving something dear to you.  I say that the longer you keep this up, the more you will lose. */
END
  IF ~OR(2) !InPartyAllowDead("Ninde") Dead("Ninde")~ EXTERN BODHIAMB 6
  IF ~InPartyAllowDead("Ninde") !Dead("Ninde")~ EXTERN BODHIAMB LK#NindeBodhiAbduct_1

CHAIN BODHIAMB LK#NindeBodhiAbduct_1
  @15 /* As for you, Ninde, perhaps it is time for you to rejoin us, your night-walking cousins. */
  == LK#NINDJ @16 /* I really don't think you can be serious, fangface.  You hate my guts. */
  == BODHIAMB @17 /* Perhaps a little undeath would improve you.  Actually, never mind the 'un' part--let's get straight to the death. */
  == LK#NINDJ @18 /* I think you're forgetting something, darling. */
  == BODHIAMB @19 /* The Ankh.  The thing has some...sentimental worth, I suppose. */
  == LK#NINDJ @20 /* It recognises my blood.  The thing's like a desperate lover, can't get it off me. */
  == BODHIAMB @21 /* It recognises your blood?  Well, that shan't be a problem when you don't have any left. */
  == LK#NINDJ @22 /* Don't you remember why Lassal gave the bauble to me in the first place?  Not a single one of you is coming anywhere near my gorgeous neck.  Lassal did, upon occasion, do things right. */
  == BODHIAMB @23 /* Though you are walking evidence otherwise.  Your continued existence galls me.  But how to end it with suitable pain? */
  = @24 /* Very well.  You will come with us...I need a little more time to think about what to do with you. */
EXTERN LK#NINDJ LK#NindeBodhiAbduct_2

APPEND LK#NINDJ

IF ~~ LK#NindeBodhiAbduct_2
  SAY @25 /* I'm sure it will be just like the old days. */
  IF ~~ DO ~LeaveParty() ClearAllActions() StartCutSceneMode() StartCutScene("lk#nict5")~
  UNSOLVED_JOURNAL @26 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late. */ EXIT
END
END

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("LK#NindeBodhiAbduct","GLOBAL",1)~ DO 0

INTERJECT C6BODHI 21 LK#NindeBodhiAb2
  == C6BODHI IF ~Global("LK#NindeBodhiAbduct","GLOBAL",1)~ THEN @27 /* But...no, I have already prepared much for this meeting, <CHARNAME>.  I did warn you that you would suffer great loss if you continued your push towards me.  I did not lie. */
END
  ++ @28 /* You have taken too much already!  You will return both Imoen's soul and Ninde! */ EXTERN C6BODHI LK#NindeBodhiAb2_1
  ++ @29 /* And you have delivered on that promise.  Return Ninde and perhaps I will be merciful. */ EXTERN C6BODHI LK#NindeBodhiAb2_1
  ++ @30 /* I would have hunted you for your theft of Ninde alone.  She is very important to me. */ EXTERN C6BODHI LK#NindeBodhiAb2_1
  ++ @31 /* You place too much confidence in sentiment.  The theft of Ninde will not save you. */ EXTERN C6BODHI LK#NindeBodhiAb2_2
  
APPEND C6BODHI

IF ~~ LK#NindeBodhiAb2_1
  SAY @32 /* Oh, she has not been harmed.  Yet. */
  IF ~~ + 22
END

IF ~~ LK#NindeBodhiAb2_2
  SAY @33 /* An interesting ploy, though I am sure what she has in store will still serve as an example, whether you wish her back or not. */
  IF ~~ + 22
END
END

APPEND LK#NINDP

IF WEIGHT #-1 ~Global("LK#NindeAbducted","GLOBAL",1)~ LK#NindeBAbd_intro
  SAY @34 /* There you are.  I don't say this often, but by Shar, I'm glad to see you. */
  ++ @35 /* Ninde!  Are you alright? */ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_SOKAY
  ++ @36 /* And it's good to see you again, to.  I trust you are unscathed? */ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_SOKAY
  ++ @37 /* What happened?  They just...left you here?  Didn't torture you or anything? */ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_TORCHA
  ++ @38 /* Oh, don't put on that damsel-in-distress show, it doesn't look as though your feathers have been particularly ruffled. */ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_RUFFLED
  ++ @39 /* Glad to see me?  I fought tooth and nail through this damnable crypt to fetch you and that's all you can think to say? */ DO ~IncrementGlobal("LK#NindeAbducted","GLOBAL",1)~ + LK#NindeBAbd_THINSAY
END

IF ~~ LK#NindeBAbd_SOKAY
  SAY @40 /* I'm ridiculously bored, but otherwise, everything is just peachy.  Peachy. */
  ++ @41 /* You don't look terribly happy. */ + LK#NindeBAbd_RUFFLED 
  ++ @42 /* If I'm not mistaken, you don't really seem your usual, wordy self. */ + LK#NindeBAbd_RUFFLED
  ++ @43 /* Well, if you are sure.  Lets get out of here. */ + LK#NindeBAbd_OUTTAHER
  ++ @44 /* You might be bored, but you could've been dead.  Why not look on the bright side? */ + LK#NindeBAbd_BRITESID
  ++ @45 /* I hope you're not irritated with me, Ninde.  I came as fast as I could. */ + LK#NindeBAbd_FASTACOULD
END

IF ~~ LK#NindeBAbd_TORCHA
  SAY @46 /* No?  I think they were probably a little pre-occupied with you.  They just threw me in here, and I've been having lots of fun re-acquainting myself with the sorts of things vampires hide in wooden boxes. */
  ++ @47 /* Lovely.  Despite the sterling time you've been having, we should get out of here.  Come.   */ + LK#NindeBAbd_STERLING
  ++ @48 /* Odd.  I thought Bodhi would have been eager to break out the thumbscrews with you paying a visit.   */ + LK#NindeBAbd_UVEESIT
  ++ @49 /* Are you sure you're alright?  You seem a little...off.   */ + LK#NindeBAbd_RUFFLED
  ++ @43 /* Well, if you are sure.  Lets get out of here. */ + LK#NindeBAbd_OUTTAHER
END

IF ~~ LK#NindeBAbd_RUFFLED
  SAY @50 /* It is just this place.  I'd forgotten how much like a charnel house it smells.  Can we leave, <CHARNAME>? */
  ++ @51 /* There are still a few things we need to do, but we will leave as soon as . */ + LK#NindeBAbd_OUTTAHER
  ++ @52 /* I have no liking for it either.  Come. */ + LK#NindeBAbd_OUTTAHER
  ++ @53 /* That's strange, I assumed you'd be in your element in a place like this. */ + LK#NindeBAbd_ELEMENT
  ++ @54 /* Perhaps we should think about examining this place a little more thoroughly before we leave.  There could be some clues as to Irenicus' plans. */ + LK#NindeBAbd_EXAMIREN
  ++ @55 /* Stop your complaining and fall into formation.  We leave when I say we leave. */ + LK#NindeBAbd_LEVWENLEV
END

IF ~~ LK#NindeBAbd_THINSAY
  SAY @56 /* I suppose you wanted me to throw my arms about your neck in raptures of delight.  The truth is, this has been no great ordeal.  I simply wish to leave as soon as .  I'd forgotten how much like a charnel house it smells down here. */
  ++ @57 /* There are still a few things we need to do, but we will leave as soon as. */ + LK#NindeBAbd_OUTTAHER
  ++ @52 /* I have no liking for it either.  Come. */ + LK#NindeBAbd_OUTTAHER
  ++ @58 /* Still, a few kind words for your gallant rescuer wouldn't go amiss! */ + LK#NindeBAbd_AEMISS
  ++ @53 /* That's strange, I assumed you'd be in your element in a place like this. */ + LK#NindeBAbd_ELEMENT
  ++ @54 /* Perhaps we should think about examining this place a little more thoroughly before we leave.  There could be some clues as to Irenicus' plans. */ + LK#NindeBAbd_EXAMIREN
  ++ @55 /* Stop your complaining and fall into formation.  We leave when I say we leave. */ + LK#NindeBAbd_LEVWENLEV
END

IF ~~ LK#NindeBAbd_OUTTAHER
  SAY @59 /* Some haste would be appreciated, Bhaalspawn.  This place and everything in it makes me feel sick, including you. */
  ++ @60 /* What?  That was a bit of an unwarranted attack, don't you think? */ + LK#NindeBAbd_UNWARRANT
  ++ @61 /* What in the realms have I done to you, woman, to deserve such venom? */ + LK#NindeBAbd_UNWARRANT
  ++ @62 /* If I've done something to offend you, I'm certainly unaware of it.  Care to clarify for me why, exactly, I sicken you? */ + LK#NindeBAbd_UNWARRANT
  ++ @63 /* If this is how you treat your rescuer I'll know to leave you to your own devices next time.   */ + LK#NindeBAbd_OWNDEV
  ++ @64 /* Fine.  You can make your own way out, then. */ + LK#NindeBAbd_WAYOUTDEN
END

IF ~~ LK#NindeBAbd_BRITESID
  SAY @65 /* I do not look on the bright side because this place and everything in it makes me feel sick.  Including you, Bhaalspawn. */
  ++ @60 /* What?  That was a bit of an unwarranted attack, don't you think? */ + LK#NindeBAbd_UNWARRANT
  ++ @61 /* What in the realms have I done to you, woman, to deserve such venom? */ + LK#NindeBAbd_UNWARRANT
  ++ @62 /* If I've done something to offend you, I'm certainly unaware of it.  Care to clarify for me why, exactly, I sicken you? */ + LK#NindeBAbd_UNWARRANT
  ++ @63 /* If this is how you treat your rescuer I'll know to leave you to your own devices next time.   */ + LK#NindeBAbd_OWNDEV
  ++ @64 /* Fine.  You can make your own way out, then. */ + LK#NindeBAbd_WAYOUTDEN
END

IF ~~ LK#NindeBAbd_FASTACOULD
  SAY @66 /* Frankly, this place and everything in it sickens me, including you, Bhaalspawn. */
  ++ @60 /* What?  That was a bit of an unwarranted attack, don't you think? */ + LK#NindeBAbd_UNWARRANT
  ++ @61 /* What in the realms have I done to you, woman, to deserve such venom? */ + LK#NindeBAbd_UNWARRANT
  ++ @62 /* If I've done something to offend you, I'm certainly unaware of it.  Care to clarify for me why, exactly, I sicken you? */ + LK#NindeBAbd_UNWARRANT
  ++ @63 /* If this is how you treat your rescuer I'll know to leave you to your own devices next time.   */ + LK#NindeBAbd_OWNDEV
  ++ @64 /* Fine.  You can make your own way out, then. */ + LK#NindeBAbd_WAYOUTDEN
END

IF ~~ LK#NindeBAbd_STERLING
  SAY @67 /* Yes, let's go.  I'd forgotten how much like a charnel house this place smells. */
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) EraseJournalEntry(@26 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late. */)~ SOLVED_JOURNAL @68 /* The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal. */ EXIT
END

IF ~~ LK#NindeBAbd_UVEESIT
  SAY @69 /* Unlike yourself.  Bodhi if wise enough to see that being so motivated for revenge can lead to folly.  Anyway, psychoanalysis aside, may we leave? */
  ++ @51 /* There are still a few things we need to do, but we will leave as soon as . */ + LK#NindeBAbd_OUTTAHER
  ++ @52 /* I have no liking for it either.  Come. */ + LK#NindeBAbd_OUTTAHER
  ++ @58 /* Still, a few kind words for your gallant rescuer wouldn't go amiss! */ + LK#NindeBAbd_AEMISS
  ++ @53 /* That's strange, I assumed you'd be in your element in a place like this. */ + LK#NindeBAbd_ELEMENT
  ++ @54 /* Perhaps we should think about examining this place a little more thoroughly before we leave.  There could be some clues as to Irenicus' plans. */ + LK#NindeBAbd_EXAMIREN
  ++ @55 /* Stop your complaining and fall into formation.  We leave when I say we leave. */ + LK#NindeBAbd_LEVWENLEV
END

IF ~~ LK#NindeBAbd_ELEMENT
  SAY @70 /* In a tomb?  Lovely.  Suffice to say I am not in my element.  I simply wish to leave.  Can we, <CHARNAME>? */
  ++ @51 /* There are still a few things we need to do, but we will leave as soon as . */ + LK#NindeBAbd_OUTTAHER
  ++ @52 /* I have no liking for it either.  Come. */ + LK#NindeBAbd_OUTTAHER
  ++ @58 /* Still, a few kind words for your gallant rescuer wouldn't go amiss! */ + LK#NindeBAbd_AEMISS
  ++ @53 /* That's strange, I assumed you'd be in your element in a place like this. */ + LK#NindeBAbd_ELEMENT
  ++ @54 /* Perhaps we should think about examining this place a little more thoroughly before we leave.  There could be some clues as to Irenicus' plans. */ + LK#NindeBAbd_EXAMIREN
  ++ @55 /* Stop your complaining and fall into formation.  We leave when I say we leave. */ + LK#NindeBAbd_LEVWENLEV
END

IF ~~ LK#NindeBAbd_EXAMIREN
  SAY @71 /* As you would have it, but the sooner we leave the sooner I will feel right again.  As it is, everything in this place sickens me, including you, Bhaalspawn. */
  ++ @60 /* What?  That was a bit of an unwarranted attack, don't you think? */ + LK#NindeBAbd_UNWARRANT
  ++ @61 /* What in the realms have I done to you, woman, to deserve such venom? */ + LK#NindeBAbd_UNWARRANT
  ++ @62 /* If I've done something to offend you, I'm certainly unaware of it.  Care to clarify for me why, exactly, I sicken you? */ + LK#NindeBAbd_UNWARRANT
  ++ @63 /* If this is how you treat your rescuer I'll know to leave you to your own devices next time.   */ + LK#NindeBAbd_OWNDEV
  ++ @64 /* Fine.  You can make your own way out, then. */ + LK#NindeBAbd_WAYOUTDEN
END

IF ~~ LK#NindeBAbd_LEVWENLEV
  SAY @72 /* <<placeholder>> */
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) SetGlobal("LK#NindeRomanceActive","GLOBAL",3) EraseJournalEntry(@26 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late. */)~ SOLVED_JOURNAL @68 /* The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal. */ EXIT
END

IF ~~ LK#NindeBAbd_AEMISS
  SAY @73 /* I am not here for your pleasure, <CHARNAME>.  Now let me leave before I UNWARRANT entirely. */
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) EraseJournalEntry(@26 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late. */)~ SOLVED_JOURNAL @68 /* The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal. */ EXIT
END

IF ~~ LK#NindeBAbd_UNWARRANT
  SAY @74 /* I really don't know.  I don't know who should disgust me and who should please me anymore.  Get me out of here, <CHARNAME>, I need to breathe real air again before I can think real thoughts. */
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) EraseJournalEntry(@26 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late. */)~ SOLVED_JOURNAL @68 /* The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal. */ EXIT
END

IF ~~ LK#NindeBAbd_OWNDEV
  SAY @75 /* If you wish.  I do not wish to discuss this now.  I must breathe real air again before I can think real thoughts. */
  IF ~~ DO ~JoinParty() SetGlobal("LK#NindeJoined","GLOBAL",1) EraseJournalEntry(@26 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late. */)~ SOLVED_JOURNAL @68 /* The Final Battle with Bodhi.

While I had feared that Bodhi's revenge upon me was Ninde's death, she was not physically harmed, but does seem a little disturbed by her ordeal. */ EXIT
END

IF ~~ LK#NindeBAbd_WAYOUTDEN
  SAY @76 /* I will do so.  I must breathe real air again before I can think real thoughts, whether you are with me or not.  Farewell, <CHARNAME>. */
  IF ~~ DO ~EscapeArea() EraseJournalEntry(@26 /* The Final Battle with Bodhi.

Bodhi appeared in an ambush shortly before I reached her haven, warning me that she was aware of my pursuit and attempting to steal from me the one person that is dearest to my heart: Ninde.  Of course, Ninde would not be so easily taken; apparently the Ankh she wears protects her from being vampirised.  Nonetheless, she has been taken from me.  Before Bodhi vanished and unleashed more of her undead creations upon me, she threatened Ninde's life.  I cannot give up on the Rhynn Lanthorn...but now the life and immortal soul of the one I love is at stake.  I must save her before it becomes too late. */)~ EXIT
END

END