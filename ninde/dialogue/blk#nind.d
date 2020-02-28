// ---------------------------------------------
// Ninde Banters
// ---------------------------------------------
BEGIN BLK#NIND


// -------------------------------------
// Ninde/Aerie Dialogue
// -------------------------------------
// Ninde/Aerie 1
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeAerie","GLOBAL",0)~ THEN BLK#NIND LK#NindeAerie_1
@0 /* So, Aerie, have you ever considered wearing some different clothing?  Something more revealing, perhaps?  It looks like you have attributes well worth showing off, but you hide them as a dragon does its horde. */
DO ~SetGlobal("LK#NindeAerie","GLOBAL",1)~
== BAERIE @1 /* Th-thankyou, Ninde, but Uncle Quayle always said that I ought to...to preserve my modesty, and that dressing sc-scantily merely attracts the wrong kind of attention. */
== BLK#NIND @2 /* Your Uncle Quayle sounds like a little bit of a cretin.  It is not as though I'm suggesting stripping naked and shackling yourself to a post outside the Copper Coronet at closing time, but flashing a little flesh here and there never did a girl any harm, providing she's sensible about it. */
== BAERIE @3 /* You--you seem to know so much about men, Ni-ninde. */
== BLK#NIND @4 /* I know they're unpleasant creatures who stomp about lots and don't like to be told they're wrong.  It's also generally best to placate them then clean up whatever mess they make with minimal complaint – */
== BAERIE @5 /* Placate them?  But Ninde, you– */
== BLK#NIND @6 /* Let me finish, girl.  Clean up whatever mess they make with minimal complaint, then in the evening, just as he's settling down with an ale and a good tome, you take a sewing needle, the thinnest kind possible, and you slide it in to– */
== BAERIE @7 /* I'm--I'm not sure I want to hear this! */
== BLK#NIND @8 /* Fine.  When you're married to a fat oaf who flirts with the local tavern wenches and still expects a hot plate of stew on the table every night when he comes in from the fields, you can come up with your own flawless murder plan.  Ungrateful chit. */
EXIT

// Ninde/Aerie 2
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeAerie","GLOBAL",1)~ THEN BLK#NIND LK#NindeAerie_2
@9 /* So you're a winged elf?  Fascinating.  I believe I read somewhere your kind are driven nearly to extinction.  Word is times are hard for obscure elven subraces. */
DO ~SetGlobal("LK#NindeAerie","GLOBAL",2)~
== BAERIE @10 /* Yes, the expansion of mankind into what was our territory has meant that- */
== BLK#NIND @11 /* So nothing to do with hunting, then?  Do people not hunt Avariel? */
== BAERIE @12 /* N-no...I've never heard of that, though I don't doubt there are some—some sick individuals who w-would derive pleasure from doing so. */
== BLK#NIND @13 /* Indeed!  I'm sure your kinsman would fall out of the sky with a most satisfying thump when hit.  Whish!  Scream!  Thump!  Heh. */
== BAERIE @14 /* N-Ninde! */
== BLK#NIND @15 /* Or perhaps you would crunch.  Due to the physics of flight, you have hollow skeletons, do you not? */
== BAERIE @16 /* Yes, but- */
== BLK#NIND @17 /* So, If I was to say,  push you off a bar stool, you'd break?  You unfortunately delicate creature, you! */
= @18 /* Oh, don't look at me like that, sweetness.  I'd never dream of pushing you off a bar stool.  I'd be far too pleased at seeing you on one in the first place. */
EXIT

// Ninde/Aerie (in forest)
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
AreaType(FOREST)
!See([ENEMY])
Global("LK#NindeAerie_forest","GLOBAL",0)~ THEN BAERIE LK#NindeAerie_forest
@19 /* Nin-Ninde...I believe you've s-some experience with herbs.  This...this Ragwort, here, I--I heard it can be used to make a healing balm? */
DO ~SetGlobal("LK#NindeAerie_forest","GLOBAL",1)~
== BLK#NIND @20 /* That's Mallow, darling, not Ragwort, and secondly, were you to make it into a balm you'd most likely give yourself a nasty rash.  Shar knows what you did before you had me to supervise your botanical exploits. */
== BAERIE @21 /* Mallow?  Oh...oh, so it is.  You'll have to forgive me if I make mistakes, but I-I'm only just beginning to acquaint myself with the plants of the forest...back in the circus I- */
== BLK#NIND @22 /* You can take the Avariel out of the circus but you can't take the circus out of the avariel.  Cease your bleating, girl.  I used to have a soul once, but somehow I manage to restrain my inner Aerie and continue with what little life I have left.  Perhaps you should try to do the same. */
EXIT

// Ninde/Aerie (romance conflict)
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("LK#NindeAerie_pcromance","GLOBAL",0)~ THEN BAERIE LK#NindeAerie_pcromance
@23 /* So, Ninde...y-you and <CHARNAME> seem to be talking a lot lately. */
DO ~SetGlobal("LK#NindeAerie_pcromance","GLOBAL",1)~
== BLK#NIND @24 /* And fortunately for you, Aerie, we have done nothing else. */
== BAERIE @25 /* W-what do you mean, Ninde? */
== BLK#NIND @26 /* I mean simply that I am not here to ingratiate myself with your little swain.  Your schoolyard attempts to woo him are a most amusing diversion indeed.  Please, honeybunch, don't be put off by this little necromancer! */
== BAERIE @27 /* Are...are you suggesting that I...I am enamoured of him? */
== BLK#NIND @28 /* Your quaint notions of chivalry and romance are understandable, I suppose, and your admiration sweet, however inadvisable.  You will only be disappointed, after all, when you realise he is a man, with all the grime, grit and gristle.  No man is worthy of such idolisation. */
== BAERIE @29 /* I--I believe that <CHARNAME> is a brave, kind and worthy man who deserves honest admiration and that perhaps if you weren't so s-self involved, you'd realise that! */
EXIT

// -------------------------------------
// Ninde/Anomen Dialogue
// -------------------------------------
// Ninde/Anomen (pre-test) 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeAnomen","GLOBAL",0)~ THEN BANOMEN LK#NindeAnomen_1
@30 /* My lady, have I ever told you of the time when- */
DO ~SetGlobal("LK#NindeAnomen","GLOBAL",1)~
== BLK#NIND @31 /* The Hillgnasher giants?  Yes.  Or will it be Trolls this time?  Is spontaneous storytelling your only talent, Anomen, or can you balance an orange on your nose as well? */
== BANOMEN @32 /* You doubt the truth in my tales?  Perhaps it is difficult for one such as you to believe such great acts of valour occur, having never witnessed such yourself. */
== BLK#NIND @33 /* My dear, the only way you could get me to believe your whimsical fabrications would be by feebleminding me in my sleep.  I know enough about lying to know when someone else is doing it. */
== BANOMEN @34 /* Your cynicism is a result of your lifestyle amongst the bottom-feeders of the Waterdhavian underworld.  Truly no atmosphere for a Lady of your birth, though as it was not a life of your choosing, I am prepared to give you the benefit of the doubt. */
== BLK#NIND @35 /* Are you always this patronising, or is it just a special occasion?  I do not take kindly to condescension, particularly not from puffed up little paladins who lack the brainpower recquired to operate a doorknob.  Oh, wait, I forgot.  You're not even a paladin.  Silly me. */
== BANOMEN @36 /* I beg of you, do not try my patience, woman, for while your honeyed words may prove a sound defence against the righteous anger of some, they shall not deter *me*. */
== BLK#NIND @37 /* Oh, believe me, Anomen, my words to you are completely un-honeyed.  You're not worth the effort, boy. */
EXIT

// Ninde/Anomen (post-test) 2
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
OR(2)
  Global("AnomenIsKnight","GLOBAL",1)
  Global("AnomenIsNotKnight","GLOBAL",1)
Global("LK#NindeAnomen","GLOBAL",1)~ THEN BLK#NIND LK#NindeAnomen_2
@38 /* Hmm...You really are quite miraculous, Anny...your build...so much muscle... */
DO ~SetGlobal("LK#NindeAnomen","GLOBAL",2)~
== BANOMEN @39 /* *Ahem*...I--I beg your pardon? */
== BLK#NIND @40 /* ...It's like someone shaved a bear and taught it how to walk on its hind legs, it really is. */
== BANOMEN @41 /* Why must you continually spit your venom at me, woman? */
== BLK#NIND @42 /* Because you're a pompous ass, and because teasing you is *fun*.  What do you expect, bumbling ineptly through life as you do?  It's embarrassing to watch, actually. */
== BANOMEN @43 /* I do not see why <CHARNAME> endures your company, witch. */
== BLK#NIND @44 /* Because unlike you, I'm useful. */
== BANOMEN @45 /* I believe you are lacking in every quality that separates us from the fiends and aberrations we fight, Ninde, and that someday you'll realise your attitude brings you nothing but misfortune. */
EXIT

// Ninde/Anomen (post-test) 3
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
OR(2)
  Global("AnomenIsKnight","GLOBAL",1)
  Global("AnomenIsNotKnight","GLOBAL",1)
Global("LK#NindeAnomen","GLOBAL",2)~ THEN BLK#NIND LK#NindeAnomen_3
@46 /* I feel we should clear the air, Anomen.  I've been a foul harpy to you, and you don't deserve it.  Here, shake my hand, and we can start afresh. */
DO ~SetGlobal("LK#NindeAnomen","GLOBAL",3)~
== BANOMEN @47 /* Why are you suddenly so eager to reconcile, Ninde?  I cannot pretend I am not suspicious. */
== BLK#NIND @48 /* Anny!  A girl tries to extend the olive branch, as it were, and this how she is treated?  This is the kind've thing that makes people turn evil, you know. */
== BANOMEN @49 /* (sigh) Fine, here, if it really makes you happy. */
== BLK#NIND @50 /* See, no need for suspicion. */
== BANOMEN @51 /* Well I'm glad that we- AaahHH! */
== BLK#NIND @52 /* Hah!  Handfang spell! */
== BEDWIN IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @53 /* Hah!  I told you the great pillock would fall for it, did I not? */
== BIMOEN2 IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @54 /* Ninde, I like the odd joke as much as the next girl, but it isn't right when people get hurt. */
== BANOMEN @55 /* You vile wench, using your magics against the unsuspecting.  Your infantile pranks have gone too far, woman.  Speak not to me again. */
== BLK#NIND @56 /* Oh, Anny...it was just a little fun...besides, I have to practice or I get rusty. */
== BANOMEN @57 /* Leave me be, witch.  You are fortunate I do not take my weapon to you. */
== BLK#NIND @58 /* Some people just have no sense of humour. */
EXIT


// -------------------------------------
// Ninde/Cernd Dialogue
// -------------------------------------
// Ninde/Cernd 1
CHAIN IF ~Global("LK#NindeCernd","GLOBAL",1)~ THEN BLK#NIND LK#NindeCernd_1
@59 /* Why, in Velsharoon's name, are you waving a dead rabbit at me? */
DO ~SetGlobal("LK#NindeCernd","GLOBAL",2)~
== BCERND @60 /* Ninde, we netted this beauty of a buck on our last excursion...would you care to skin it?  It would make quite the tasty stew, if cooked by the right hand. */
== BLK#NIND @61 /* And you judge 'the right hand' to be mine?  I, who would probably set fire to a cow if I attempted to milk it?  I'm a necromancer, not a scullery maid, darling. */
== BCERND @62 /* Ninde, you really cannot expect to eat our food and yet never have any part in its production.  You must contribute somehow, or like a bee-hive without each drone doing its part, they will never produce honey. */
== BLK#NIND @63 /* And as you will know, drone-boy, each hive also has its queen, and she is completely uninvolved in the honey-production process.  She lazes around in her bed mantle being served Calimshan blue cheese sandwiches.  I view myself as more the queen of this party. */
== BCERND @64 /* Ah, but is it not also the queen who must eventually die for the hive to perpetuate? */
== BLK#NIND @65 /* Yes, but I am a different kind of queen.  I have laid distinctly less eggs in my life time, and find yellow and black rather garish when laid side by side.  And besides, I can't skin your stupid rabbit.  I, er...cannot stand the sight of blood.  I come over all faint! */
EXIT

// Ninde/Cernd 2
CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeCernd","GLOBAL",2)~ THEN BLK#NIND LK#NindeCernd_2
@66 /* Ah, the sweet intricacies of the body!  Cernd, as hot as you are on leaves and such like, surely you can agree that nothing matches the vast and precise networks of a human heart in beauty and efficiency? */
DO ~SetGlobal("LK#NindeCernd","GLOBAL",3)~
== BCERND @67 /* What...what is that? */
== BLK#NIND @68 /* A heart.  Still warm!  Our foes need not completely go to waste.  I've certainly encountered some interesting specimens in the company of <CHARNAME>.  Ahh, it reminds me of the first days of learning my trade.  Days in my father's study, bent over a steaming frog corpse... */
== BCERND @69 /* This is...this is ghoulish, Ninde, and has no purpose!  Leave our foes to their final peace. */
== BLK#NIND @70 /* I should've known you'd disapprove.  Druids.  If it truly distresses you so, then you can take yourself and your abundancy of chest hair elsewhere, as I seem to remember you doing your fair part in tearing them to ribbons in the first place. */
== BCERND @71 /* Nature should not be carved for study.  You can learn far more with the eyes of a hawk than the maw of a bear.  I ask that you do not do this in my presence again. */      
EXIT

// Ninde/Cernd 3
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeCernd","GLOBAL",3)~ THEN BCERND LK#NindeCernd_1
@72 /* I have heard of the secret cabals of Druids that operate in the water-hollowed underground caverns of Waterdeep, Ninde.  Tell me, have you ever encountered one of these groups? */
DO ~SetGlobal("LK#NindeCernd","GLOBAL",4)~
== BLK#NIND @73 /* Encountered, quite possibly slaughtered.  Your kind aren't known for being the most cordial to necromancers.  Or to any one who likes wearing fur.  I meet both criteria.  Oh, and I do so love a big unicorn haunch, cooked extra rare! */
== BCERND @74 /* *Unicorn* meat? */
== BLK#NIND @75 /* I jest, Cernd, I jest. */
== BCERND @76 /* It is true your magics would be abhorrent to most of my order, but I wonder if violent confrontation is really the most effective way to deal those who subvert nature's rulings. */
== BLK#NIND @77 /* I heartily agree.  I'd much prefer a little present. */
== BCERND @78 /* You're in a silly mood today, Ninde, if I'm not much mistaken. */
EXIT


// -------------------------------------
// Ninde/Edwin Dialogue
// -------------------------------------
// Ninde/Edwin 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeEdwin","GLOBAL",0)~ THEN BEDWIN LK#NindeEdwin_1
@79 /* You there, mage.  Your face paint, has it any magical significance?  Or did you simply think it looked pretty?  The Art is better left to the professionals such as I, Ninde, not little girls with a penchant for face paints.  (Pathetic wench - her talents could be far better used in my bedroll.  Some mages will stoop so low in order to make an impression, bah.) */
DO ~SetGlobal("LK#NindeEdwin","GLOBAL",1)~
== BLK#NIND @80 /* By 'professionals', I suppose you mean yourself and the rest of your balding friends.  At this juncture I'd also like to point out that I'm not the one with the silly accent and a chain wrapped around my nose.  Your nose is, incidentally, bulbous enough to support an entire family of duergar quite comfortably. */
== BEDWIN @81 /* It is not bulbous, it is regal - *regal*!  But while we're on the topic of oversized features, are you sure an Ankheg has not established itself in one of those enormous, flappy protrusions on either side of your otherwise well-proportioned cranium? */
== BLK#NIND @82 /* Actually, I'd always been told my ears were rather...well, cute.  Mmm...Don't you think so, Eddy?  Can I call you Eddy...?  I've always thought they simply complemented my remarkably 'well-proportioned' cranium. */
== BEDWIN @83 /* Yes, well.  If you don't mind waiting till later to revel in your own feminine triumph...(Bah!) Your markings, girl; are they magically significant? */
== BLK#NIND @84 /* Wouldn't you like to know.  I suppose if I say they are you'll come wandering up to me tomorrow sporting your own badly-implemented versions...suffice to say, they are not magical, but they are indeed significant.  Are you sated, Eddy? */
== BEDWIN @85 /* Quite.  Although you should not act as though interacting with me is such a chore.  Think of the many gasping virgins who would be honoured to receive my attention.  (Hmm...yes.  Virgins.  That will do well.) */
EXIT

// Ninde/Edwin 2
CHAIN IF
~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeEdwin","GLOBAL",1)~ THEN BLK#NIND LK#NindeEdwin_1
@86 /* Lend me your quill Eddy.  That nice big eagle feather one. */
DO ~SetGlobal("LK#NindeEdwin","GLOBAL",2)~
== BEDWIN @87 /* If you can, with your limited intellect, conjure up a terribly compelling reason why I should allow you to lay your grubby little paws on my equipment, big-ears, then- hmm.  (Such an appealing image.  Come to think of it, I may have *some* equipment I would gladly allow her to lay her paws on.) */
== BLK#NIND @88 /* Eddy, I believe you're the expert at conjuration here, though apparently not the expert at subtle innuendo.  Are you aware I heard everything you just said, Thayvian? */
== BEDWIN @89 /* Bah, yes, quite aware!  So...what say you, Nin- */
== BLK#NIND @90 /* I say that my paws are too good for your 'equipment,' and aren't going anywhere near it without severe enticement. */
== BEDWIN @91 /* Well I say the mere thought of my flesh beneath your most unworthy hands should be enticement enough, wench!  (Although if it isn't, there are a few silvers I've been keeping in my sock for *just* such an occasion ...hmm, I wonder how much she would be?) */
== BLK#NIND @92 /* (Sniffle) Silvers...?  Silvers are all I'm worth to you, Eddy?  Quite frankly, I'm saddened....Even the dockside floozies of Waterdeep'll charge you a gold piece or two for a quick fumble, and most of them have more chins then teeth. */
EXIT


// Ninde/Edwin 3
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeEdwin","GLOBAL",2)~ THEN BEDWIN LK#NindeEdwin_2
@93 /* When was it you first decided to dedicate yourself to corpsefiddling, wench?  Your beauty would recommend you to enchantment...(Yes, that should do well--she shall be begging for a night in my bedroll yet!) */
DO ~SetGlobal("LK#NindeEdwin","GLOBAL",3)~
== BLK#NIND @94 /* 'Corpsefiddler', indeed.  My Edwin, you sly fox, you really know how to charm a girl.  In answer to your question, death has followed me from birth, why not utilise it? */
== BEDWIN @95 /* Necromancy is a messy business.  What with the skulking round graveyards, collecting bones and ichor-soaked bandages.  (Speaking of ichor, it may account for those rather...interesting stains on the hem of her robe.  Or they could be something else.) Regardless, conjuration is truly the most powerful of the schools. */
== BLK#NIND @96 /* Or so you believe.  Personally I find creating a troupe of hollow-eyed, mindless skeletons that obey my every order slightly more appealing then having to run round after the little flea-ridden monstrosities you seem to specialise in.  Honestly, what is it you cast?  Nuisance Summoning? */
== BEDWIN @97 /* Hardly, big ears!  My summoning has come on along way since...the...*shudder*...since the kobolds. */
== BLK#NIND @98 /* And right glad I am to.  The parasites those horrid cackling creatures are rife with seem to find me as delectable as you do, Eddy.  Last time you decided to call on the lord of dog-monsters or what have you I was shaking fleas out of my robes for weeks.  I got bitten all over. */
== BEDWIN @99 /* Oh ho...do you mean *all* over?  Perhaps next time you should let me take a look at all those bites.  I am a mage, after all...I might be able to devise some kind of magical remedy...*anything* to ease your suffering, Ninde. */
== BLK#NIND @100 /* How sweet of you, Eddy.  If I didn't realise this was all just a ruse to get in my skirts I'd almost be touched. */
EXIT

// Ninde/Edwina 1
CHAIN IF
~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Gender("Edwin",FEMALE)
Global("LK#NindeEdwina","GLOBAL",0)~ THEN BLK#NIND LK#NindeEdwina_1
@101 /* You should've let me take a look at that scroll, you bull-headed Thayvian.  Now look at you!  You're nearly as pretty as I am.  It's rather infuriating. */
DO ~SetGlobal("LK#NindeEdwina","GLOBAL",1)~
== BEDWIN @102 /* *Nearly* as pretty, big-ears?  I make you look like a night hag. */
== BLK#NIND @103 /* Hardly, although if you got rid of all those unsightly hairs on your upper lip and refined your brows a little more you'd certainly be rather more toothsome.  Care to borrow my tweezers? */
== BEDWIN @104 /* Darling, you're an absolute angel! --I mean--Ah, away from me, slattern!  You simply cannot face that no matter what form I inhabit, male or female, I am your superior in both looks and magical skill. */
== BLK#NIND @105 /* It's nice to see that deep down, you haven't changed a bit.  But really!  I'm thrilled!  Another lady to talk to.  Perfume, flowers, undergarments, and male ineptitude.  You might actually find yourself enjoying it, Edwina. */
== BEDWIN @106 /* I have no interest in idle banter, woman...wait...undergarments, you say...?  Perhaps I should give this 'lady talk' a chance... */
EXIT


// -------------------------------------
// Ninde/Haer'Dalis Dialogue
// -------------------------------------
// Ninde/Haer'Dalis 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeHaer","GLOBAL",0)~ THEN BHAERDA LK#NindeHaer_1
@107 /* So, my fascinating new companion...I do not pretend to be an expert in the social habits of elves upon Toril, but even I know that to find one amidst the sanguine inhabitants of a boneyard is virtually unheard of.  How did you find yourself in the company of those loathsome creatures? */
DO ~SetGlobal("LK#NindeHaer","GLOBAL",1)~
== BLK#NIND @108 /* I owed someone a favour, and I'd rather appreciate it if you removed your interplanar nose from my affairs, before I sock you in the jaw.  Bards. */
== BHAERDA @109 /* And the kitten unsheathes her claws!  Ninde, my temperamental friend, you always seem perfectly willing to play until someone strokes you up the wrong way! */
== BLK#NIND @110 /* I don't like being stroked at all by anyone who isn't aesthetically appealing and suitably rich.  Unfortunately for you, my plane-skipping friend, you fit neither description.  Go and flounder around with your two toothpicks a little more.  If you take your shirt off, I might just watch. */
== BHAERDA @111 /* Ninde, I have never been so utterly confused and intrigued by a woman as I am by you.  It's completely infuriating.  Thank Beshaba you're such a singular creature or the Faerunian birth rate would plummet. */
EXIT

// Ninde/Haer'Dalis 2
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("LK#NindeHaer","GLOBAL",1)~ THEN BHAERDA LK#NindeHaer_2
@112 /* How thrilling!  To journey through the velveteen shadows of this lethal under-realm, our cunning guise all that stands between us and the ire of the shadow-skinned elves who we imitate!  Do you not agree that our journey has taken a most exhilarating turn, Ninde? */
DO ~SetGlobal("LK#NindeHaer","GLOBAL",2)~
== BLK#NIND @113 /* I'd rather be snuggled up in bed with a good book, thank you very much.  It's dark down here and things keep shooting crossbows at me. */
== BHAERDA @114 /* Ooh, you pine for a warm fireplace and saucer of milk?  Ninde, I know that deep down your lust for adventure and zeal for discovery rivals my own.  Your new form, at least...surely you find your shadowy little body a fascinating development in our quest? */
== BLK#NIND @115 /* A bloody impractical one, too.  I don't know how it is these drow maids carry off all the chainmail so fashionably, because I most certainly can't. */
== BHAERDA @116 /* When did a mewling kitten replace my sleek panther? */
== BLK#NIND @117 /* Around the time the ale ran out. */
== BHAERDA @118 /* How unfortunate!  You really are as monotonously glum as a cambion who has run out of gold.  Never mind, I shall attempt to lift your spirits with song, my ravening feline! */
== BLK#NIND @119 /* ...joy. */
EXIT

// Ninde/Haer'Dalis 3
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeHaer","GLOBAL",2)~ THEN BHAERDA LK#NindeHaer_3
@120 /* Ah, my honey-tongued kitten.  You have a most poetic turn of phrase, you know?  And an eye for images to turn any aspiring playwright green.  They say it pleases Deneir to flood the odd head with his moonlight. */
DO ~SetGlobal("LK#NindeHaer","GLOBAL",3)~
== BLK#NIND @121 /* My dear, if such a tender God were to touch me, he would undoubtedly get frostbite.  I am merely the product of an expensive education and the thousand romance novels of my adolescence. */
== BHAERDA @122 /* Tsh, my feline, you know as well as I the gift of the gab cannot be taught, but is bred in the bone.  I wonder...perhaps your father was a great poet in his time?  Or your mother as quick-fingered a harpist as a Tuigan with his bow? */
== BLK#NIND @123 /* Or maybe my father was quick-fingered with corset strings and my mother a common elven drab?  Who can say.  Poetry is the last preserve of those with time and money.  As it is, we lack the money to buy a flask of good ale and lack the time to enjoy it.  Still, I can dream...Will you turn a deaf ear to what they said on the shore, interrogate their poises, in their rich houses- */
== BHAERDA @124 /* Of stork-legged heaven-reachers, of the compulsory touchers, the sensitive amusers and masked amazers? */
== BLK#NIND @125 /* (smiles) It is pleasing the work of Endau should translate across the plains. */
== BHAERDA @126 /* The great Endau!  What else did he say?  That she is harshest to the one she loves the most, hmm? */
== BLK#NIND @127 /* I believe he also said something about
nosy blue haired tieflings,
with grotesque body piercings,
who will be very dismayed
at having their faces filleted. */
= @128 /* Get thee away, dear.  (smirk) */
EXIT

// Ninde/Haer'Dalis 4
CHAIN IF ~Global("LK#NindeHaer","GLOBAL",4)~ THEN BHAERDA LK#NindeHaer_4
@129 /* So, Haer, you've probably travelled further afield than the rest of us combined, met with and slept with the world and her sister.  Am I as beautiful and fascinating as many a coal-eyed Calimshite with only a basic grasp of common has claimed me to be in a darkened dock-side dive?  Do I measure up to the plane-fed women of the city of doors?  Flame-haired succubi?  The dangerous and exotic that haunt the folds of our world?  I must know before I die. */
DO ~SetGlobal("LK#NindeHaer","GLOBAL",5)~
== BHAERDA @130 /* I will say what you wish me to say, Ninde, which is that in all my travels no eyes but your forget-me-not-blues have imprinted so soft and so bright upon this bard's soul.  That no body, even among the richest planar-king's harem is so firm and so ripe, that no- */
== BLK#NIND @131 /* I did not ask for flattery, Haer, I asked for the truth. */
== BHAERDA @132 /* The truth is, Ninde, my kitten, you are very beautiful.  But more then this, you are morally ambiguous, cruel and consumptive as acid, bright and sharp as the note of an Evereskan harp yet as ready and red-cheeked as the sauciest of Illuskan barmaids.  But like many great and powerful women, who drive great and powerful men mad, you are greater then the sum of your parts.  You are Ninde and my metaphor dies with a single laugh from those rouged lips.  More than this, you are my friend, and I am proud to call you so. */
== BLK#NIND @133 /* I fear sometimes that I am a bad person. */
== BHAERDA @134 /* When they matter, your decisions are the right ones. */
== BLK#NIND @135 /* Well, I think you're about to find out if death was worth fixating over for so long. */
== BHAERDA @136 /* Or perhaps not.  Perhaps we will both watch our grandchildren growing fat and playing in pleasant gardens yet. */
== BLK#NIND @137 /* *Our* grandchildren? */
== BHAERDA @138 /* Only time knows where she leads us, my kitten! */
== BLK#NIND @139 /* I couldn't see such a union being terribly advantageous to either of us.  I would never do any housework, and you don't particularly seem the feather duster type either.  No, I think it is a more humble man then you that may eventually catch me. */
== BHAERDA @140 /* And all Toril's goodness befall him, for he will have her finest gem!  I kiss your hand now, my Ninde, my kitten, my friend, and may I never hope for more.  Goodbye, if the end this be. */
== BLK#NIND @141 /* My...my friend.  (smirk) I'm please I will have that impassioned monologue to remember you by.  Farewell, my Haer, my blue-haired, my friend. */
EXIT

// Ninde/Haer'Dalis (PC in romance)
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("LK#NindeLoveTalks","GLOBAL",10)
Global("LK#NindeHaer_romance","GLOBAL",0)~ THEN BHAERDA LK#NindeHaer_3
@142 /* I did not think it would be him, my jaguar. */
DO ~SetGlobal("LK#NindeHaer_romance","GLOBAL",1)~
== BLK#NIND @143 /* You must be used to hearing this, dear, but I really don't have the slightest idea what you are talking about. */
== BHAERDA @144 /* I suppose it fits; the raven and the jaguar...both as black as sloe. */
== BLK#NIND @145 /* He is strong...and somehow...other.  I am more intrigued then enamoured. */
== BHAERDA @146 /* This sparrow is not decorous enough to sit atop the gold-gloved hand of a fair Lady, it would seem. */
== BLK#NIND @147 /* And I've never seen a sparrow with as glum a countenance as yours, Haer.  Besides, that is the very nature of the sparrow; when I would feed them from my balcony in Waterdeep, it was their very swooping inconsistency that I liked about them. */
== BHAERDA @148 /* You are right, of course!  There will be other gleaming seeds cast the way of this sparrow, and he will dive and swoop, and perhaps one day swoop high enough. */
== BLK#NIND @149 /* You are only a bard, Haer.  A rogue.  A man of poetry and pennilessness.  How could I call myself a Lady if I indulged every common bard that flitted my way with that roguish gleam in his eye? */
== BHAERDA @150 /* I see it is his mystery that entices you.  May I envy him that, at least? */
EXIT


// -------------------------------------
// Ninde/Imoen Dialogue
// -------------------------------------
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeImoen","GLOBAL",0)~ THEN BIMOEN2 LK#NindeImoen_1
@151 /* Hey, Ninde...I keep seeing you at different angles and in different lights, and, well...you're really beautiful.  I'm jealous! */
DO ~SetGlobal("LK#NindeImoen","GLOBAL",1)~
== BLK#NIND @152 /* Well, someone in this little party ought to be.  If it were not for my presence it would look like the finalists line-up at the annual-Cormyrian-most-attractive-potato-competition.  Which, by the way, I have never had the misfortune to visit, but have little doubt of its tediousness. */
== BIMOEN2 @153 /* Er...yeah.  And your skin!  How d'you manage to avoid scars?  I thought they were basically an occupational hazard. */
== BLK#NIND @154 /* Oh, you wouldn't be able to see them...all my scars are here, on my *soul*.  Ha!  I jest--inner turmoil is for Bhaalspawn and moon elves.  In answer to your question, I've managed to safeguard my complexion by sitting back and letting these dolts do all the real fighting. */
== BIMOEN2 @155 /* Hmm...y'know, Ninde, I always thought that no matter how beautiful a girl is, you stop noticing if she's cruel or insensitive. */
== BLK#NIND @156 /* A theory instantly disproved by not only me, but the sheer abundance of lovely Drowesses, rich girls, and priestesses of Loviatar.  But by especially me. */
== BIMOEN2 @157 /* Oh, I wouldn't be so sure... */
EXIT

// Ninde/Imoen 2
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeImoen","GLOBAL",1)~ THEN BLK#NIND LK#NindeImoen_2
@158 /* You seem rather carefree for a Bhaalspawn, Imoen.  I expected a darker nature.  The more I learn of you and your kind, the more I am surprised.  You are a truly fascinating bunch. */
DO ~SetGlobal("LK#NindeImoen","GLOBAL",2)~
== BIMOEN2 @159 /* Mages the realm over seem to want to pick apart and analyse us like we're some newly discovered insect. */
== BLK#NIND @160 /* You are of rather singular heritage.  Your exceptional origins will always garner interest. */
== BIMOEN2 @161 /* It's just...it's just that after all that's happened, it irks me when people look at me and <CHARNAME> purely in terms of our blood. */
== BLK#NIND @162 /* Without your blood your just a rag-tag bundle of humanoids with no uniting features.  But I think you Bhaalspawn may do much to shape the coming years.  I am only glad to have a front row seat. */
EXIT

// Ninde/Imoen 3
CHAIN IF ~Global("LK#Ninde_imoenthieves","GLOBAL",1)~ THEN BLK#NIND LK#Ninde_imoenthieves
@163 /* Ahh, thievery--ever the occupational refuge of the lower orders. */ 
DO ~IncrementGlobal("LK#Ninde_imoenthieves","GLOBAL",1) SetGlobal("LK#NindeImoen","GLOBAL",3)~
== BIMOEN2 @164 /* You don't seem to like thieves much, Ninde.  In fact, you get all jumpy whenever we're around them. */
== BLK#NIND @165 /* It is because I happen to have a profusion of nice things.  Silk robes, gold rings, you name it.  It is a fact widely recognised that people with nice things do not like people who make it their life's pursuit to take those nice things off them. */
== BIMOEN2 @166 /* Aw, lighten up, Ninde!  That's all just stuff.  People shouldn't get too attached to stuff.  It's not like any of it lasts very long anyway!  I like to think us rogues serve as a helpful reminder of that.  Here today, gone tomorrow! */
== BLK#NIND @167 /* Spoken like a true poor person. */
== BIMOEN2 @168 /* Hey, you pull the sourest faces, sometimes!  You look just like Gorion did after he caught me and <CHARNAME>- */
== BLK#NIND @169 /* <CHARNAME> and I.  Not 'me and <CHARNAME>', <CHARNAME> and I.  For a clever girl, you really ought to have more respect for the fundamentals of grammar. */
== BIMOEN2 @170 /* Spoken like a true finishing school girl! */
EXIT

// Ninde/Imoen 4
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
OR(6)
   AreaCheck("AR0300")
   AreaCheck("AR0400")
   AreaCheck("AR0500")
   AreaCheck("AR0700")
   AreaCheck("AR0900")
   AreaCheck("AR1000")
Global("LK#NindeImoen","GLOBAL",3)~ THEN BIMOEN2 LK#NindeImoen_4
@171 /* This is exciting!  I mean, the only other place I've ever been to remotely like this is Baldur's Gate, and Athkatla's even bigger!  I'm sure the merchants' purses are too.  Heh. */
DO ~SetGlobal("LK#NindeImoen","GLOBAL",4)~
== BLK#NIND @172 /* Either city is a pimple on the nose of Waterdeep, blossom.  Then again, you're bound to be excited by any city, following your confinement. */
== BIMOEN2 @173 /* Yup.  It's just too good to be free again, back here with <CHARNAME> and the rest of you.  I feel like I could do anything.  I want to do everything. */
== BLK#NIND @174 /* Perhaps you should start by a trip to sewers.  Authentic Amnish stink is all part of the experience. */
== BIMOEN2 @175 /* I don't know how you can be so deadpan about this!  We're in Athkatla, the city of coin!  Aren't the things you want to do?  Seems like the perfect place for some fun! */
== BLK#NIND @176 /* Been there, done that, and it took forever to wash out the stains, as well. */
EXIT


// -------------------------------------
// Ninde/Jaheira Dialogue
// -------------------------------------
// Ninde/Jaheira 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeJaheira","GLOBAL",0)~ THEN BJAHEIR LK#NindeJaheira_1
@177 /* I trust you are cautious when practising your magics, Ninde.  I need not tell you what a dangerous art necromancy can be if performed without the utmost care. */
DO ~SetGlobal("LK#NindeJaheira","GLOBAL",1)~
== BLK#NIND @178 /* Oh hush, grandmother.  I'm careful enough, and I got along perfectly well before I had you nattering on about what to do and what to not do.  Honestly, stop worrying, you'll give yourself an aneurysm. */
== BJAHEIR @179 /* I do not appreciate your tone, woman.  I spoke for the sake of <CHARNAME>'s safety, and not yours.  A reckless caster could endanger us all. */
== BLK#NIND @180 /* Jaheira, we're in the process of battling a vastly powerful wizard with seemingly endless magicks at his disposal, and *I'm* the Spellcaster you single out as being a threat to your little pet Bhaalspawn? */
== BJAHEIR @181 /* You *are* a threat, elf.  You'd betray us as soon and with as little care as you would sneeze. */
== BLK#NIND @182 /* I actually quite like it here.  Steady meals, good conversation, more gold then I could ever reasonably steal.  I think I might just...stay a while, hmm? */
== BJAHEIR @183 /* If <CHARNAME> desires your presence in our group then there is little I can do, besides advise <PRO_HIMHER> to see sense.  But I am watching you, elf. */
EXIT

// Ninde/Jaheira 2
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeJaheira","GLOBAL",1)~ THEN BLK#NIND LK#NindeJaheira_2
@184 /* I'd never met a druid before you, you know.  I'm afraid I don't feel like I've missed out on much.  Awfully sedate, aren't you? */
DO ~SetGlobal("LK#NindeJaheira","GLOBAL",2)~
== BJAHEIR @185 /* We have no time for the childish antics you seem to take pleasure in, Ninde. */
== BLK#NIND @186 /* Childish?  Well forgive me, Jaheira, for attempting to enjoy myself a little.  If our situation is truly as dire as you are constantly reminding us, then by tomorrow morning I may have died horribly and thus I feel obligated to make the most of whatever time we have left.  (Smile) Of course...if you need a little help 'blowing off steam'...I'd be happy to oblige... */
== BJAHEIR @187 /* Really, Ninde, distraction will get you killed all the sooner. */
== BLK#NIND @188 /* Remind me to get you drunk next time the opportunity arises.  You might actually be mildly entertaining with a mead or two down your neck, you irrepressibly gloomy woman.  Actually...I've got some here.  Care to partake of a little...liquid courage?  Heh. */
== BJAHEIR @189 /* What?!  You've carried that with you all this time? */
== BLK#NIND @190 /* Of course. */
== BJAHEIR @191 /* And I trust you've been drinking from it daily? */
== BLK#NIND @192 /* Well...yes.  I'm not *always* drunk though.  In fact, I hardly ever am.  Unfortunately, I seem to have built up a resistance to it over the years. */
== BJAHEIR @193 /* That is supposed to relieve me, I assume?  Ninde!  I cannot think of more dangerous behaviour.  You operate highly complex and dangerous magics while under the influence of alcohol?  I would expect greater wisdom even from *you*. */
== BLK#NIND @194 /* Mmm...Jaheira, you make it sound so...naughty.  (giggle) */
EXIT

// Ninde/Jaheira 3
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeJaheira","GLOBAL",2)~ THEN BLK#NIND LK#NindeJaheira_3
@195 /* So who was this Khalid I hear so much about?  He must have been a tolerant man to put up with your vindictive rants.  I'd like to meet him, shake his hand.  Oh, wait, I can't, he's dead.  (smiles) */
DO ~SetGlobal("LK#NindeJaheira","GLOBAL",3)~
== BJAHEIR @196 /* Speak not of Khalid, necromancer, you are not worthy of saying his name. */
== BLK#NIND @197 /* Ooh, did I touch a nerve their Jaheira?  Wounds unhealed and all that? */
== BJAHEIR @198 /* Forgive me if I am a touch sensitive when discussing the recent death of my husband.  Do not try my patience, Ninde, I shall not tolerate your mockery as others might. */
== BLK#NIND @199 /* Tsk, you are so quick to assume the worst of me, grandmother.  (pouts) */
== BJAHEIR @200 /* What else might your intentions be?  You know *nothing* of this pain, elf, do not attempt to conceive of it. */
== BLK#NIND @201 /* Once again you make assumptions.  I...I know what you are feeling, suprising as that may be, though it is long since I loved a man enough for his death to cause any real pain. */
== BJAHEIR @202 /* I must confess, I am surprised...but I suppose I should not be. */
== BLK#NIND @203 /* Psh, I suppose I can't blame you.  But what was he like?  I can't deny I'm intrigued.  He must have been quite the formidable character to put up with *you*.  Five minutes of your moaning and I'm often tempted kill *myself*. */
== BJAHEIR @204 /* (sigh) ...I do not wish to talk of him now, elf.  Suffice to say he was a great man. */
EXIT


// -------------------------------------
// Ninde/Jan Dialogue
// -------------------------------------
// Ninde/Jan 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeJan","GLOBAL",0)~ THEN BJAN LK#NindeJan_1
@205 /* So, necromancy, eh?  Is it known to work on vegetables? */
DO ~SetGlobal("LK#NindeJan","GLOBAL",1)~
== BLK#NIND @206 /* What a question, Jan.  Dare I ask why?  Planning on resurrecting your own formidable army of rancid turnips from the Jansen family table scraps? */
== BJAN @207 /* Well, not so much.  I was thinking more of cousin Feivel and his ever-doomed cabbage patch.  Nice guy, Feivel, but to call him negligent to the needs of plant life would be an understatement, and as a result he's never popped out a decent batch in his life.  Perhaps if you could give him a few pointers he'd make a copper or two on market day, huh? */
== BLK#NIND @208 /* Jan, I am a Necromancer; feared by the dead and the living alike for my peerless parley with what lies beyond this world.  And you are suggesting I turn my skills to restoring your cousin's withered produce? */
== BJAN @209 /* Yeah.  That is, if resurrection spells are applicable to flora. */
== BLK#NIND @210 /* If I could be bothered to bend down, rest assured, I would fix you with a steely gaze. */
== BJAN @211 /* Eh, never really figured you for an outdoorsy girl anyway. */
EXIT

// Ninde/Jan 2
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeJan","GLOBAL",1)~ THEN BJAN LK#NindeJan_2
@212 /* The road is even more tedious today than expected.  By Shar, how bored I am.  Entertain me please, Jan.   */
DO ~SetGlobal("LK#NindeJan","GLOBAL",2)~
== BJAN @213 /* Well, I could tell you about the time cousin Garwenna decided to- */
== BLK#NIND @214 /* No, no and no Jan!  One of your anecdotes and I'll likely be twice as bored as you found me. */
== BJAN @215 /* Hmph.  Well, how else do you propose I alleviate the tedium of the day? */
== BLK#NIND @216 /* A round of animal, vegetable or mineral? */
== BJAN @217 /* Well, all right.  Yes, I have something in mind.  Go ahead, Nindy! */
== BLK#NIND @218 /* Right.  Animal? */
== BJAN @219 /* 'Fraid not.  That's one question. */
== BLK#NIND @220 /* Vegetable, then? */
== BJAN @221 /* Vegetable undoubtedly. */
== BLK#NIND @222 /* ...Turnip?   */
== BJAN @223 /* Correct! */
== BLK#NIND @224 /* *However* did I guess. */
EXIT

// -------------------------------------
// Ninde/Keldorn Dialogue
// -------------------------------------
// Ninde/Keldorn 1
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeKeldorn","GLOBAL",0)~ THEN BLK#NIND LK#NindeKeldorn_1
@225 /* Keldorn...you're a very...upright member of this city's supposed moral elite.  Tell me, honeybunch, do you disapprove of me terribly?  Do you think I'm...*naughty*, Keldy? */
DO ~SetGlobal("LK#NindeKeldorn","GLOBAL",1)~
== BKELDOR @226 /* I do not yet know you well enough to pass any significant judgements on your character, Ninde. */
== BLK#NIND @227 /* Tut tut, Keldorn, you're a disgrace to Amn's legion of uppity righteous twits if you don't deign to instantly truss me up and burn me at the stake for having slightly wonky teeth...not that my teeth are anything but perfect, but you get the idea. */
== BKELDOR @228 /* Perhaps that is the way things are done in the north Ninde, but I assure you that in Athkatla, except in the most unusual of circumstances, an individual will be judged with the utmost sensibility and care. */
== BLK#NIND @229 /* Unusual circumstances such as the individual happening to be, say, drow? */
== BKELDOR @230 /* Now, Ninde, it is a fact universally acknowledged that the drow are a most- */
== BLK#NIND @231 /* Wait, Keldy...so I have done nothing yet to offend your sensibilities? */
== BKELDOR @232 /* Beyond your generally somewhat repellent manner, no, you have not. */
== BLK#NIND @233 /* Shar's raisins, I must be losing my touch. */
EXIT

// Ninde/Keldorn 2
CHAIN IF ~Global("LK#NindeKeldorn","GLOBAL",2)~ THEN BLK#NIND LK#NindeKeldorn_2
@234 /* Dear me, Keldorn, your arthritis must have been playing up today.  A donkey on stilts could have dodged blows better.  Here, let me look at that. */
DO ~SetGlobal("LK#NindeKeldorn","GLOBAL",3)~
== BKELDOR @235 /* You have some skill as a healer, Ninde?  This is unexpected, I had not thought you to be of such a benevolent disposition. */
== BLK#NIND @236 /* Honeybunch, I am neither benevolent nor a skilled healer.  I help you know because you are, however unwittingly, my ally and protector.  Generally speaking, I stay well away from the sufferings of others. */
== BKELDOR @237 /* That is unfortunate, Ninde.  The Order is always on the lookout for healers, however meagre their skill, to assist on campaigns.   */
== BLK#NIND @238 /* Ha!  Keldorn, my sweet, that is the equivalent of me suggesting to you 'Oh, did you know that the Shadow Thieves have an opening for a body snatcher?  You've seen some dead bodies in your time, fancy trying for it?' */
== BKELDOR @239 /* Hardly, Ninde.  I noticed long ago that your eyes are older then the rest of you, Ninde, and they are tired of seeing suffering.  I believe within you there is a force longing to affect change. */
EXIT

// Ninde/Keldorn 3
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeKeldorn","GLOBAL",3)~ THEN BLK#NIND LK#NindeKeldorn_3
@240 /* It's a wonder you don't do your back a mischief, old man, the amount of kit you insist on hauling about. */
DO ~SetGlobal("LK#NindeKeldorn","GLOBAL",4)~
== BKELDOR @241 /* Fortunately my body has been made strong by years of exercise and combat.  Worry not, Ninde, I'm perfectly capable of carrying this and much else besides. */
== BLK#NIND @242 /* Hmm...I like a battle-hardened body... */
== BKELDOR @243 /* Ninde, I ask you to desist.  A younger, more foolish man than myself might find your little theatrics alluring, but to me, they are amusing at best. */
== BLK#NIND @244 /* They say laughter is the best aphrodisiac, but somehow I doubt that's what you mean. */
== BKELDOR @245 /* And I am, of course, a married man. */
== BLK#NIND @246 /* (Sigh) So are all the best ones!  What's a girl to do?  Sniffle.  Perhaps you know...a virile young squire?  Or three? */
== BKELDOR @247 /* I somehow doubt you have quite the temperament to make a good wife for an aspiring young paladin. */
== BLK#NIND @248 /* Who said anything about wife? */
EXIT


// -------------------------------------
// Ninde/Korgan Dialogue
// -------------------------------------
// Ninde/Korgan 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeKorgan","GLOBAL",0)~ THEN BKORGAN LK#NindeKorgan_1
@249 /* It be nice to see a long-ear with her skull screwed on to rights.  I could never hold with all that lookin' at the wee flowers and listenin' to the wee birdies and livin' up in the branches o' those godsdamned trees. */
DO ~SetGlobal("LK#NindeKorgan","GLOBAL",1)~
== BLK#NIND @250 /* I must admit I didn't take you to be the type particularly stimulated by nature, my troglodyte friend.  It has its charms, though when one grows up in a city one's experience is limited to having your sleeves chewed by sheep on family outings. */
== BKORGAN @251 /* Aye, I forgot ye were a rich little chit! */
== BLK#NIND @252 /* Really?  Fancy that.  I was trying so very hard to remind everyone of my vastly privileged upbringing. */
== BKORGAN @253 /* Ye would've made a sweet enough ransom ticket when ye were a maid, and no mistake... */
== BLK#NIND @254 /* Undoubtedly.  And wouldn't that have been an experience to cherish?  Ropes, beards, pointy weapons and extortion all around. */
== BKORGAN @255 /* Say, ye wouldnae happen to have any affluen' Waterdhavian kinsmen who might still give a tuppiece as to ye continuing welfare? */
== BLK#NIND @256 /* Fortunately not, Korgan, as undoubtedly delightful as you would be in a hostage-taking scenario. */
EXIT


// Ninde/Korgan 2
CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeKorgan","GLOBAL",1)~ THEN BLK#NIND LK#NindeKorgan_2
@257 /* Hmm.  It really is a pity to see such lovely, lustrous hair being so ill used!  Here, Korgan, let me- */
DO ~SetGlobal("LK#NindeKorgan","GLOBAL",2)~
== BKORGAN @258 /* If ye be coming near me with that comb, I'll be coming near ye with me axe!  A little too close, perhaps, if ye catch me drift! */
== BLK#NIND @259 /* Darling, it would be impossible not to catch your peculiarly pungent...'drift'.  And that is precisely my point. */
== BKORGAN @260 /* I happen to be likin' me locks just as they be, long leg. */
== BLK#NIND @261 /* Well, your apparel, then.  Surely you agree it's about time you tried a new look. */
== BKORGAN @262 /* Moradin's bane, woman, would ye leave off! */
== BLK#NIND @263 /* Darling, you really ought to give me a chance.  Forget Necromancy, allow Ninde to work her *sartorial* magic! */
EXIT

// Ninde/Korgan 3
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Korgan",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeKorgan","GLOBAL",2)~ THEN BKORGAN LK#NindeKorgan_3
@264 /* So we have been travellin' no small amount o' time, long leg, yet I know little about ye save that yer a slippery northern she-mage with only two redeeming features.  Har. */
DO ~SetGlobal("LK#NindeKorgan","GLOBAL",3)~
== BLK#NIND @265 /* And I needn't ask what they are, you grizzled little letch. */
== BKORGAN @266 /* I've been dealing for long enough to know a front when I see one, and ye've a front and a half.  Har! */
== BLK#NIND @267 /* I'll ignore the awful pun, shall I? */
== BKORGAN @268 /* As ye wish, but I've a question.  Just what might it take for the witch to drop her act?  I be thinkin' it's harder to get of ye than yer clothes. */
== BLK#NIND @269 /* Ahh, Korgan.  I am the product of Waterdeep's priciest finishing schools, but the student of her thousand subtle noblewomen.  My elocution is cut glass, and my facades are impregnable. */
EXIT


// -------------------------------------
// Ninde/Mazzy Dialogue
// -------------------------------------
// Ninde/Mazzy 1
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeMazzy","GLOBAL",0)~ THEN BLK#NIND LK#NindeMazzy_3
@270 /* Mazzy, what's on your little mind?  Your pretty face seems carved from stone!  Smile, it becomes you, halfling. */
DO ~SetGlobal("LK#NindeMazzy","GLOBAL",1)~
== BMAZZY @271 /* Hmph.  I do not trust you, Sorceress. */
== BLK#NIND @272 /* Sorceress?  You flatter me, halfling.  I'm but a humble- */
== BMAZZY @273 /* Oh, would you *cease* this nonsense? */
== BLK#NIND @274 /* What nonsense, pray tell? */
== BMAZZY @275 /* I cannot idly watch while you beguile each and every member of this party, elf.  I am watching you - and if need be, I will do whatever I must to protect those I care about. */
== BLK#NIND IF ~InParty("Korgan")~ THEN @276 /* Does that include Korgan, dearest Mazzy? */
== BMAZZY IF ~InParty("Korgan")~ THEN @277 /* Even - even Korgan, yes.  But what does that have- */
== BLK#NIND IF ~InParty("Korgan")~ THEN @278 /* So there *IS* a spark between you!  I knew it, I could tell by looking at your very face!  Your sweet on him...how adorable! */
== BMAZZY IF ~InParty("Korgan")~ THEN @279 /* You are *most* frustrating!!  You are extremely lucky I have not yet taken my sword to you! */
== BLK#NIND @280 /* Heh...now that would be a sight; little Mazzy, hacking at my knees with her cute little sword... */
== BMAZZY @281 /* Take that back, churl. */
== BLK#NIND @282 /* Oh, Mazzy, I jest.  But you *are* adorable, you have to admit. */
== BMAZZY @283 /* Sometimes I have to wonder if I chose the right path in life...(sigh) */
EXIT

// Ninde/Mazzy 2
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeMazzy","GLOBAL",1)~ THEN BLK#NIND LK#NindeMazzy_2
@284 /* Mazzy, I am told that one need look no further then the nearest halfling if one seeks a ribald tale or song. */
DO ~SetGlobal("LK#NindeMazzy","GLOBAL",2)~
== BMAZZY @285 /* I am afraid you misled, Ninde, at least in my case. */
== BLK#NIND @286 /* How unfortunate.  So you never spared any time for the delightful ditties your race is so famous for? */
== BMAZZY @287 /* I had little time for such distractions and frivolities in my youth, Ninde.  A higher calling beckoned. */
== BLK#NIND @288 /* Beckoned did it?  How delightfully profound!  You are *especially* cute when you're being profound. */
== BMAZZY @289 /* Hmph.  Must you patronise me so?  It is really most irritating when one is attempting to engage in a serious conversation. */
== BLK#NIND @290 /* Very well, you staunch little woman.  I'll listen. */
== BMAZZY @291 /* From my youth I dedicated myself to the service of Arvoreen, my god, and though I can never fulfil my -- */
== BLK#NIND @292 /* So you were always a joyless little creature? */
== BMAZZY @293 /* If by joyless you mean determined and certain of my cause, then yes, I was. */
== BLK#NIND @294 /* So you have never lost yourself in a moment?  Consumed by lust or fury? */
== BMAZZY @295 /* To do so is to succumb to darkness. */
== BLK#NIND @296 /* Then you address a creature of darkness thousand-fold, halfling. */
EXIT

// Ninde/Mazzy 3
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeMazzy","GLOBAL",2)~ THEN BMAZZY LK#NindeMazzy_3
@297 /* Every night I hear you sharing your tales of conquest, Ninde, and I wonder...what satisfaction can be had from such a brief liaison with another? */
DO ~SetGlobal("LK#NindeMazzy","GLOBAL",3)~
== BLK#NIND @298 /* An immense amount, halfling...but the way you look at me.  Oh, Mazzy, what can be wrong with two individuals losing themselves in each other, even for just a night?  Enriching each other's lives, however briefly?  I think it is a rather beautiful notion. */
== BMAZZY @299 /* Perhaps Sharess would've been a more suitable deity for you then Shar.  That's the kind of thinking that leads to unwanted children, to the spread of diseases, and- */
== BLK#NIND @300 /* And to fond memories?  Oh, Mazzy, do you think me a slattern?  Heh. */
== BMAZZY @301 /* Well...no, of course not, Ninde, but- */
== BLK#NIND @302 /* You need not disguise your low opinion of me, halfling...but I'm not a slattern.  Infact, like you, I'm rather the humanitarian, trying as best as I can to provide physical and emotional fulfilment to all attractive men I meet! */
== BMAZZY @303 /* Although fortunately, not everyone distinguishes between the handsome and the ugly when dispensing aid to their fellow beings. */
EXIT


// -------------------------------------
// Ninde/Minsc Dialogue
// -------------------------------------
// Ninde/Minsc 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeMinsc","GLOBAL",0)~ THEN BMINSC LK#NindeMinsc_1
@304 /* Ah, pretty elf, you remind me so much of Boo sometimes! */
DO ~SetGlobal("LK#NindeMinsc","GLOBAL",1)~
== BLK#NIND @305 /* I suppose I should take that as a compliment, since you dote on that filthy creature so.  But please, Minsc, do explain.  You have such a way with words. */
== BMINSC @306 /* But of course it was a compliment!  Boo is Minsc's most loyal comrade, and to be likened to him should induce rapturous happiness! */
== BLK#NIND @307 /* And I suppose the little rodent himself taught you all those shiny, polysyllabic words?  He'd probably make a better travelling companion then you, you big stupid lump. */
== BMINSC @308 /* See!  This is why Boo sees so much of himself in you, elf, you are so little, yet so fearsome! */
== BLK#NIND @309 /* ...you're about as mentally stable as an ogre doing a jig on a three-legged stool, aren't you? */
EXIT

// Ninde/Minsc 2
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeMinsc","GLOBAL",1)~ THEN BLK#NIND LK#NindeMinsc_2
@310 /* However did you get so *tall*, ranger? */
DO ~SetGlobal("LK#NindeMinsc","GLOBAL",2)~
== BMINSC @311 /* My mother fed me many vegetables, and daily I ate eggs, also.  Now I am large enough to give evil a resounding smash in the face! */
== BLK#NIND @312 /* So I see.  But I was given to believe Rasheman was a raggedy little land in which the barbarous children are fed on whatever watery broth and stale bread their mother's can afford. */
== BMINSC @313 /* Rasheman may not be a land of wealth, but it is a land in which the butt of evil fears to show itself, for fear of a trouncing!  My fellow Rashemaar are very courageous men, isn't that right, Boo? */
== BLK#NIND @314 /* Courage won't keep you warm at night, and courage won't feed you. */
== BMINSC @315 /* Well Minsc has never eaten courage, but he is sure it would be most delectable and offer considerable sustenance! */
== BLK#NIND @316 /* And if abstract concepts could be eaten, then no one would go hungry.  And if wishes were horses, and so on and so forth.  Agh--wait, why am I even talking to you, meatshield?  Leave me be, I've spells to memorise and stockings to darn.  This one's got a horrible big hole at the heel. */
EXIT

// Ninde/Minsc 3
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeMinsc","GLOBAL",2)~ THEN BLK#NIND LK#NindeMinsc_3
@317 /* Minsc, your disgusting little familiar is eating a hole in my pack.  He is in there as we speak, luxuriating amidst my belongings.  I suggest you get him out before I *put* him out. */
DO ~SetGlobal("LK#NindeMinsc","GLOBAL",3)~
== BMINSC @318 /* Boo is in your pack?  This is not possible, Boo is right here. */
== BLK#NIND @319 /* Are you suggesting your hamster knows how to produce a simulacrum?  Extract the furry little fiend now, before I turn him into a chew toy. */
== BMINSC @320 /* No!  It is not Boo.  This is Boo, see?  Say hello, Boo! */
== BLK#NIND @321 /* ...Then...then what is it in my pack?  Let me just...Ahh! */
== BMINSC @322 /* What is wrong, pretty elf!?  Was it the squirrel?  Did it scare you? */
== BLK#NIND @323 /* It nearly clawed my eye out, for goodness sake!  I--I mean, ahem, scared?  Hah!  Not likely. */
== BMINSC @324 /* Do not be afraid, pretty elf!  The fuzzy little creatures are more scared of you, even though you are a tiny person.  Here...Boo will show you.  See, he likes you! */
== BLK#NIND @325 /* Heh...he--he is rather sweet, I suppose. */
== BMINSC @326 /* He is very sweet for a miniature giant space hamster.  Have you made a friend, Boo? */
== BLK#NIND @327 /* Aw, look at his wittle nose!  Ah, I mean...what a pathetic waste of time, ranger.  Could you not have acquired a dog or wolf or some other useful companion?  As it is the rodent would serve more purpose as a dishcloth then a pet. */
== BMINSC @328 /* See, Boo, I think she likes you! */
EXIT


// -------------------------------------
// Ninde/Nalia Dialogue
// -------------------------------------
// Ninde/Nalia 1
CHAIN IF
~Global("LK#NindeNalia","GLOBAL",1)~ THEN BNALIA LK#NindeNalia_1
@329 /* Why is it, Ninde, that you spend so much time cultivating your appearance every morning?  You know that by the end of the day you'll just be a mess again, just like everyone else. */
DO ~SetGlobal("LK#NindeNalia","GLOBAL",2)~
== BLK#NIND @330 /* Its not called 'cultivating, it's called 'brushing one's hair', and you ought to try it yourself some time.  Honestly, you might actually be somewhat attractive beneath that haystack. */
== BNALIA @331 /* I have always believed that it's what is within that counts, rather than one's outside appearance.  I'd rather spend an evening with a humble farmer and his family, however unkempt, then with the most pampered and preened prince in all Faerun. */
== BLK#NIND @332 /* Which is perhaps why you'll never marry into royalty, dear.  The more men who want to bed you, the more men who won't try to kill you.  So, in short, it isn't vanity, it's self-preservation. */
== BNALIA @333 /* I'm sure Elminster hasn't got by all these years by being merely *attractive*. */
== BLK#NIND @334 /* I'm sure you're right.  On the other hand, he may be a little on the wrinkly side, but I wouldn't mind him between my sheets for a spell...if you'll excuse the pun. */
== BNALIA @335 /* ...you're really quite strange, Ninde.  I'm - not entirely sure I like you. */
== BLK#NIND @336 /* It's the shadow magic, lovely.  It tinkers with the workings a little.  Besides, I may be strange, but I'm pretty at the same time, which is more then *some* people here can say. */
== BJAN IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @337 /* Hey, why'd you look at me when you said that?  I'm a sex angel compared to you two.  Honestly, you looked at me as though I was Great Aunt Mathilda and her marital cabbage!  Sheesh. */
EXIT

// Ninde/Nalia 2
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeNalia","GLOBAL",2)~ THEN BLK#NIND LK#NindeNalia_2
@338 /* It's nice to meet a fellow noblewoman from time to time on the beaten track, however insipid she happens to be.  Although as I understand we both took to this life for very different reasons.  I can't say I understand your apparent zeal for this messy business that is adventuring.  The odd job here and there in Waterdeep kept bread on the table but all this...walking...and fighting.  It's not for a woman of high birth. */
DO ~SetGlobal("LK#NindeNalia","GLOBAL",3)~
== BNALIA @339 /* Perhaps you shouldn't behave in such a superior way, Ninde, and you'd enjoy it a little more.  We may be of high birth, but that doesn't really matter on the road, does it? */
== BLK#NIND @340 /* It doesn't change the fact that my feet are more used to silken slippers then these accursed boots, and the most meaningful conversation I seem to be able to extract from my companions comes from a little Spellcaster who should probably still be in diapers.  That's you, by the way. */
== BNALIA @341 /* Er...thankyou, I suppose?  Besides, despite your objections our lifestyle, the road makes us all equal, and you should treat everyone else as such, and without the haughteur.  You remind me so much of Auntie sometimes! */
== BLK#NIND @342 /* You can apply your little platitudes 'til the cow's come home, dear, but it doesn't make the blindest bit of difference.  Here, alleviate my suffering a little and make me breakfast tomorrow won't you?  Be an angel? */
== BNALIA @343 /* A second ago you were talking about the lack of class distinction within an adventuring party, and now you're asking *me* to bring you breakfast in bed?  I don't think so, Ninde.  Consider your victim a little more carefully next time. */
EXIT

// Ninde/Nalia 3
CHAIN IF
~InParty("Ninde")
See("Ninde")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeNalia","GLOBAL",3)~ THEN BNALIA LK#NindeNalia_3
@344 /* One day, Ninde, I hope to be as powerful a Spellcaster as you are, much as it pains me to say that. */
DO ~SetGlobal("LK#NindeNalia","GLOBAL",4)~
== BLK#NIND @345 /* And so you should.  I like a girl with ambition, however unachievable. */
== BNALIA @346 /* Although when I am, I plan on using my powers for the service of good, and not employ my skills to my own selfish ends like you do. */
== BLK#NIND @347 /* Do you really think the world is such a simplistic place, you tiresome little girl?  Have you learnt nothing from our travels?  At first I gave you the benefit of the doubt, but now I'm beginning to worry that you'll never see that you should aim *beyond* good and evil.  There is no good and evil, just the clever, and the weak. */
== BNALIA @348 /* 
And where do you fall, Ninde?  The clever?  Why do you believe people shouldn't devote themselves to the path of goodness, and justice? */
== BLK#NIND @349 /* Because I have seen what those allegedly enforcing 'goodness' and 'justice' will resort to too achieve their ends.  Many of my friends have been felled by do-gooders who knew not what they did, knew not who they killed.  Honour is blind to circumstance and to truth.  I have only seen three, maybe four of my former companions hung who truly deserved such an ignoble fate. */
== BNALIA @350 /* You are right...it is important that one never becomes blind in the pursuit of justice, or you'll become what you were fighting in the first place.  A poor commoner may be hung merely because he stole a loaf to feed his starving family...and surely that is not right. */
== BLK#NIND @351 /* They say power is the true corrupter, but I have seen more evidence that blind zeal and uneducated fervour is a greater force of destruction.  Just imagine if Paladins controlled Amn; it would be a very different place, and not necessarily a better one. */
== BNALIA @352 /* Hmm...you have given me much to think on, Ninde.  Though I'm not sure I entirely agree...it's an interesting concept. */
EXIT


// -------------------------------------
// Ninde/Valygar Dialogue
// -------------------------------------
// Ninde/Valygar 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeValygar","GLOBAL",0)~ THEN BVALYGA LK#NindeValygar_1
@353 /* Would it *kill* you to do a little work, Ninde? */
DO ~SetGlobal("LK#NindeValygar","GLOBAL",1)~
== BLK#NIND @354 /* Valerie!  Have you no concern for my welfare?  You are far more suited to lifting and carrying then I...I should save my energies for more artful tasks. */
== BVALYGA @355 /* I suppose you consider hurling fireballs at things 'artful'. */
== BLK#NIND @356 /* More artful then jamming swords through things, anyway. */
== BVALYGA @357 /* If I'm not mistaken, you do a fair amount of that too. */
== BLK#NIND @358 /* Only when it's entirely necessary.  And I wash the blood out of my hair afterwards, dear, which is why you're beginning to smell distinctly sanguine while I retain my delightful rosy scent. */
== BVALYGA @359 /* (sigh) You're not a princess anymore, Ninde.  Adventurers aren't supposed to smell...'rosy.' */
== BLK#NIND @360 /* Next thing you'll tell me adventurers aren't supposed to wear lacy undergarments, either, but that would just be hypocritical of you.  (smirk) */
EXIT

// Ninde/Valygar 2
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeValygar","GLOBAL",1)~ THEN BLK#NIND LK#NindeValygar_2
@361 /* Valygar, why so suspicious of The Art?  You seem to wince whene'er I open my spell book, and you weren't exactly happy when I asked to use a little of your earwax as a spell component. */
DO ~SetGlobal("LK#NindeValygar","GLOBAL",2)~
== BVALYGA @362 /* That's because you wouldn't tell me what you were planning to do with it, Ninde.  For all I knew you could've been planning a curse. */
== BLK#NIND @363 /* Curses?  Really Valygar, you hold too much stock by the fanciful tales of bards.  Seducing you, then plunging my knife through you heart as you sleep would be a much more effective way of dealing with you.  No, curses are so last flamerule.   */
== BVALYGA @364 /* That's certainly comforting.  Forgive me if I don't keep abreast of developments in the world of arcane magic.  And remind me never to sleep with you. */
== BLK#NIND @365 /* Heh.  But...you should embrace spellcasting, Valygar...it runs in your blood as much as it does in mine.  More so.  Besides, say what you like, but you *do* have a talent for it. */
== BVALYGA @366 /* It's a talent that corrupts.  A talent that has caused my family to suffer immeasurably for generations, Ninde.  Surely you can understand my hesitance? */
EXIT

// Ninde/Valygar 3
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeValygar","GLOBAL",2)~ THEN BLK#NIND LK#NindeValygar_3
@367 /* You remind me of my older brother sometimes, Valygar.  He thought I was a frivolous little tart, too. */
DO ~SetGlobal("LK#NindeValygar","GLOBAL",3)~
== BVALYGA @368 /* Sounds like you were raised in a loving family environment. */
== BLK#NIND @369 /* Mm, Valygar--your words sting.  I like it.  Have you finally had enough of my teasing?  (pouts) */
== BVALYGA @370 /* So it would seem. */
== BLK#NIND @371 /* What a shame...and we were getting to be *such* good friends, Valerie...and some of my friends get special privileges... */
== BVALYGA @372 /* You may be used to having men eating from your hand, Ninde, but I will not fall at your whim as others might. */
== BLK#NIND @373 /* I know you find me beautiful, Valygar.  The way you look at me... */
== BVALYGA @374 /* What is it you want from me, Ninde? */
== BLK#NIND @375 /* Just...just a night, my handsome ranger. */
== BVALYGA @376 /* I cannot deny...it has been so long--but no.  No, Ninde.  Not with you.  It would not be right.  You...you frighten me, truth be told. */
== BLK#NIND @377 /* Come back when you've the courage to take what I know you want. */
EXIT


// -------------------------------------
// Ninde/Viconia Dialogue
// -------------------------------------
// Ninde/Viconia 1
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeViconia","GLOBAL",0)~ THEN BLK#NIND LK#NindeViconia_1
@378 /* So what turned you to the worship of our Lady of Loss, Drow?  No dark elf is a born Sharite. */
DO ~ActionOverride("Ninde",SetGlobal("LK#NindeViconia","GLOBAL",1)) ActionOverride("Viconia",SetGlobal("LK#NindeViconia","GLOBAL",1))~
== BVICONI @379 /* Do not pry into my personal business, woman.  I trust my reasons for turning to her were not dissimilar to yours. */
== BLK#NIND @380 /* This is why I adore Sharites--they always have a story to tell.  Come now, Viccy...I'll show you mine if you show me yours...(giggle) */
== BVICONI @381 /* You consider that a temptation?  I have no wish to be privy to your tedious life story, elf. */
== BLK#NIND @382 /* Are you sure?  'Tis a sensational tale, brimming with black lotus, blacker magic, and a suitably big helping of smut. */
== BVICONI @383 /* Smut, you say?  I can't deny you've piqued my interest. */
== BLK#NIND @384 /* Ever bedded a Zhent, Drow? */
== BVICONI @385 /* Mmm...tell me all, Ninde.  And don't spare any details. */
EXIT

// Ninde/Viconia 2
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeViconia","GLOBAL",1)~ THEN BVICONI LK#NindeViconia_2
@386 /* What a fascinating specimen you are, Daarthiir.  An elf raised as rivvin!  I suppose there is a certain coarseness in your manner that betrays your upbringing amongst humankind. */
DO ~ActionOverride("Ninde",SetGlobal("LK#NindeViconia","GLOBAL",2)) ActionOverride("Viconia",SetGlobal("LK#NindeViconia","GLOBAL",2))~
== BLK#NIND @387 /* Coarseness?  Darling, I don't even know how to spit.  In fact, *you* are the one who comes from a culture where coarseness is considered a desirable personality point. */
== BVICONI @388 /* Cruelty, rivvin, never coarseness. */
== BLK#NIND @389 /* Oh, so you are taught how to sacrifice small children *elegantly*? */
== BVICONI @390 /* As a matter of fact, we were, little rivvin. */
== BLK#NIND @391 /* Would you stop calling me that, blackhide?  I've enough reasons to dislike Drow as it is, without having to add 'they make up irritating nicknames for you' to the list. */
== BVICONI @392 /* And what would those reasons be?  Did a Drow rape you?  Beat you senseless?  Bury you alive? */
== BLK#NIND @393 /* No, but- */
== BVICONI @394 /* Then I am more entitled to despise the rivvin then you are to despise the Illythiiri, sun elf. */
EXIT

// Ninde/Viconia 3
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
TimeOfDay(NIGHT)
Global("LK#NindeViconia","GLOBAL",2)~ THEN BVICONI LK#NindeViconia_3
@395 /* Is it not a beautiful night?  It is at times such as this one can revel in the true power of our Goddess. */
DO ~ActionOverride("Ninde",SetGlobal("LK#NindeViconia","GLOBAL",3)) ActionOverride("Viconia",SetGlobal("LK#NindeViconia","GLOBAL",3))~
== BLK#NIND @396 /* Yes...the stars seem particularly bright this eve...Ironically I was scared of the dark when I was a child.  I don't suppose that's a problem for Drow. */
== BVICONI @397 /* No.  Fear is a weakness preserved for the Daarthir and the rivvin.  It was a rather difficult concept to grasp when you are raised in such a way I was. */
== BLK#NIND @398 /* Shar save the Drow who's scared of spiders.  I used to be completely terrified by Drow, come to think of it. */
== BVICONI @399 /* The suspicious rivvin freely infect their children with their own unfounded prejudices, I suppose. */
== BLK#NIND @400 /* Not so much.  I think it was the knowledge that my parents were most likely slain by them.  I used to make the serving girl check under my bed each night for Drow...just in case. */
== BVICONI @401 /* Fungus. */
== BLK#NIND @402 /* I beg your pardon, dear? */
== BVICONI @403 /* Fungus...there used to be big patches of it growing on the stone close to my home, and my brother and I were playing near it one day, when it became stuck to my skin...and it was the most horrible, creeping, burning feeling.  It was like a flaming hand squeezing my forearm.  We couldn't get it off.  It took a priestess to get rid me of it...ever since then I'd have nightmares of a...a fungus monster. */
== BLK#NIND @404 /* I trust these nightmares have stopped?  It's a completely irrational fear, darling.  I've met a few fungus monsters in my time, and they're really quite friendly.  (Smirk) But...let us think not of our fears.  The night is, as you've said, beautiful.  And young as well.  We should enjoy it while it lasts. */
EXIT

// Ninde/Viconia 4
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeViconia","GLOBAL",3)~ THEN BLK#NIND LK#NindeViconia_4
@405 /* ...and so I was *straddling* the poor Wyndryver boy, and his father simply stood blankly at the door.  Honestly, didn't say a peep.  We must have been there, just staring at each other for a good five minutes, Lord Wyndryver going as pallid as sour milk. */
DO ~ActionOverride("Ninde",SetGlobal("LK#NindeViconia","GLOBAL",4)) ActionOverride("Viconia",SetGlobal("LK#NindeViconia","GLOBAL",4))~
== BVICONI @406 /* Because of the thumbscrews, I'd assume. */
== BLK#NIND @407 /* Well, yes.  It isn't everyday one walks into the chamber of one's allegedly virginal 16-year-old son being violated by a shapely young elfin beauty. */
== BVICONI @408 /* With thumbscrews. */
== BLK#NIND @409 /* With thumbscrews.  So anyway...we just *stared*...me, the boy, Wyndryver.  Then Lord Wyndryver just shook his head, like nothing had happened, and smiled...this big, big fatherly smile...then he held up his hand...I assumed to, I don't know, pray or throw a dagger at me or something...and then he just said, real tender-like...'I just came to wish you sweet dreams, son.' */
== BVICONI @410 /* Sweet dreams!  Hah, I'll say!  Your stories do amuse, Daarthir. */
== BLK#NIND @411 /* Mmm.  Perhaps I should've been a Bard, though I doubt I have quite the disposition.  Or the patience for that matter.  I'm rather certain my lyre would end up as firewood before I'd learnt so much as a chord.  Viconia the Bard; that would be a sight to behold. */
== BVICONI @412 /* I'd be even less suited to such an occupation than you. */
== BLK#NIND @413 /* True.  You're rather a sullen little creature. */
== BVICONI @414 /* I've little in life to bring me joy, woman. */
== BLK#NIND @415 /* Ooh...you wouldn't be saying that if you spent tonight in my bedroll, Viconia...but no.  It's unfair to play with your emotions that way.  (giggle) */
== BEDWIN IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @416 /* (Oof...nosebleed again.) */
EXIT

// Ninde/Viconia 5
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeViconia","GLOBAL",4)~ THEN BVICONI LK#NindeViconia_5
@417 /* The rivvin do not appreciate the importance of pain in the bedchamber. */
DO ~ActionOverride("Ninde",SetGlobal("LK#NindeViconia","GLOBAL",5)) ActionOverride("Viconia",SetGlobal("LK#NindeViconia","GLOBAL",5))~
== BLK#NIND @418 /* And just when I begin to think your Drow upbringing hasn't effected you, you come up with a sparkling observation such as that.  On the other hand, I quite agree.  Who was it that said love without pain is as food without taste? */
== BVICONI @419 /* An accurate summary of my point, though I have little use for such book-learnt quotes and platitudes. */
== BLK#NIND @420 /* I always did see you more as a practical learner.  Care to test out your little theory regarding the concepts of pain and pleasure in the bedchamber on me, darling?  (Smirk) */
== BVICONI @421 /* I doubt you'd have the stomach for it, Daarthir.  No...we need to find a strapping young man with a hardy constitution... */
== BLK#NIND @422 /* *We*?  I'm involved, now? */
== BVICONI @423 /* Of course, my dear, and being the fine examples of womanhood we are, surely it won't be hard to find a volunteer on which to test our principles?  (Grin) */
EXIT

// Ninde/Viconia 6
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeViconia","GLOBAL",5)~ THEN BVICONI LK#NindeViconia_6
@424 /* You were once gifted with an eternity upon Toril, Ninde...how do you bear the weight of your mortality? */
DO ~SetGlobal("LK#NindeViconia","GLOBAL",6)~
== BLK#NIND @425 /* With suprising ease.  At least I'm still...pert.  It softens the blow of impending death a little. */
== BVICONI @426 /* I should imagine it does.  The ravages of old age always struck me as a worse punishment than death itself. */
== BLK#NIND @427 /* Likewise, although I await it with more curiosity then fear. */
== BVICONI @428 /* So you remain calm in the face of your impending downfall?  Admirable, woman, though fear of death is natural. */
== BLK#NIND @429 /* Impending downfall?  Honestly, Viconia, brighten up!  You're talking as though I'm on my deathbed already.  With any luck I still have a decade or two left.  Heh.  Are you not pleased?  I rather fancied you'd begun to enjoy my company, as unlikely a notion as that is, Drow. */
== BVICONI @430 /* Your company is more tolerable then most, I suppose...Though you are on occasion completely infuriating.  There has been more then one instance when I have been tempted to box you around the ears. */
== BLK#NIND @431 /* Oh Viconia, I suppose that is your way of saying that you are quite enraptured by my sparkling wit and excellent conversational skills. */
EXIT

// Ninde/Viconia 7
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
TimeOfDay(DUSK)
Global("LK#NindeViconia","GLOBAL",6)~ THEN BVICONI LK#NindeViconia_7
@432 /* You seem especially glum this eve, Daarthir. */
DO ~SetGlobal("LK#NindeViconia","GLOBAL",7)~
== BLK#NIND @433 /* You're the pot calling the kettle black, so to speak, being the sultana of stoicism yourself. */
== BVICONI @434 /* Or, indeed, the Drow calling the Sun elf dark.  But answer, woman; what ails you? */
== BLK#NIND @435 /* So much and so little.  Why should you care? */
== BVICONI @436 /* Because if a situation causes you anxiety, my friend, it is most certainly a dire one.  Rarely have I seen you without a wily quip at the ready.  It alarms me. */
== BLK#NIND @437 /* Brooding, my dear, little more. */
== BVICONI @438 /* Recover yourself quickly my friend, for you are tiresome in this mood. */
EXIT

// Ninde/Viconia 8
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeViconia","GLOBAL",7)~ THEN BLK#NIND LK#NindeViconia_8
@439 /* We haven't rested in a sufficiently luxurious Inn for such a time now.  I must look quite a state. */
DO ~SetGlobal("LK#NindeViconia","GLOBAL",8)~
== BVICONI @440 /* Loathed as I am to admit it, I don't feel at my most feminine, either. */
== BLK#NIND @441 /* In the absence of a full length mirror, we'll just need to look each other up and down, and be brutally honest. */
== BVICONI @442 /* Very well.  I'm not sure why, considering the strenuous tasks <CHARNAME> puts us to, but you're becoming distinctly dumpling shaped.  Large.  Obtuse. */
== BLK#NIND @443 /* Simply my natural voluptuousness, dear.  You, on the other hand--you look like something I summoned.  Clavicles are not meant to be seen, or they would be pretty colors.  And you really ought to put some more time into trimming that upper lip.  All those little white hairs around your mouth make you look as though you've been eating flour cakes all day. */
== BVICONI @444 /* Speaking of flour cakes, woman, did I mention what a fat little thing you're becoming? */
== BLK#NIND @445 /* You might have.  No matter.  I'd become a dumpling to eat proper dumplings again.  Not those scabby southern excuses for dumplings, either. */
== BVICONI @446 /* Ninde and her petty concerns.  Do you never consider there may be more important things at hand than food? */
== BLK#NIND @447 /* Oh, like guts and monsters and fighting?  Delightful.  I'll take dumplings.  And I was lying.  You are, as always, enviably beautiful. */
== BVICONI @448 /* (smirk) I know, Da'arthir. */
EXIT

// Ninde/Viconia (PC romance conflict)
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeRomanceActive","GLOBAL",1)
Global("ViconiaRomanceActive","GLOBAL",1)
Global("LK#NindeViconia_pcromance","GLOBAL",0)~ THEN BVICONI LK#NindeViconia_pcromance
@449 /* I had expected better of you than this, woman, coddling favour from <CHARNAME> as though you were a whore hired to placate his ego. */
DO ~SetGlobal("LK#NindeViconia_pcromance","GLOBAL",1)~
== BLK#NIND @450 /* Stern words from the stern woman.  Unfortunately, darling, they don't savour so much of genuine disapproval as insecurity.  If my manner is easy where yours is sour, you have only yourself to blame, blossom. */
== BVICONI @451 /* Envious?  I am simply surprised by your lack of subtlety.  You do yourself an indignity, female. */
EXIT


// -------------------------------------
// Ninde/Yoshimo Dialogue
// -------------------------------------
// Ninde/Yoshimo 1
CHAIN IF ~InParty("Ninde")
See("Ninde")
!StateCheck("Ninde",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeYoshimo","GLOBAL",0)~ THEN BYOSHIM LK#NindeYoshimo_1
@452 /* Ahh...the black rose of the north.  You are rather the stuff of legend between here and Waterdeep. */
DO ~SetGlobal("LK#NindeYoshimo","GLOBAL",1)~
== BLK#NIND @453 /* Charmed, I'm sure.  And you are, exactly? */
== BYOSHIM @454 /* I am Yoshimo...undoubtedly a name you have heard. */
== BLK#NIND @455 /* I'm afraid not, Kara-Turan.  You've got to break a few child killers out of prison and get your leg over the occasional Shadowmaster if it's infamy you are after. */
== BYOSHIM @456 /* Fame comes to those who sleep with it, that's no secret. */
== BLK#NIND @457 /* What about this Aran Linvail fellow?  He seems your type...(Smirk) */
== BYOSHIM @458 /* Hah!  That is out of the question, a red blooded male such as me.  Why are there no pretty female Shadowmasters? */
== BLK#NIND @459 /* Hmm...I could offer to provide the service myself, Yoshi...then you'd be a legend by association, hmm?  I know I'm no Shadowmaster, but you'd likely find me twice as appealing. */
== BYOSHIM @460 /* A tempting offer, my lovely companion, though I fear our current situation allows little time for such things. */
== BLK#NIND @461 /* (sigh) This is why adventuring is such a bore. */
== BYOSHIM @462 /* Well...you could try to, ah 'persuade' me...Heh... */
== BLK#NIND @463 /* Oh, I shan't bother Yoshimo.  I am resigned to it now.  No fun for Ninde. */
EXIT

// Ninde/Yoshimo 2
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("Ninde",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("LK#NindeYoshimo","GLOBAL",1)~ THEN BLK#NIND LK#NindeYoshimo_2
@464 /* You seem the gambling sort, Kara Turan.  Care for a round of cards?  There's no way in the nine hells I'm sitting in this grubby little establishment cold sober without some form of entertainment. */
DO ~SetGlobal("LK#NindeYoshimo","GLOBAL",2)~
== BYOSHIM @465 /* You took the words from my mouth, Ninde.  Elven whist?  Or perhaps a round of Sharp Daggers?   */
== BLK#NIND @466 /* Sharp Daggers, darling.  I'll shuffle. */
== BYOSHIM @467 /* No, no...please...allow *me*. */
== BLK#NIND @468 /* My, we aren't planning any underhand business are we, Yoshimo?  Because you see, when other people cheat, I have the propensity to do likewise. */
== BYOSHIM @469 /* Certainly not, my friend, I was merely hoping to relieve your tender hands the task!  *Cheating* is not in my nature...besides (chuckle)...I doubt beating you will recquire the utilisation of my more...subtle talents. */
== BLK#NIND @470 /* Yoshimo!  You seem entirely unaware that you are currently facing one of the most formidable card players this side of Cormyr.  I wouldn't blame you even if you were to cheat.  (Smile) */
== BYOSHIM @471 /* ...My dear Ninde, I do believe you've secreted a card in your sleeve, just there.  Ah, yes, as I thought.  You did an admirable job of it as well!  If I had not honed my eye to detect such tiny things, I would not have noticed.  I commend you!  None the less, you have been caught cheating.  A most grievous offence indeed.  (Grins) */
== BLK#NIND @472 /* Ah, but a good game of cards should mirror life, and what is life if one cannot use ones guile and charm to get ahead? */
== BYOSHIM @473 /* Again, your sentiments echo my own thoughts.  I suppose now would be an apt time to tell you I also had a card up my sleeve. */
== BLK#NIND @474 /* Two, actually.  I saw you slip them out the pack, though it was masterfully done.  I rather think we're too good at this, honeybunch.  I say we cheat the locals out of gold piece or two. */
== BKORGAN IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @475 /* Argh, well life'd be a good deal simpler if slippery chits like you two didn't go round secretin' cards where they ought not...I'm not fond of bein' deprived of money by those who didn't take it off me fair...I've half a mind to knock your heads together until those cheatin' brains are coming out yer ears! */
EXIT