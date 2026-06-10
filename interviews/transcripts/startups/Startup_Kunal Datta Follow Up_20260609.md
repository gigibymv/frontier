**Kunal Datta - Frontier Follow Up-20260609\_185918UTC-Meeting Recording**

June 9, 2026, 6:59PM

![](data:image/png;base64...)started transcription

![](data:image/png;base64...) **Kunal Datta** 3:53
Hey, good, how are you?

![](data:image/png;base64...) **Tyler Richards** 3:53
I hear you.
Pretty good. Sorry about the delay there. But thank you for taking the time to speak with us again. We were very interested in everything that you had to say before and wanted to follow up on

![](data:image/png;base64...) **Kunal Datta** 3:58
How are you?

![](data:image/png;base64...) **Tyler Richards** 4:10
some of the elements of the workflows that you had mentioned, particularly the context layer, the brain that you were referring to. We want to dig a little bit deeper into kind of like what roles have changed, how they've changed, and how you're capturing different types of knowledge throughout your organization.
So everything that applies last time applies now. Your name, your company will not be shared. Do you have any questions for me before we jump into ours?

![](data:image/png;base64...) **Kunal Datta** 4:41
No, I'm good.

![](data:image/png;base64...) **Tyler Richards** 4:43
Okay, great.

![](data:image/png;base64...) **Kunal Datta** 4:43
And we can go right into it.

![](data:image/png;base64...) **Tyler Richards** 4:45
I'm sorry?

![](data:image/png;base64...) **Kunal Datta** 4:47
Now we can get right into it.

![](data:image/png;base64...) **Tyler Richards** 4:48
Okay, perfect.
So, before you were talking a lot about the separate agents that you run, you had mentioned Cursor, Cloud Code, Codex, how they have different roles and doing the work, checking it, and you talked through...
some of the workflows and how each manager is expected to IC and ship code. One thing I was curious about is how orchestration works kind of from end to end. Like are there, is this truly orchestrated and automated end to end or are there parts

![](data:image/png;base64...) **Kunal Datta** 5:13
Yeah.
Hu.

![](data:image/png;base64...) **Tyler Richards** 5:26
of the workflow from say idea to actual shipping and marketing that require a human to not just be in the loop, but to actually like.

![](data:image/png;base64...) **Kunal Datta** 5:39
Yeah.

![](data:image/png;base64...) **Tyler Richards** 5:40
Move.
From one step to the next.

![](data:image/png;base64...) **Kunal Datta** 5:44
Yeah, yeah, for sure. I mean, I think, I mean, let's talk, we can talk about a lot of different things, like we can talk about like shipping software, maybe let's start there. So, I mean, practically the way that works is there are many gates, you know, so like, first of all, it depends on like who is shipping the software. So, you know, taking a step back, I think generally speaking, what...

![](data:image/png;base64...) **Tyler Richards** 5:52
Yeah.

![](data:image/png;base64...) **Kunal Datta** 6:05
I'm noticing happening is that the role of the expert, right, like whatever their role might be, like if it's an engineer, a designer, a PR, a marketer, or whatever it is, their role is becoming more of like a reviewer or like a manager, if that makes sense. You know, I've noticed this myself too, like, I mean, you know, if
even if I'm doing like IC work, I'm actually like using skills, like manager skills, if that makes sense to do it. So like practically the way, there are a few different ways. Like let's say an engineer is the one writing the actual code. So where does it begin? It's usually far before that, right? It's like on.
understanding like the problem that the user is facing or whatever it is, right? So there's still somebody who needs to identify what that problem is. You know, so we do have some things like I have an agent that runs in the background that like tells me our surfaces from calls like every day, that all calls that happen across the company, it'll tell me like, hey, these are some of the themes that are coming up.
These are some of the things that you might want to look into. But then ultimately, it's up to me on product to like decide like, okay, of these things, the one that I think is the highest leverage is this one. Or like applying taste, right? Like it's like, yeah, like I could have, we could add all these features, but.
We don't want to, you know, like, so I don't know, there's a canonical example of like the, you know, do you remember that Casio watch, the one which used to have all those features on it? So it's like, the idea is like there are different types of features in a product. It's called a Kano model, Kano.
where you have two axes, is like one of them is like the amount of functionality that you build, let's say the horizontal axis, and then the satisfaction of the user is the vertical axis. And you have like the must have features, which are like if you don't have it, you're like the less functionality you have, the more disappointed the user is. But there's like a plateau, right? Like the more functionality you have, like it kind of like evens out and they don't really care too much after a certain point.
And there's attractive features where if you don't have any functionality, you don't care, right? No dissatisfaction. But the more you have, the more it increases the satisfaction. And you have what's called performance features, which are like a line straight through, like no, you don't have it, low satisfaction, you have it, high satisfaction. And then you have this 4th category, which is like inverse.
which is like the, so the more you, the less you have, the more satisfied they are, and the more you have the more satisfied they are. So like not all features are worth building, you know, because you might be in this inverse category accidentally, and especially now, because you can build stuff so fast, like you don't want to build everything, you only want to build the right things. And so you've got to apply some of that taste, otherwise if it's like completely automated now.

![](data:image/png;base64...) **Tyler Richards** 8:31
Hu.

![](data:image/png;base64...) **Kunal Datta** 8:47
you don't really know like what's going to end up happening. And like, that's ultimately the role of the person there is like deciding like, you know, it's more of that like fuzzy, like maybe we should do this. I do think in the future, perhaps this could be automated too. Anyway, so you start there, right? Like, okay, this is the problem stuff, right? And a lot of that is automated, like the gathering of the data, like understanding like what.
like breaking it down into like, okay, we're seeing this again and again, like coming up here. Normally this would have been done by a person. Then, you know, someone like me or on the product team, something like that, we will look into it and be like, all right, like we're going to pick this one and this one is good. Now again, from there it kicks off that's automated too of like, okay, now let's figure out like the details of what this should look like.
like based on like, okay, these are the use cases that we need to address. These are the, you know, the specific problems we want to do. This is how we'll sort of rank them, you know, kind of thing. And this is the technical limitations. All of this stuff just automated, like based on like, okay, the code base and like what's already there in the system, any limitations that we might have from a technical standpoint.
As well as things like if there's an existing like strategy doc, for example, right? Like does it align with our existing strategy? This is all automated too. At that point now, there's normally in normal world, there would be handoff to a designer.
and then eventually do an engineer. And this is also sort of shifted. So now practically the way it'll work is, you know, I might go in and at this point I'll come in and I'll maybe switch tools, you know, so it'll go to like a cloud design or something like that and be like, okay, I need you to mock this up for me. But I'll just trigger it to do that. I don't need to do much else because it.
knows what I want to mock up. It knows the context of our design system. It knows our code base. It'll do the thing that a designer would do, at which point maybe I'll go in and make some tweaks, you know, leave a comment or so, and then it'll just adjust it. If I like that, then I can kick it off to cursor or cloud code or something like that. I prefer cursor personally, but.
people like other things. And then it can just go ahead and plan the thing out and build it. And I've set up a workflow so that instead of just going and building it YOLO, it'll first come up with like a plan document where it shows me like, okay, this is what it's going to do. And I've had it do a thing where it describes to me what the user experience will be in any edge cases.
Which again, at which point, I'm just gonna, I'll quickly read that doc just to be like, all right, this is good. Normally you would do this in like a product review meeting, right? Like with everyone coming together, I'm gonna like look at this, let's dig into it, let's ask questions. Now I'm just like doing a quick review of the doc and it's pretty good nowadays. Especially today, Fable just launched. I don't know if you saw with Claude.

![](data:image/png;base64...) **Tyler Richards** 11:15
Yeah.

![](data:image/png;base64...) **Kunal Datta** 11:28
They just launched the new model and I haven't been around with it like past like minutes or so, so you know, it's like the best on all the benchmarks right now. It's pretty crazy, so we'll see. I'll report back, you know, anyway, so then I'll do that and then I'll just click the build button and that's it. It builds the thing.

![](data:image/png;base64...) **Tyler Richards** 11:31
Okay.
Yeah.

![](data:image/png;base64...) **Kunal Datta** 11:47
At which point now I'll test it and I'll click around. Although like one of our designers on the team, she automated this part as well with a, what's it called? Like a, it's a skill basically that runs in Chrome via Claude that leverages like, there's basically a set of documents that she created, which are like a persona documents, which are kind of like
our users based on their actual calls. So it mimics what a user would likely ask when faced with this screen. You know, so normally the way you would do this, you get on a call with a user and you're like, hey, could you click around and tell me what you think or whatever, right? Like, hey, what do you see here? Like open-ended questions and you get feedback from that. Here, it's literally like AI clicking around on the page in the browser.
And reporting back with feedback, hey, you should probably change this. This was not that intuitive. Exact things that our user would normally have said, which is crazy. So anyway, it does that. And then that goes back into cursor to sort of iterate and improve. Right now, that piece is also something where like a person will decide, like I.
don't, like, I don't want to take this feedback. I do want to take this feedback, you know, like, because not all feedback is good, you know, and there might be things where you're like, you know what, actually I kind of like it like this, more like a personal preference thing, or maybe there's something that you know that the AI doesn't, which is, I think this is reducing over time, the more context it's getting. And then anyway, the new build, you, once it's tested, and then ship out the PR shortcut ticket.
or whatever, geographic or whatever it is, all that stuff is automated too. Then there's a code review. That's also automated. So we have actually a few different ones we're using right now. One is Code Rabbit that does it. Another one is called Qodo, Q-O-D-O. It'll review the PR in GitHub itself.
and provide comments. And then cursor, again, I just pointed at that and I'm just like, you just like do it and review the comments. I've also given instructions that if a human has responded, treat that, treat them as the expert. You know, like do what they're saying. Like don't ignore if a human is saying it. But if a robot is saying it,
it's more chill, like you can decide to like put it off or whatever. And based on what you know is our strategy and the plan and all this stuff. And then that'll go through the deployment cycle, which is again automated, which then finally makes it into production. Then there is another piece, now post-production, what happens, like it's possible that a user comes back and is like, yo, like.
actually like, I want this or like, hey, this isn't working the way I expect. At which point, like that depends on how it comes to us. If it's like a ticket, like a support ticket or something, you know, that's one way. But a lot of the times practically for us in like the B2B world, it comes through like a human. So that's like,
they'll talk to the CSM or they'll send a Slack message somewhere, like, and then somebody will respond. But if it's in Slack, like one thing that I've been playing around with is you can tag cursor in Slack, saying, like, add cursor, could you take a crack at this? And then it'll just kind of do it. It'll ship a PR. And then I can review that, you know, as opposed to like going through that whole cycle all over again.
And then I, if it's if it's good, I can just click deploy. If it's not, then I'll just make a couple of changes and then deploy it, and to end that's not how it works.

![](data:image/png;base64...) **Tyler Richards** 15:05
OK, so for each one.

![](data:image/png;base64...) **Kunal Datta** 15:08
No, that's it.

![](data:image/png;base64...) **Tyler Richards** 15:10
So, for each one of these steps, I know you had...
Like when you're handing it off to design, design is handing it back to engineering. Are these occurring kind of manual? Like are you sending files, documentation to design or is this happening? Is there some sort of like agent orchestration happening throughout this process?

![](data:image/png;base64...) **Kunal Datta** 15:32
Yeah, so when I said two designs, I don't mean to a human. So all of this was just like one person, like all just me throughout the whole thing, no other teams involved. So just to clarify that, right? The whole thing, right? Like, which previously would have taken like a team of like, I don't know, how many people, right? And there's handoffs between people and stuff. Now,

![](data:image/png;base64...) **Tyler Richards** 15:42
Okay.

![](data:image/png;base64...) **Kunal Datta** 15:51
the handoff, if there is a handoff, it's at moments where the human judgment is valuable for some reason. You know, like for example, if I said the first one was like, okay, you got all these problems that people are saying or like things that they want to be able to do or whatever it is, but we maybe don't want to solve all of them.
This is a human coming in saying, applying their judgment of like, you know what, like, we don't want, we don't need to do that. Like, we do want to do this one though, you know? Or another one is like, at the time when the mock, right, like, again, AI has generated the whole thing and all of that stuff. And then it's like, maybe a human might.
like this is where human comes in is like, I'm going to look at the mock-up that AI has generated for me. And then maybe leave some comments, right? Like maybe I don't like the way this flow is, you know, because it's too standard, right? Like a lot of the, I think the other thing here is like, it's all based on historical stuff, right? So like for example,
like a UI that is generated by Claude is based on existing UIs. But what we're finding now is like there are new like interaction patterns that are emerging with AI products, you know, that didn't exist previously in SAS. And so like it'll default to existing SAS.
UX patterns, where maybe there is a better alternative now, if you're thinking about it from first principles or like, you know, where, because if you have that option to like try a new thing, so you can leave comments and then it'll just do that. So that's another area where it's we want the human in the loop. And then the final one is like when.
Oh yeah, the next one is like the plan itself, like before it starts building the thing. Just as a double check of like it's not going to do anything insane, you know, like I don't want to, like is it, like there was one example, there was a guy who would like, not an engineer, like, but everyone's shipping code, right? So like we have this guy who's on sales and he shipped something and I went into production, but like there turns out that.
It also changed another page in the product, like that he wasn't intending to like do anything on this other page, like that was about like queues or I don't know, it was about like, yeah, some template on something that we have like to auto-fill something, but it like ended up changing like a...
a page about deadlines in our app, which like, there was no, no relation, you know, it just like did it. And he didn't even find it. Like the way, like, because he, why would he think to test that, you know, like it's not something he was doing, but he didn't review the plan. And in the plan, it said it, that's what it was going to do. And then later on, someone, like a human found it.
during code review, but the robot could, like, think about that too, right? Like, what is the robot looking for during code review? What it's looking for is, like, is the code good? You know, like, is it up to our standard? Like, does it have any bugs in it? Like, are there any obvious things or even some non-obvious things? But what it's not looking for is intent.
You know, like what was your intent when you were building this feature? Like, did you intend it to change the deadlines page? There is no way for it to know that, you know? So this is where it became manual and Michael, the guy who found it, asked Connor, like in a Slack message, and that's where he was like, yo, Connor, did you intend to do this? And Connor said, no, that was not my intention at all.
And so then went in and we're just like, all right, yo, like, Chris, can you get rid of this? Can you get rid of this? We don't need it. So that's another area. And then the final area where humans are involved is the like final feedback. And that's more like a human-to-human thing, right? Like customer tells the CSM, like, yo, like something needs to change.

![](data:image/png;base64...) **Tyler Richards** 19:34
So that's, I think, a good segue into something else I wanted to ask about. So

![](data:image/png;base64...) **Kunal Datta** 19:39
I.

![](data:image/png;base64...) **Tyler Richards** 19:40
You mentioned how the cursor, whatever tool you're using, is looking for specific things. It's focused on quality of code, but then there's a lot of what you described, which I would think of as like tacit or kind of tribal knowledge or something that is harder to code into one of these systems, but that...

![](data:image/png;base64...) **Kunal Datta** 19:42
I
Yeah, yeah.

![](data:image/png;base64...) **Tyler Richards** 20:12
Have you seen that creating?

![](data:image/png;base64...) **Kunal Datta** 20:14
So I think there's two categories here. One of them is what like tribal knowledge, tacit knowledge, right? This is knowledge and it's spoken about in different ways, either in meetings, right? So this is in meeting transcripts, like if they're recorded, everything is recorded usually. Or it's in, you know, Notion Docs or it's in Slack or it's somewhere usually. And where,
Given we're like generally pretty remote as a company, like more than 50% of the company is remote, like we've been doing this stuff. So luckily, like it exists in some system, right? So this is where like what they, I think we talked about last time, like the brain that we have, like we call it the Unit 21 brain. It's like, you know, it has all this stuff and it's auto-updating with.
the latest stuff. Then there's the second category of stuff, which is not documented. It's like intent, right? Like, so intent means what do I want this to do? And this is like by nature, like not, it can only be documented if someone decides to write it down somewhere, you know? And so like, you have to have in place some sort of practice of documenting your intent.
You know, like, for example, one one way I could build is I could just say, like, "Hey, just build me all my all the stuff that Gong says, or like the recordings have, right? Then you have this automated pipeline, but it's probably building pretty \*\*\*\* software, and you have like a lot of different, it's not the quality of the software, it's just like...
There's a lot of features that you don't really need or like it weren't really important. It doesn't really apply any important, like any taste or anything like that. It's all based on obvious things. But it's there and it works. But the other method is you have a human describe in some way. It could be on a like anywhere, like you could.
record yourself, like use Whisperflow or something. Like, you can type it up, you can ask Claude to write it, and then you read it and make sure it's right. But in some way, make sure that it's reflecting what you want.
If like this needs to be somewhere in the flow, anywhere, it doesn't matter where in the flow it is, but as long as the intent is captured, then it solves the problem. But a lot of the times intent isn't captured up front because it's so easy to just go through. At least we're finding this, like so easy to just kind of go through and just make everything automated that.
why would I take time out of my day to like describe what I want? Like ideally I should just know what I want, but like in practice, like how does it, it's kind of like a person, like, you know, like how does someone else know what you want unless you tell them, you know? It's like I was, we were having dinner yesterday, my wife and I had this like Chinese restaurant.
I wanted like this spicy sauce that they have, you know. So I asked, like, I asked, like, I like put my hand up and I like called the person over and my wife was like, why are you calling them over? I was like, if I don't, like, they'll bring it over. But I was like, you know, like, if I don't tell them that I want the spicy sauce, like, how are they going to know that I want the spicy sauce?

![](data:image/png;base64...) **Tyler Richards** 23:07
Hu.

![](data:image/png;base64...) **Kunal Datta** 23:08
There's no way for the hotel. So I feel like it's like that, you know, you got to say what you want, otherwise you're not going to get it. Or you may get it, but it'll be like a luck thing that you get it, you know.

![](data:image/png;base64...) **Tyler Richards** 23:20
Okay, and so for that kind of information, like...
So, both the the tacit knowledge and the intent, like...
As you're capturing that through internal communications, like how do you decide what goes, like what these agents, what these systems learn versus what is pulled into like context? Like obviously, I know you had mentioned that the teams are responsible, I think managers or something are responsible for...

![](data:image/png;base64...) **Kunal Datta** 23:51
Yeah.

![](data:image/png;base64...) **Tyler Richards** 23:53
reviewing updates to contacts, but you can't put everything there, right? So like how do you determine what is learned, what is put into the brain, or what is captured in some other way?

![](data:image/png;base64...) **Kunal Datta** 24:06
I'm not sure I fully understand the question. So like what the answer to that generally is like the manager will review the context, you know, and like before it goes in. Are you saying that there are there may be things that like the manager doesn't get to review at all?

![](data:image/png;base64...) **Tyler Richards** 24:13
Yeah.
Well, no, I would just, it's more just information overload for them, and you, I know that, like...
As.
communications across the organization are captured, right? I would assume that not every...
interaction is summarized and captured and updated to the brain. So like how are you making sure to capture a lot of that information and how are these systems?

![](data:image/png;base64...) **Kunal Datta** 24:42
My.
Yeah, yeah, it's a, I see what you're saying. Yeah, it's a good question. Like, there, like, if there's, if it's not captured, like, one thing we'll encourage is, like, everyone use Gemini or whatever to record your internal meetings, use Gong to record all external meetings. We have automation set up, so like Gong will just automatically join certain meetings, things like that, you know.
But you're right, there are places where like perhaps people are meeting and it's not being recorded, you know? And in that case, it's like, what do you do? You know, there's no real fix. We do encourage though, like people are documenting everything. Even in Slack, one thing that we've started doing is like,

![](data:image/png;base64...) **Tyler Richards** 25:14
Yes.

![](data:image/png;base64...) **Kunal Datta** 25:23
Tagging a person and a topic, so we'll say, like, like, for example, one thing that's a discussion we're having, right, like just earlier was like MCIOpre. So, a lot of our customers are asking us for an MCIOpre, so we have one built out, but we haven't exposed it to our users yet, because you know we want to make sure that it's working as expected, whatever, and...
You know, ideally, I want the robot to pick it up every time, but if I, like, if I just ask, like, Claude, like, yo, like, look through Slack and find me everywhere somebody asks for MCIOpre, it might miss some things if the person didn't explicitly say the word MCIOpre, you know, it might catch it.
two, but it'll be context overload, you know, and so like depending on the quality of the model that's being used, there's a lot of variables. So what we started doing, like I'll, for example, in this case, what I did was I tagged, I was like at Gary MCP, and then I put a robot emoji. And what that, and this is like a normal thing now people have been doing, which is like.
the robot emoji means I'm tagging this not for you, but for my robot and for other people's robots to find later. You know, or like he responded also in that with like a little summary of what we talked about, like the salient points, which like not, were not in the meeting summary, but like were inferred things that.
Maybe it wouldn't have, it's not like, we didn't explicitly say that when we met, like just now it was transcribed. But like, I know, he knows, we both agree on this. So he put it there and he said for the robot. You know, so this way it's like, we're also trying to encourage people to put more and more, like, just put it somewhere and try to make it easy to find.
You know, so this is one way, not perfect. There is, I don't know if there's a better solution than curious if you've heard anything.

![](data:image/png;base64...) **Tyler Richards** 27:11
Okay. So I guess one mechanism, and I'm sorry if you mentioned this, and I didn't quite capture it, but one mechanism trying to understand is for all this internal communications that you have, all the meeting recordings, everything like that, how is that being captured and stored inside the brain or wherever that lives? I mean, I know that you can access Slack.

![](data:image/png;base64...) **Kunal Datta** 27:15
That's OK.

![](data:image/png;base64...) **Tyler Richards** 27:31
if you want to pull specific information, but presumably all of this is being summarized in a way that provides context for the future. So like, how are you capturing that and where, like, because I'm assuming that doesn't go in necessarily to like the design teams, like part of that brain, right? So

![](data:image/png;base64...) **Kunal Datta** 27:38
You know.
It could, so it depends. Like, so for example, like, well, there's two layers, like you said, rightly. One of them is the raw underlying input itself, so whether that's Slack or the transcriptions or whatever. Then there's the brain itself. The brain has two layers, you can think about it. One of them is a routing logic, so it knows which tool to pick up.
from, right? Like if it needs to go to Slack and it needs to go to Google Drive. And it also has routing combinations, like you probably want to look at Slack and Gong for this, or you probably want to look at Salesforce and I don't know, Notion for this or something like that. And for, and it'll give examples of like in the brain routing logic of like, yeah, if this happens and this happens, or if this, if the question is like this,
is, and you probably want to look at these two or three tools like that, just to give it sort of an idea. So this is 1, it's like the routing logic, so it gets to the raw input. The second is like summarized information. So maybe I can actually just show you. Hold on, let me see.
Okay, I'm going to share my screen.
You're not going to share this stuff, I'm assuming, right, like anywhere, just not directing that.

![](data:image/png;base64...) **Tyler Richards** 29:00
No, no, all this is confidential. I'm not sharing any of this with anyone.

![](data:image/png;base64...) **Kunal Datta** 29:02
Yeah.
Do you see this?

![](data:image/png;base64...) **Tyler Richards** 29:08
Yeah, okay, now that's it. Hold on, let me make my screen bigger. So small. Okay.

![](data:image/png;base64...) **Kunal Datta** 29:09
All right, that's it.
Yeah, no worries. I mean, this is the brain. It has things like routing stuff, right? Like, is it this? Does it involve this? Okay, load this. Is it this? Load this. You know, like the kind of, just sort of examples, you know? And then there's a map, like a doc map.
So like things like product philosophy and principles, domain, product compliance, AI Unit 21, competitive landscape. Now each of these, like let's take a look at competitive landscape for example, right? And there's a whole bunch in here, right? This is all routing logic. And now these are the actual docs themselves. So I don't know, we can pick, I don't know, let's do like.
Just pick a thing, other brand of visual systems interesting, because every time you make a slide deck, it'll pull this up.
when to load the stock, brand and visual system, brand colors, primary colors, whatever. So this is like a pretty standard example of something which like doesn't change that frequently, right? But it knows how to pick it up. Like in, so this time, now anytime somebody, anyone in the company asks Claude to make a slide deck.
We know 100% it's following the brand guidelines, you know. Nice, I got a little thumbs up. So this is one example. Another example of this is, and I got to drop in one minute, where it's a little bit more moving around, right, is this, you know. So this is something that I'll own, right?

![](data:image/png;base64...) **Tyler Richards** 30:27
Yeah.

![](data:image/png;base64...) **Kunal Datta** 30:36
is, and you can see these are like kind of summaries. It's not actually referencing any direct source information. It is a summarization of source information. And this is updated on a regular basis, based on like any chat that I have, meetings that I have on a daily basis. There's a sync job that I run from Claude.
that reviews this and it's like, or these docs that I own and it'll review them and be like, yo, like based on this, you should probably change this stuff. This is adjusted, this is changed, you know, and that's automated too. And then I can decide to say like, yeah, I want to change it or I don't want to change it. You know, like this is our current 3 strategic bets, but like I bet in a couple of quarters it's going to be different, right? And that'll change based on a conversation that I had or a doc that I wrote or something.
something. It'll prompt me to then update this. Now, why have this if we have the source information is because sometimes you don't need to go to the source in order to do a thing. You know, it's much faster to just review a summary. The downside is then you only get abstracted information. So the way this is set up is that the brain scale at least will look at this as a first pass. And if it needs more information, it'll go to the source.
And the source is where? Over here. Like the routing to the particular tools. You know, I wonder if there's an example of common routing combos, yeah.
Yeah, like, if you're doing...

![](data:image/png;base64...) **Tyler Richards** 31:53
And so I know you need to run, so everything in here has a designated owner though, correct? Okay.

![](data:image/png;base64...) **Kunal Datta** 31:58
That's correct. That's correct. Yeah. And that is the like whoever owns that department. So for everything product and design, it's me. For engineering, it's our CTO. For like, like, I don't know, like customer success and implementations for deployed engineering and support, it's our CCO, like chief customer officer.
Sales, marketing is our Chief Growth Officer. And then things like legal, finance, stuff like that, CEO. And that's sort of how we set it up.

![](data:image/png;base64...) **Tyler Richards** 32:26
Great. I know we ran over, so thank you again for your time. We'll be in touch with your computation and anything else that we want to chat with you about.

![](data:image/png;base64...) **Kunal Datta** 32:29
Of course.

![](data:image/png;base64...) **Dilina Abudurexiti** 32:33
Oh, Kunal, can I just ask one more quick favor? Everything's been super helpful. Do you think there's anyone else at Unit 21 that might be willing to speak to us? What we're really interested in is like understanding how, you know, like once your agent does something, like how does a handoff to someone else in a different function that maybe you don't have as much visibility in? Like how is that orchestrated across?

![](data:image/png;base64...) **Kunal Datta** 32:34
Great, yeah, yes, yes, yes, of course.
Mm.

![](data:image/png;base64...) **Dilina Abudurexiti** 32:57
Um, so that'd be, yeah.

![](data:image/png;base64...) **Kunal Datta** 32:57
It's a good question. Let me ask and see if folks are down to chat. I can, I'll just let you know.

![](data:image/png;base64...) **Dilina Abudurexiti** 33:03
Okay, awesome. And yeah, if anyone signs up, we're happy to give you a referral bonus. And like, to be perfectly honest with you, we might hit you up again because you've been like extremely helpful.

![](data:image/png;base64...) **Kunal Datta** 33:13
You can hit me. I'm happy with that. That's all good. Just I would love to see like the output of your research as well. I am curious how other people are doing this stuff too. Okay, I really got to bounce. I'm super late now, but yeah, we're chatting.

![](data:image/png;base64...) **Dilina Abudurexiti** 33:18
Mhm.
All right, thank you.

![](data:image/png;base64...) **Tyler Richards** 33:23
OK. Thank you.

![](data:image/png;base64...) **Tyler Richards** stopped transcription

![](data:image/png;base64...)

![](data:image/png;base64...)![](data:image/png;base64...)

![](data:image/png;base64...)

![](data:image/png;base64...)