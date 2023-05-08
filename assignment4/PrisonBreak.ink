VAR companion = ""
VAR animalPun = ""
VAR charm = false
VAR threat = false
VAR mindTricks = false

You are shoved into a small cell and fall flat on your face. The incessant yelling of inmates around you is silenced as a guard fires a plasma pistol in the air. As you struggle back to your feet, you can see a larger-than-life
//Choosing companion for story
* dog
    ~ companion = "dog"
    ~ animalPun = "Robone Good"
* cat
    ~ companion = "cat"
    ~ animalPun = "Gobblin Food"
* mouse
    ~ companion = "mouse"
    ~ animalPun = "Robin Gouda"
* bird
    ~ companion = "bird"
    ~ animalPun = "Robin Hood"

 - staring back at you. You are taken aback by this sight, but after all you've seen during your travels, nothing surprises you anymore.
 
"Hello, roommate," says the {companion}, tilting its head slightly.

-> Introductions

=== Where ===
He gestures around him. "Prison, obviously. As for the location, I honestly don't know. Just like you probably were, I was blindfolded all throughout the trip."
    ->Introductions
    
=== Who ===
* "What did you do to get here?"
    ->IncarcerationReason
+ "Okay."
    ->Introductions
    
=== IncarcerationReason ===
He shrugs. "Back home, there's a tale of a man called {animalPun}. He steals from the rich and gives to the poor. I'd like to think I'm like him.
    ->Who

=== Introductions === //Talking to roommate
* "Who are you?"
    "My name is Boris. I'm from a galaxy far, far away."
    ->Who
* "Where are we?"
    ->Where
* "Hello."
    ->Discussion


//Continution of the story after initial interaction with roommate
=== Discussion ===
- You flop onto the top bunk and lay down, head in your hands. The {companion} stands and looks up at you with what you deduce is a sympathetic look. "The first night is always the hardest."
* "I don't belong here."
    -> Belonging
* "I need to get the hell out of here"
    -> EscapePlan

=== Belonging ===
Boris laughs. "I'm sure every last inmate feels the same way, buddy. What makes you so special?"
* "I can make it out."
    -> EscapePlan

=== EscapePlan ===
Boris tilts his head. "How exactly do you plan to escape?"
* "I'm very persuasive"
    ~ charm = true
* "I have some very... interesting intel."
    ~ threat = true
* "Let's just say I have... powers."
    ~ mindTricks = true

- Boris smiles. "You want to elaborate on that a little?"
{charm: "I got in here for convincing one of the richest people in my galaxy to just give up half of their things.}
{threat: "I have some serious dirt on the bastard who runs this place."}
{mindTricks: You put a finger up to Boris and say, "Chase your tail." Immediately, he runs around in a circle until you release him. He gasps and looks up at you with wide eyes.}

He nods and says, "Do you really think you can convince Stillwell to let us go?"
* "Hell yeah!"
* Maybe...

 - "Good. I have some pull around here. An old friend of mind is a guard. He can't do more, but I think I could convince him to let you talk to the guy. That shouldn't pose too much of a problem. Let's get out of here."
  -> DialogueTree2
  

// Dialogue tree with prison warden
=== DialogueTree2 ===
It takes a couple of days, but Boris finally manages to convince his friend that I need to meet with the warden. When the day arrives, two heavyset guards barge into my cell and pick me off my bed like I'm a toy. As I leave, Boris nods his head and I wink back.
The warden's office is in the dead center of the prison, surrounded on all four sides by jail cells filled to the brim with prisoners. It is suspended in midair, held up by stilts that give it the illusion of floating. One of the guards raps on the door and it swings open on its own.

* "Hey, warden!"
* "May I enter?"
* "I'm coming in."

- The warden simply grunts at his desk. He is a tiny man with sharp ears and olive-colored skin buried behind a stack of paperwork. He takes off his circular spectacles and stares at you intently. "Your cellmate went to a lot of trouble to make this meeting happen."

{charm: ->CharmTree}
{threat: ->ThreatTree}
{mindTricks: -> MindTree}

=== CharmTree ===
You give the warden a sweet smile and he raises his eyebrows and sets down his pen.

* "Let's talk for a second."
* "We should talk, warden."

- He raises an eyebrow. "Continue, please."

"I understand that you have a job to do, but there's no harm in helping a few inmates out, right? Boris and I just want to get out of here and start fresh. We won't cause any trouble, I promise. Is there any way you could make that happen?"
The warden stares at you for a moment, then lets out a sigh. "I can't just let you go, you understand that. But...I might be able to pull a few strings and get you transferred to a different facility. It's not much, but it's better than nothing. You'll have to prove yourself first, of course."

You nod, grateful for the opportunity. "Thank you, warden. I won't let you down."


-> DialogueTree3

=== ThreatTree ===
You slam the door closed behind you and click the lock. The warden stands to protest but you hit his desk.

* "Mr. Weezel. We need to talk."
* "Let's get right down to business, Mr. Weezel."

- At the mention of his name, he raises an eyebrow in confusion. "What are you talking about?"

* "I think we both know exactly what I'm talking about."
* "You tell me."

- Your sharp and knowing gaze causes a bead of sweat to fall down his face. "What exactly do you know?"
You tell him all of the information that you have accumulated on him, one of the wealthiest creatures in this galaxy. Finally, as he is about to admit defeat, you hit him with the biggest crime.

* "You embezzeled funds for this place, didn't you?"
* "You cheated on your spouse, right?"
* "How'd you manage to swindle the richest person in the galaxy out of their money?"

- He starts shaking. "How do you know all this?"

"Let's just say I have my sources. But right now, what's important is that you cooperate with me."
"Cooperate with you? What do you want from me?"

* "I need your help with a matter that requires your expertise and resources."
* "I need you to provide me with access to certain information and resources that only you have."

- "And what makes you think I'll help you?"

* "Because if you don't, I'll make sure all of this information that I have on you becomes public knowledge."
* "Because if you do, I can make sure that all of this information stays between us."

- He hesitates for a moment before finally nodding his head. "Okay, what do you need me to do?"

You smile wide. "Help me get the hell out of here."

-> DialogueTree3

=== MindTree ===
You turn to the guards standing in attention at the door and wave a hand. They respond to your mental command and close the door. The warden looks up but thinks nothing of it.

* "Hey, warden."

- He says nothing in response and just looks up at you with anticipation. You know that you have to engage him in some sort of conversation for your powers to be able to work.

* "Say, you have a nice prison here."
* "Let's talk for a second, shall we?"

- The warden nods slowly, still unsure of what's happening.

* "I'm sure you've noticed that I have a particular set of abilities. Abilities that make me a nightmare for people like you."

The warden's eyes widen as he starts to understand the situation and fall under your mental attack. He looks at you like he's in a trance.

"What do you want?"

-> DialogueTree3


=== DialogueTree3 ===
You are shoved back into your cell by the guards{mindTricks:, who have recovered from your mind control and are back to hating you.} 
Boris is sitting upright in his bed, tapping his head against your bedframe. As soon as the guards are out of earshot, he scrambles to help you up. "You alright, friend?"

* "Yep."
* "Not particularly, but I'll live."

- He cocks his head. "So? How'd it go? What's happening?"

{charm: "He's under our spell."}
{threat: "I have him."}
{mindTricks: You simply nod and smile.}

- Boris chuckles. "So what's the plan, buddy?"















    -> END
