// ---------------------------------------------
// Ninde Out of Party dialogue
// ---------------------------------------------
BEGIN LK#NIND

// Joining Dialogue
IF ~NumTimesTalkedTo(0)~ LK#NindeJoin
  SAY @0 /* Why.  Hello there, my <PRO_LADYLORD>.  I certainly did not expect to see *you* so soon.  But here you are, swords drawn and spells-a-blazing.  It's all rather sweet. */
  ++ @1 /* Hah!  Another bloodsucking fiend!  I shall take great pleasure in disposing of you, vampire. */ + LK#NJ_bloodsuck
  ++ @2 /* You're awfully condescending for someone about to be introduced to her own innards. */ + LK#NJ_bloodsuck
  ++ @3 /* What is a creature as lovely as you doing here, mm?  Certainly this is no place for a lady. */ + LK#NJ_hiton
  ++ @4 /* You speak as though you know my mind--I do not like it. */ + LK#NJ_mymind
END

IF ~~ LK#NJ_bloodsuck
  SAY @5 /* Do not be so hasty to reach for your weapons, <CHARNAME>.  And do not look so surprised that I know your name, either.  My mistress has been blathering inanely about you for nigh-on weeks.  It got rather tedious, I can tell you. */
  IF ~~ + LK#NJ_bloodsuck2
END
  
IF ~~ LK#NJ_bloodsuck2
  SAY @6 /* But before I get carried away, allow me to introduce myself.  I am Lady Ninde Amblecrown; but you may call me Ninde. */
  ++ @7 /* So you admit that Bodhi is your mistress, then? */ + LK#NJ_bodhimistress
  ++ @8 /* What is this?  Formal introductions in the middle of a battle?  You're wasting my time, elf. */ + LK#NJ_introduction
  ++ @9 /* Blah, blah.  I grow bored.  I think it's time to see if your fighting is as good as your talking. */ + LK#NJ_fight
END

IF ~~ LK#NJ_hiton
  SAY @10 /* Goodness.  I certainly did expect a slightly more aggressive reception from you, being a Bhaalspawn and such.  Heh, do not look so surprised that I know of your heritage--my mistress has been blathering inanely about you for nigh-on weeks. */
  IF ~~ + LK#NJ_bloodsuck2
END

IF ~~ LK#NJ_mymind
  SAY @11 /* Your mind is one of the few things connected with you that I *don't* know, <CHARNAME>.  Ah, do not look so surprised that I recognise you--my mistress has been blathering inanely about you for nigh-on weeks. */
  IF ~~ + LK#NJ_bloodsuck2
END

IF ~~ LK#NJ_introduction
  SAY @12 /* Well, I think it only fitting we get off on the right foot, start as we mean to continue and all that, if you are to be my leader from now on, <CHARNAME>. */
  ++ @13 /* Oh?  Do go on... */ + LK#NJ_join
  ++ @14 /* I think I see what you're getting at, my dear. */ + LK#NJ_join
  ++ @15 /* Do not make me laugh, fiend!  Draw swords! */ + LK#NJ_fight
END

IF ~~ LK#NJ_fight
  SAY @16 /* Ah, then you are surely as dense as I assumed you would be.  Pity, but you can't blame a girl for trying.  I had hoped this wouldn't end in combat, but never mind.  You shall not take me as easily as you have these other beasts. */
  IF ~~ DO ~Enemy() Attack(Player1)~ EXIT
END

IF ~~ LK#NJ_join
  SAY @17 /* Since my present mistress will be indisposed in the near future, I propose an advantageous union between the two of us. */
  ++ @18 /* And what skills could you contribute to our group? */ + LK#NJ_skeelz
  ++ @19 /* No, I think not.  Now--quick.  Be on your way, elf, before I change my mind about killing you. */ + LK#NJ_thinknot
  ++ @20 /* I'm afraid I don't much trust you, elf.  I think the only sensible thing to do at this juncture would be to end your miserable little life, don't you agree?  Stand still, and I promise I'll make it fast. */ + LK#NJ_miserablelife
END

IF ~~ LK#NJ_thinknot
  SAY @21 /* Well, that certainly is a shame.  We could have had a beautiful partnership you know, you and I.  If you happen to change your mind then you might find me in a charming little stink pit close to the city gates, absorbing the local ambience.  The Crooked Crane--I hope to see you there, my little strawberry. */
  IF ~~ DO ~SetGlobal("LK#NindeSpawnCrooked","GLOBAL",1) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ LK#NJ_miserablelife
  SAY @22 /* I suppose it was too much to hope that one with such a reputation as a brain-addled monkey would see reason.  And I suppose it is too much to hope that one with such a reputation as a warrior might be defeated by me.  Nonetheless, you'll not take me without a fight, Bhaalspawn. */
  IF ~~ DO ~Enemy() Attack(Player1)~ EXIT
END

IF ~~ LK#NJ_skeelz
  SAY @23 /* I am a Necromancer of no mean talent.  Mm...and of course, I would provide that extra touch of...class, which adventuring parties such as yours often lack.  So, what say you, Bhaalspawn? */
  ++ @24 /* Yes.  You seem most capable--it will be a pleasure to have you join us. */ + LK#NJ_joinus
  ++ @25 /* Well...all right then.  You better lose that treacherous streak though. */ + LK#NJ_treachery
  ++ @26 /* Sorry...we don't really need a Necromancer on the party right now.  Plus...you're kind of spooking me out a little... */ + LK#NJ_spookout
END

IF ~~ LK#NJ_treachery
  SAY @27 /* Me?  Treacherous?  Never.  I am merely opportunistic.  Ensure that staying with you is the most profitable course for me, and I shall not turn my dagger on you.  Although your concern is most prudent--it would have been foolish of you not to doubt my reliability, all circumstances considered.  But, that aside.  Onward...to fortune and glory, or somesuch. */
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ LK#NJ_joinus
  SAY @28 /* And indeed, provided you keep the Cowls off my back, and some gold in my purse, I'm sure it shall be a pleasure to serve you, <CHARNAME>. */
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ LK#NJ_spookout
  SAY @29 /* Pfft, I suppose it is your choice, Bhaalspawn.  What with the impending slaughter, my sense of preservation demands I must head elsewhere.  Should you change your mind, you might find me in a rather charming little establishment at the City Gates, named the Crooked Crane.  You'll recognise it, I'm sure, sweetness.  Have some nice, violent fun. */
  IF ~~ DO ~SetGlobal("LK#NindeSpawnCrooked","GLOBAL",1) ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

CHAIN LK#NIND LK#NJ_bodhimistress
  @30 /* I admit to nothing of the sort.  I serve myself, and myself only.  The 'arrangement' I had with Bodhi was merely a convenience.  But I think that your presence here rather renders said arrangement void.  In fact, I have a proposition for you, <CHARNAME>. */
  == ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31 /* So this self-confessed traitor of an elf wishes to join us, I assume?  No doubt she thinks her beguiling manner will protect her from harm at the hands of those that would uphold goodness and virtue.  Bah, <CHARNAME>, I suppose I shall suffer her company if you will it. */
  == HAERDAJ IF ~InParty("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN @32 /* And so a strange fae glides from amidst the impermeable shadows with a mysterious glint in her eyes--aye, a dark creature she is, and as with all dark creatures, she no doubt has hidden claws.  Be on your guard, my raven. */
  == JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @33 /* I don't trust this Ninde at all, <CHARNAME>.  If you choose to deal with her further, I suggest practising extreme caution. */
  == YOSHJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @34 /* Ah, so this...this is Lady Amblecrown.  She is fairly well known amidst more, ah, unsavoury circles, <CHARNAME>.  The word was she likes to set herself up with whoever the big power is...But I assumed the Waterdhavian authorities caught up with her, as she has not been heard from in a few years.  I would certainly not be opposed to having her join us...That is, of course, if you are not. */
END
  ++ @35 /* Oh?  Do go on, Ninde… */ EXTERN ~LK#NIND~ LK#NJ_join
  ++ @36 /* And I have a proposition for YOU, elf--have at you! */ EXTERN ~LK#NIND~ LK#NJ_fight
  ++ @37 /* I think I can see where this is going. */ EXTERN ~LK#NIND~ LK#NJ_join
  

APPEND ~LK#NIND~
// Joining dialogue two
IF ~Global("LK#NindeJoined","LOCALS",0)~ LK#NJ2_intro
  SAY @38 /* Oh, it's you again.  I see you're walking and talking, so congratulations, you've exceeded my expectations.  Have you come about our little...business proposal? */
  ++ @39 /* Indeed I have.  We could use your skills, if you're still interested. */ + LK#NJ2_joinplz
  ++ @40 /* Ha, nope.  I just came to watch a fine lady such as you marinating in this hole.  Amusing to say the least. */ + LK#NJ2_nopes
  ++ @41 /* No, we just happened to be nearby.  It's good to see you again, Ninde. */ + LK#NJ2_niceno
  ++ @42 /* Actually, I've decided to kill you. */ + LK#NJ2_violence
END

IF ~~ LK#NJ2_joinplz
  SAY @43 /* Ah, it's refreshing to know you've some remnant of common sense, Bhaalspawn.  One can go far on a little common sense in this city, it seems.  Very well, onward to glory and wealth, or something equally banal. */
  IF ~~ DO ~SetGlobal("LK#NindeJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ LK#NJ2_nopes
  SAY @44 /* I suppose simple things amuse the simple-minded.  Get your gawking done and leave, because your fat simian face is rather ruining the otherwise charmingly quaint scenery, peasant. */
  IF ~~ EXIT
  IF ~InParty("Korgan") InParty("Edwin") !StateCheck("Korgan",CD_STATE_NOTVALID) !StateCheck("Edwin",CD_STATE_NOTVALID)~ EXTERN ~KORGANJ~ LK#NJ2_korgan
END

IF ~~ LK#NJ2_niceno
  SAY @45 /* How awfully sentimental.  I have little time for chitchat, Bhaalspawn.  Apologies for curtailing our little discourse, but more important matters call. */
  IF ~~ EXIT
END

IF ~~ LK#NJ2_violence
  SAY @46 /* I knew you were a dimwit the moment I set eyes on you, Bhaalspawn.  Truly, I pity you.  But I'm afraid you'll not have my blood today.  I wish Bodhi luck in gutting you, like she did your friend.  Imoen, is it?  Yes, I remember the little redhead screaming for mercy as her entrails were torn from her.  It did make for spectacular entertainment.  Farewell, my dear.  I'm sure we'll meet again. */
  IF ~~ DO ~ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END
END

APPEND ~KORGANJ~
IF ~~ LK#NJ2_korgan
  SAY @47 /* Och, Edwin, the spellchuckin' wench has a sharper tongue than you!  'Tis a good job she'll not be joining us, since I couldn't bear the both of ye, and she just happens to be a nicer shape. */
  IF ~~ EXIT
END
END