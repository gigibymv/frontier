**Michael Bernstein - Frontier-20260521\_125954-Meeting Transcript**

May 21, 2026, 4:59PM

1h 1m 18s

![](data:image/png;base64...) **Elisabeth Beltinger** started transcription

![](data:image/png;base64...) **Elisabeth Beltinger** 2:31
Hey, Michael, how are you?

![](data:image/png;base64...) **Michael Bernstein** 2:34
Good, how are you doing?

![](data:image/png;base64...) **Elisabeth Beltinger** 2:35
Good, thank you. I'm taking over today for my colleague Berling, which I think led the interview with you last time. But yeah, he's unfortunately out of office right now. But thank you so much. Thank you so much for signing up again. We really liked the conversation we had last time and we just realized as we're...

![](data:image/png;base64...) **Michael Bernstein** 2:44
Correct.
No worries.
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 2:55
going through the transcript and what you shared, there's some points where we just would like to dig a little bit deeper into the content. So that's what this conversation is all about. So I think it might, it might at some point maybe feel a little bit scattered just because we're collecting extra data points from different points of our initial conversation.

![](data:image/png;base64...) **Michael Bernstein** 3:03
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 3:16
But yeah, same thing holds as last time, still anonymized for you and your organization. So nothing that you share will be kind of attributed back to you. So yeah, do you have any questions for me before I go?

![](data:image/png;base64...) **Michael Bernstein** 3:17
No worries.
Okay.
Do I need to keep the camera on or just if I have no preference as far as like if y'all have it on or anything. I just figure I'm always weird if I'm the only one. Do you care?

![](data:image/png;base64...) **Elisabeth Beltinger** 3:40
Oh.
Sure. You don't have to have it on at all. So feel free to be off camera if that's more comfortable. Yeah.

![](data:image/png;base64...) **Michael Bernstein** 3:45
Okay.
Cool. No, I just wanted to make sure, because I'm just going to be drinking coffee anyway, so, you know, it's all good. But yeah, I have no, oh, I mean, it's, it is afternoon now. It's lunchtime. Okay, I was about to say it's still morning now. I've been heads down on stuff and totally lost track of, I mean, I knew it was the, we were meeting at noon, but it just didn't actually like,

![](data:image/png;base64...) **Elisabeth Beltinger** 3:51
Awesome, yeah, the afternoon coffee.
Min.

![](data:image/png;base64...) **Michael Bernstein** 4:07
I didn't internalize it in a visceral way. So yeah, we can get going. I'm happy to answer and to the best of my ability on things to whatever you want more insight into. So.

![](data:image/png;base64...) **Elisabeth Beltinger** 4:12
Cool.
Yeah, awesome. I think it might make sense just to get us kind of restarted or level set again. Last time you walked us through the product feedback or like bug trash workflow, and we just wanted to go one level deeper to really be able to understand the exact
sequence and really understand the exact way in which the tools are used that you deploy in that workflow. I think you mentioned temporal and cloud code in that specific workflow and just see who really owns each each step. So if if we could kind of go through that on like the most granular level.

![](data:image/png;base64...) **Michael Bernstein** 4:54
This.

![](data:image/png;base64...) **Elisabeth Beltinger** 5:03
and really highlight which steps are executed by which AI and what exactly it does, that would be awesome.

![](data:image/png;base64...) **Michael Bernstein** 5:03
Yeah.
Okay.
I...
Yeah, so temporal, so temporal is just a durable execution platform that's kind of like in the form of a queue. I'm not sure if you're familiar with it or if I should go into more detail on temporal itself, because it's not really doing anything AI-wise, temporal itself.

![](data:image/png;base64...) **Elisabeth Beltinger** 5:29
Okay.

![](data:image/png;base64...) **Michael Bernstein** 5:30
Are you familiar with temporal? If not, I can give a brief overview of it because I think it would help separate that out and sort of like shine some light into the, you know, if granularity is what you're looking for, I think it would help.

![](data:image/png;base64...) **Elisabeth Beltinger** 5:41
Yeah, yeah, definitely. That would be awesome. We we we Googled it briefly afterwards to understand it, but I'd be really curious to hear kind of...
more detail and then also how you leverage for sure. Yeah.

![](data:image/png;base64...) **Michael Bernstein** 5:51
Yeah.
Yeah, so Tim, and I think it's super interesting because we didn't, at the time we chose it, realize OpenAI was using it heavily in both training and some inference related stuff, like a lot of the big labs and Anthropic is definitely using it. So it's in heavy use to help facilitate building AI as well as even creating workflows.
So the idea behind Temporal started back at Amazon. So there was a guy there who built essentially Amazon's durable execution platform where everything runs through it. And the idea is that like, you know, you have these, you can have workflows that will last a certain, they can be short-lived, they can be long-lived.
they can literally last years and restart based on certain criteria. And so the idea is, you know, they, they, they, and I think I mentioned, I wanna say I mentioned last time that, you know, we can send emails and then have temporal workflows like get that, you know, the human in loop input from those emails or, you know,
you know, pull another system and then, you know, continue executing after it gets that feedback. But the whole idea behind it is that you want something that's durable to run these AI workflows in because like not everything, like most advanced workflows are going to be multiple steps where
you know, there's an agent that does something, probably it could be that there's three agents that do something, and then there's an agent that synthesizes the results of the three agents that are doing something that gets taken. Maybe there's, you know, some sort of filtering step, maybe it's code, maybe the agent writes code, but there's none of them are like,
you put a prompt in and then it's done. There's multiple steps along the way to do anything complicated and anything kind of like enterprise level. And so what temporal does is it gives you workflows and activities to be able to do that. And so a workflow would have many activities. A workflow can have sub-workflows.

![](data:image/png;base64...) **Elisabeth Beltinger** 7:38
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 7:56
So just think of them as abstractions for computation, which agents are just computation, like agents are doing things, agents are just code in a loop at the core. You know, that's being a little reductive. They're very intelligent, mutating pieces of code in a loop, but that's kind of all they are at the end of the day. And so.
Temporal helps facilitate that by having a place to run that all, having retry logic. One of the big things when you're building workflows, a lot of times like your API may be, or rather like Anthropics API might stop being responsive. And so you do some exponential back off and you want to retry it and you want that to survive. You don't want it to fail. Like if you're running an hour long AI workflow.
you don't want that to fail in the middle of it and not be able to recover. And so, you know, that's where temporal comes in. That's where the durability comes in with exponential retries, being able to, you know, if one of the cool things is like if you have a bug in your workflow, you can redeploy the workflow and it will pick up where it left off as well, which is super, super cool.

![](data:image/png;base64...) **Elisabeth Beltinger** 8:57
On.

![](data:image/png;base64...) **Michael Bernstein** 9:00
So yeah, temporal is not really AI. It's more of, it's our harness for using AI and AI tools. And it just, it has so much built in distributed system goodness that we would have to build ourselves and think about ourselves. That it's just, I couldn't imagine trying
to do this without temporal. I can't imagine people like trying to do like, you know, Lang chain flows or something that just sort of like fail and end in the middle of it sometimes because of external issues and such. It's just, you know, yeah, it's just so key and you can put whatever inside of it.
And so does Python, Go, Java. So I mean, you know, you can do a whole lot. But the idea is it's a queue at the end of the day. So you get queue semantics and you run workers that pick up, you run activity workers that understand what to do for you, you know, the different stages and coordinators for the workflows and such. So.
You get the ability to not only just make sure things are running and restarting and all that, but queue semantics are really, really a big deal when you're building both workflows, because you're going to have a bunch of things running at once, and sometimes, you know, you have things that are sequenced, but also as well as building the external product.
So that's my temporal spiel. It's amazing. It's open source. And that company is rightly getting a lot of, in the past year, they've gotten a lot of notice and a lot of usage inside the big labs for good reason. And so, yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 10:31
And how much of the temporal is like pre-set up or like basically you kind of like pick and choose from pre-provision settings or workflows, etc. And how much of it is you having to customize it to the workflow that you're deploying temporal for?

![](data:image/png;base64...) **Michael Bernstein** 10:52
Yeah, most of, so by default out of the box, it will take quite a bit of customization, which is why it's more of an engineering focus tool that you write code around. We built a framework internally where we can, that is, you know, built with temporal, basically on top of temporal.
where we can very quickly spin up new agents that have a, that have a defined workflow. We call it Cortex, which is kind of, you know, kind of an easy name for something that controls stuff, but you know, we like, we like names. But yeah, the idea is that we can both build agents that are multi-stage, that, you know, have some Python code calling out to multiple models, doing all sorts of stuff.
As well as just simple YAML agents, which are prompts with various settings that are enumerated in just a configuration file, and those are our agents; it's just they have, they're less complex in some cases, they can those YAML agents can still, you know, call out to other YAML agents and and other things as well, so.
We basically built an agent runtime that is a little bit more generic and works for our needs to be able to move rapidly with temporal.

![](data:image/png;base64...) **Elisabeth Beltinger** 12:07
Awesome, and so...

![](data:image/png;base64...) **Michael Bernstein** 12:08
But I would say like you could still build things super quick with temporal. I don't you don't have to have that. We just look at what we're building and say we want to have for external customers hundreds to thousands of agents eventually. So it made sense for us to invest in that.

![](data:image/png;base64...) **Elisabeth Beltinger** 12:23
Yeah, yeah, that makes a lot of sense. And so I guess coming back to that specific workflow that you shared about last time, how can I think about like in the workflow, where and how is temporal triggered? And then what does temporal do? What does temporal trigger? If we can just go through that again and like...

![](data:image/png;base64...) **Michael Bernstein** 12:41
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 12:45
As detailed as you can slash want to give.

![](data:image/png;base64...) **Michael Bernstein** 12:45
Totally.
Yeah, so temporal also, and you've probably heard the phrase cron jobs before, which are just scheduled jobs that run. So temporal also has a scheduler where you can say, every 10 minutes, I want to run this process. Every hour, I want to run this. Every Tuesday, I want to do this deep, like super crazy test. And so what we do.

![](data:image/png;base64...) **Elisabeth Beltinger** 12:55
Mmh.

![](data:image/png;base64...) **Michael Bernstein** 13:10
And we keep adding to this is we have temporal schedules to run all sorts of tests, many deterministic tests that are, you know, just, you know, like Playwright, which use Chrome and like we know like it should always do this and we don't need an LLM. And then we have LLM tests that are, you know, where.
The function of what it's doing is pretty well understood, but the result can be variable in many cases, you know, and we're judging the output of that to see if something is broken, and we're using Claude code inside temporal, so we, you know, we have it often, we have like the keys and all that stuff, and we have a separate account just for.
for that. Actually, no, we're using Bedrock for that. Sorry, let me take a step back. That is a Bedrock powered one versus an unlimited one like we have for developers. And so that runs, and that then takes, you know, the results of that, examines them, and then decides that there's a problem or not, synthesizes it.
post to our Slack channel if there's a problem. And then tries, if it's, you know, something it thinks it could create a patch for, it tries to create a patch, pushes it to GitHub, and then we review the patch. We are not so advanced that we are having Claude auto deploy things. I think there's a certain level of like human in the loop sort of.

![](data:image/png;base64...) **Elisabeth Beltinger** 14:20
Sun.
Ohh.

![](data:image/png;base64...) **Michael Bernstein** 14:30
work that's needed on on on the on on things that go out to production. However, it does commit it and it goes out to our development environment, which is kind of cool. So by the time someone looks at it, there's already the functioning software or not functioning because Claude didn't get it right, software there to review along with the the patch.

![](data:image/png;base64...) **Elisabeth Beltinger** 14:50
I have two follow-up questions. So when it's sharing it to the Slack channel, does it prompt people to do anything with that information before it actually goes and deploys or creates a patch? Or how can I, like what type of information does it send to the Slack and then what do humans, I guess, do?

![](data:image/png;base64...) **Michael Bernstein** 15:06
Yeah, it.

![](data:image/png;base64...) **Elisabeth Beltinger** 15:08
do with that information.

![](data:image/png;base64...) **Michael Bernstein** 15:10
Yeah, so it says, so the two things that happen is, one, it says that there's an error, and then it follows up briefly after that, and it says, you know, this, there's a, you know, I have a patch, it's in this PR in this branch in GitHub, and then that gets deployed to the dev environment, like, because we have PR dev environments.
So it can say, like, it can say, this is a preview. It can apply basically a preview label to that pull request, which then spins up like a copy of the dev environment. It's not our main one, so that it's, you know, it gets deployed there with a few, you know, everything's in Kubernetes, so it's pretty easy to spin up more containers and duplicate the environment. And then you can, then, then.
prompts people to go and validate it. So it asks for a code review of what's done, and it says that, hey, it's in this PR, and through other automation, we have it automatically deployed, and people can go look at it. So it, again, this doesn't go to staging or prod, but the prompt is that, hey, there's this code.
Like any other human would would say, like, I need a I need a review on this code, essentially.

![](data:image/png;base64...) **Elisabeth Beltinger** 16:16
So it's more the first message is more like a warning, like heads up, I found an error. And then the second message is actually like, okay, I built a patch for this error. Review the patch.

![](data:image/png;base64...) **Michael Bernstein** 16:16
Does that make sense?
Correct.
Yep, at first, like, we had this idea a while ago where we had we started putting smoke tests out and we thought about it, and the genesis of this was, you know, once we're in prod general usage and we have a bunch of people on the platform, if someone gets woken up in the middle of the night, let's say, that's you know that needs to address this.
or they're, you know, on their phone or something, not at their, you know, and their laptops in their car because they're out or something in the grocery store, you know, what's the, is there a quick way where they can validate, one, sort of get a synthesis of the information and say, like, yes, this is a major problem and figure it out, like, you know, have Claude, you know, make that synthesis. And then even better yet,
be able to just like have the patch created and be able to read it over, look at it quickly on a phone and approve it and have it go out. So we're trying to like lower the barriers between, like, because on call is kind of a pain in the \*\*\* as, as, as you know, folks who are, you know, part of it know. And meantime to recovery from the DORA metric kind of world.
is one of our most valued metrics. So we want to know, like we kind of concede that we're going to make mistakes and agents will make mistakes. We want to be able to like catch.
those and fix them as soon as possible.

![](data:image/png;base64...) **Elisabeth Beltinger** 17:43
Yeah, super interesting and like I have so many follow ups from that. I guess my first one, just to get it out of the way, have you tracked the before and after of like exactly like the mean time to recovery that you mentioned, how that evolved since before the clod code temporal?

![](data:image/png;base64...) **Michael Bernstein** 17:48
Abilities.

![](data:image/png;base64...) **Elisabeth Beltinger** 18:03
rolled out slash after.

![](data:image/png;base64...) **Michael Bernstein** 18:05
We haven't yet because our main product goes live June 23rd. So we will, so it's less of a concern right now. I mean, we have those metrics. I haven't looked at them, to be honest. So it's more anecdotal of, wow, it was nice that, you know, this was there and, you know, we were able to validate that.
this fix quickly and didn't have to think about it too much. But that's definitely something that as we have, you know, more than just, and I think I might have mentioned this last week, that we're, you know, mostly focused on design partners with the new products. As we go beyond design partners, those will be sort of key metrics, but there's not a real, like, there's not an opportunity to measure the before and after just because like.

![](data:image/png;base64...) **Elisabeth Beltinger** 18:26
Mhm.

![](data:image/png;base64...) **Michael Bernstein** 18:46
We're not truly productionized for that yet. So when I say production, productionized, we're not, we don't have paying users on the system. We technically have it in a production environment, but we're, it's low usage, it's design partners. It's, you know, not public, publicly available yet for all of the groups of agents that we've built.

![](data:image/png;base64...) **Elisabeth Beltinger** 19:06
Gotcha. And then my.

![](data:image/png;base64...) **Michael Bernstein** 19:07
So, yeah, it would be really cool to be able to look at that and say, like, yeah, we had a 40%, you know, reduction in our MTTR, you know, but again, it's not on a live system, so...

![](data:image/png;base64...) **Elisabeth Beltinger** 19:20
Yeah, yeah, yeah, that.

![](data:image/png;base64...) **Michael Bernstein** 19:21
Would be nice to show that though. My gut is it's a pretty meaningful, you know, response. The only thing I worry about is, you know, once in a while the agents don't get things right and you have a human reviewer. And so you end up potentially pushing something. Maybe the, you know, if people get too used to.
the agent is 80% right. You know, my concern is that they will lean in on that and do less of a good review of what the agent's doing, and that 20% could come and bite us. So, you know, there's still some concern around that and making sure that we're doing things super well and tight.
Eventually, I think that you know we'll be able to depend on it more without worry, but there's probably some metric that we can, sorry, I'm about to sneeze, apologies. Excuse me, there's probably some metric we can look at. I've been thinking about this a little bit. There's metrics we can we can probably look at around like the size of the patch as far as like and the complexity of it.

![](data:image/png;base64...) **Elisabeth Beltinger** 20:11
Bless you.

![](data:image/png;base64...) **Michael Bernstein** 20:23
you know, as far as like how deeply we need to really focus on it. And also the synthesis, like I'm thinking through the synthesis of the blast radius of the change that needs to be made too. Like I would be less interested in agents creating big database changes that need.
to be deployed automatically, then I would be, say, a front end change or even a UX change in the Chrome extension. So a lot of it's like even adding categorizations to the issues or even like, and we could even use severities as well and say like.

![](data:image/png;base64...) **Elisabeth Beltinger** 20:52
Hu.

![](data:image/png;base64...) **Michael Bernstein** 21:04
You know, P1, P2, P3, but apply it to kind of like complexity and such.

![](data:image/png;base64...) **Elisabeth Beltinger** 21:10
Yeah, yeah, actually what you mentioned before, so the, you know, the AI might be like 80% right and the PR is that it that it pushes and and maybe the human review is kind of like not catching or potentially at some point won't catch the 20% where it's wrong, so.
Two follow-up questions on that. I guess my first one is right now, after the Claude code writes a PR, do you loop this through like another LLM to get a review on that before human looks at it just through a second model? Or if you don't do that, what kind of was the intention or choice behind that?

![](data:image/png;base64...) **Michael Bernstein** 21:47
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 21:50
Just trying to understand a little bit more how I guess you arrived at the current setup of guardrails as you described it.

![](data:image/png;base64...) **Michael Bernstein** 21:58
We don't have it going through a same model. I'd like to get it going through Codex and doing a review going back and forth. Like as I'm talking to you, I have a pie harness and Codex working on that has been working last night on a bunch of stuff for me with a 30 page design doc that I put together. And I have both Claude and then Codex in.
by itself in using GPT-55, like reviewing and as it's building and passing the reviews back to it. I'd like to try to do, and that's easy to orchestrate locally. It's a little bit harder to automate, I think, in the cloud and do some more of those advanced things, which kind of...
prototyping some of that, but in an ideal state, I would probably have it continually loop through with some sort of like invariant that when it hits that invariant count as far as the number of loops, it stops and I just says, you know, it does an analysis and says, like, you know, we have blockers, so we should not.
push this out, or these are, you know, we've hit the limit that we're looping through, but nothing like a real blocker. The biggest deal is a small or something or a medium, and you know, as far as the code review goes, and this problem is outweighs the risk of these two small things. So let's move forward and let's create a follow-up issue ticket or something. So I've been thinking through that.
You know, it's not, it's not as deeply validated today as I would like, but again, these things, you know, and I mentioned last week that you know a lot of this has done ground up and we we codify things through people building things and trying some things and and and bring patterns from.

![](data:image/png;base64...) **Elisabeth Beltinger** 23:28
Hartman.

![](data:image/png;base64...) **Michael Bernstein** 23:38
from engineers and try and deploy them. And this is just one of those where it's an iterative process and there's a lot of improvements we can make to it, but it's also doing pretty well. You know, it's 80-20. You know, the last 20% just takes some time and effort to do, and it's providing so much value that it's like, we could loop back and make it even better, but we have.

![](data:image/png;base64...) **Elisabeth Beltinger** 23:50
Yeah, yeah.

![](data:image/png;base64...) **Michael Bernstein** 23:57
higher priorities product-wise to focus on.

![](data:image/png;base64...) **Elisabeth Beltinger** 23:59
Yeah, no, and that's awesome. Totally, totally understand that it's a journey. So we're really trying to understand the journey. So this is great. My other follow-up question also from that 8020 is, do you currently have any type of feedback or learning loop back to Claude and like,

![](data:image/png;base64...) **Michael Bernstein** 24:06
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 24:19
say like the MD or the skill where it learns from the 20% where it was wrong and kind of is like, oh, this is probably something I should add to my review. Do you have that like as a standardized learning loop yet?

![](data:image/png;base64...) **Michael Bernstein** 24:36
We don't yet. What I've been thinking, so the simple answer is not yet. What I've proposed is that, so right now we use a monorepo and I think that that's a pretty key component in how we do things. And so what I've proposed is that we have.
Sort of like postmortems that we put into our monorepo, like right now, some design docs go in and we try and create a shared context that you know everyone's able to use both human-wise to get an understanding, agent-wise to get an understanding, and just kind of like create that, that, that, you know, that just, I mean, shared context, you know, supply it with that, and so, like doing postmortems of this.
The goal would be to, you know, break out post-mortems into a few different categories. One would be like operational post-mortems, like something went out, why did it break? What happened? You know, if it's a scaling problem, maybe it's, you know, like anthropic was down, how do we grade? You know, do we consider, you know, pushing things to other models or just saying that, you know, things are down?
you know, based on what customers, you know, the quality aspects, like there's a lot that would go in there, or rather is, you know.
So like some of that's there, some of it's not. The stuff that Claude is doing is absolutely like not in there at all. So.

![](data:image/png;base64...) **Elisabeth Beltinger** 25:57
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 25:58
It's, we've got to, I mean, we've got to clean up our shared context. It's kind of with anything that organically grows, it can kind of like grow out of out of whack a little bit. So we've got to like, you know, like take a take a chainsaw and cut down some trees or something in there and clean it up. But it's providing a lot of value. I think we're not doing that, but I, you know, I've thought about it a little bit and I think it would be like a really great addition.

![](data:image/png;base64...) **Elisabeth Beltinger** 26:13
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 26:23
To it, if it turns out to be formatted in...
If it turns out to be actionable, like or something where it increases the quality of it versus creating noise. So we'd have to do some tests there because like, you know, there's.
And I, I, I also think I mentioned last week that we use a lot of file pointers from like the the the claude MD points to an agent MD, so we can use multiple agents, and then it it points to a lot of different context structurally across the repo. We would we would need to figure out, like, when it comes to you know, automated fixes, you know, is there value there?

![](data:image/png;base64...) **Elisabeth Beltinger** 26:46
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 26:59
You know, can we condense it down so there's, you know, actionable learnings that material change, you know, whether or not Claude produces a good PR.
Not sure we would need to measure it. I think that if I if I if I were to do one or the other, though, I would probably add Codex as like a second check of the of the code in that before I would do the sort of postmortem, postmortem, I can't even talk today, you know, sort of like analysis. I think both could be really interesting and valuable.

![](data:image/png;base64...) **Elisabeth Beltinger** 27:26
Ugh.
Awesome. Yeah, yeah. No, really, really interesting. And it's actually nice that we're kind of moving towards the context layer, because that's something I wanted to dig a little bit deeper into again as well. I'm curious. So you mentioned the context is somewhat organically
grown. So as people are setting up the context or adding to the context, do you have like specific codified like instructions or like guardrails or what to do and what not to do when you're building context or is it still more like people are kind of seeing what works and
what level of context they have to provide for the agent to perform the task they intended to perform.

![](data:image/png;base64...) **Michael Bernstein** 28:16
Yeah, I don't want to say it's a little Wild West because we have some standards around it and we try and use a couple skills that some engineers had created around like looking for stale context. When you have a large mono repo, when you have a repo period, stuff's going to become stale and it's going to be like the pointing to the documentation and having some skill go through and make sure things are up to date.
becomes more and more important. Right now, a lot of the context is, so we use something called superpowers in Claude, if you've heard of that. It's a bunch of skills that are really well done. And so they have some really good ways, skill-wise, to create design docs and work through the whole like.
design thinking process and create specs, et cetera. And so what we do for things that have reasonable size stories and such, like features and everything, is we have, we work through that process by, you know, us defining a spec and then actually having.
that superpower set of skills help us decompose it, you know, refine the spec, break it into multiple stories, et cetera. Where this comes into the context aspect is those artifacts that are then produced and pretty well formed live in a design docs directory. And we try and have, and I've got, I was about to go look at the form. I don't think it's.
Super important, I can't remember off the top of my head what the format of the of.
The, let me see really quick.
So we have them all dated. So, so you know, the format of the file is descriptive of what it is, and it's also dated as well as far as when it was created, the doc-wise. And then we also have inside the doc, it talks about the implementation details and when it was actually like merged and deployed. So like it all gets updated so that, you know, there's some sort of.
time-based ability to scan through and understand the order of the design decisions. Because some design decisions may contradict older design decisions. Which is totally fine because we learned something, we failed at something, altered course, et cetera. So.

![](data:image/png;base64...) **Elisabeth Beltinger** 30:24
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 30:30
Um...
We've so far, like, I don't, I don't have a good sense of...
if keeping the older design decisions that have been invalidated is worthwhile. We, it's really hard to measure that, but like part of our thinking is that.
If there's a new design decision that needs made where there's like an engineer collaborating with an agent on trying to figure out what that looks like and they're, you know, trying to get feedback on it, having the invalidated, an invalidated version of something that, you know, may remove it from the agent suggesting it or even analyzing it is kind of our thoughts. So there doesn't.
So far, we haven't seen like a gigantic downside, but as the context keeps growing, I don't have a good feeling of, like, if that'll be a liability or not, or if it's just something we can press down. I don't have a good sense of that quality yet.

![](data:image/png;base64...) **Elisabeth Beltinger** 31:25
Yeah.
So do you have some sort of process right now to, or do you at all take things out of the context where you're saying either, oh, this is really dated, or as you mentioned before, maybe some like references break and you kind of have to recheck if everything's still working. Do you have like a set process to check these things or to weed through and see what context do people still need?
not people, sorry, agents still need versus what can be thrown out.

![](data:image/png;base64...) **Michael Bernstein** 31:58
We don't on the design doc directory. Well, rather, let me be more clear. We don't remove design docs or edit them after the fact in the design doc directory. That's kind of like a point in time and such. We definitely have a skill that will go through.
and try and look for stale code and, or not stale code, stale documentation. And you can even do this interactively. People do it interactively all the time, you know, where they want a little bit more control. And they'll scan through data, you know, documentation and look for things that are out of date or need updated, especially when they're touching. My ask is always like, if you're in a...
in a piece of code, you or an agent, however you're creating that, because at the end of the day, you own the outcome, agent or not, to make sure that you go through and any documentation updates that need done, you or the agent make those updates, which could be removing stuff outside the design.
directory or the design doc directory, we will absolutely remove files and context that is no longer relevant as far as what is running. But we consider the design doc directory to be like a historical view of the decisions that were made progressionally. So, you know, and again, that's, you know, might be naive, might be valuable. We'll see long term because it's only been, you know,
We've only been doing that for like 6 months, I want to say. So I think that, you know, it's still up in the air as far as the value there goes, but I think that there'll be value. But we, so like we keep that, it's kind of like a pristine historical record of what's happened. And then, and that's at the root level in the monorepo under design docs. And then I have all documentation.
that sits with the code we expect to be kept up to date, because that is kind of like the current state of the world, regardless of the past design decisions that may have been kept, may have been thrown away as far as like implementation goes.

![](data:image/png;base64...) **Elisabeth Beltinger** 33:52
So, do you have any, like?

![](data:image/png;base64...) **Michael Bernstein** 33:53
But it's kind of two views in terms.

![](data:image/png;base64...) **Elisabeth Beltinger** 33:55
Do you have any required, say, cadence in which people should run the cleanup skill?

![](data:image/png;base64...) **Michael Bernstein** 34:05
There's no required cadence. Most people just run it before they run a, you know, have a commit. They just, you know, if an agent is working on something, I think we have something in our agent's doc that says, like, you know, when you're done, just, you know, before you commit, you know, double check the documentation for the module you're working in. I think it's, you know, that's the most common thing. I think that some of it's automated.

![](data:image/png;base64...) **Elisabeth Beltinger** 34:21
Mhm.

![](data:image/png;base64...) **Michael Bernstein** 34:25
And you know it, but, but again, it's the requirement is that, like, people own and represent as their work anything they commit, regardless if they had agents working on it or not, they're responsible for the outcome of it, and part of that is, you know, like, like any normal engineering process, the documentation is stepped up to.
up to date. It's just easier these days to do it. It used to be, you know, in the world of, that's why we have everything in the mono repo. You know, when I joined, the prior team had like confluence docs and everything else, and everything was disconnected from the code. And, you know, we found that have the contact with the code, and that's always been the case, I think, like.
even for humans, it's always invaluable to have the context with the code, yeah, in the Git repo, but it's just even easier and there's even more reason to do it now with agents, you know.

![](data:image/png;base64...) **Elisabeth Beltinger** 35:15
Yeah.
I have a few follow-up questions on the monorepo setup.
We're kind of, as we're going for the conversations, we're realizing people do have different approaches of setting up context, and so we just wanted to kind of double-click into what prompted your company to set up the monorepo structure versus like other setups, like a modular architecture that you could have chosen, kind of.

![](data:image/png;base64...) **Michael Bernstein** 35:31
Totally, sure.

![](data:image/png;base64...) **Elisabeth Beltinger** 35:45
Also, whether that was like an intentional choice or it kind of grew like that over time.

![](data:image/png;base64...) **Michael Bernstein** 35:52
Yeah, so that was an intentional choice that I brought with. So one, I started with a greenfield project. So again, you know, like I think I went over it last time, Markup was a company called Acrolinx that kind of missed the ball on Jen AI. And so we are still selling our classic products and so lots of Fortune 500 companies, I mean tons of Fortune 500 companies.
but we have this new sort of like AI focused product set coming out, a bunch of agents. And so I had like a greenfield place where we had, you know, a few of us, you know, my, the CTO, my boss, as well as one other engineer where we joined and I'd worked with them all before and sold a company with them. So we all just kind of got together over a couple of months and back a year ago and we're going through a lot of this. And I was making, you know, I.
At the end of the day, I own the technical choices, which is awesome. You know, again, I've worked with Sean, who's my boss, for, you know, years at this point, you know, but...
Yeah, so I've always been a big proponent of monorepos because I think that, like, you don't, one, I think, and I think this, I'm being proven right rapidly, which I love for a few different reasons. One, and it's not because I was like, you know, prophetic or anything, I just kind of got lucky, but it turns out that my concerns are becoming...
more major concerns. One, I'm a fan of vendoring dependencies, and I've always been wary of supply chain attacks and other things. And if you followed NPM or anything else out there, and everything that's happening, it's pretty crazy as far as supply chain attacks and all of the stuff happening. And so, you know, monorepos are one way to help.
You can do it a few different ways, even vendor dependencies, and that's one of my favorite ways because you have everything.
There, I mean, watch the internet every time or watch the network, but also for shared libraries, which you always, as you get to a certain scale, you end up sharing code across certain modules. If you end up, let's say you have a GitHub repo that has a set of libraries, and then you have two services that are other GitHub repos, and they import that library. Let's say someone goes in and they modify that library.
And they, and and and you know, group A that uses that library knows about it and they validate it and everything works. Group B doesn't know it changed, they import it in the next build and everything breaks. So you are paying the cost of development and fixing that after the fact. You're paying it without knowing before you're making those changes.
With A mono repo, you understand the cost of making those changes at the start, because you have a shared test suite across everything in a shared build system. And so you go in eyes wide open to the cost of what it takes to change software and have it be correct across the whole system. So I think that, like...
That, that with the with the supply chain issues in the vendor and some other features is super nice. The other thing I've found, and I was I was at a dinner the other night talking with other engineering leaders and and kind of getting an understanding of how they're doing it, is I found that having the context in the mono repo was like super nice. The one.
First, I was talking to someone at GoDaddy and he was telling me that, you know, they have a shared, they just have a context repo where all the context goes in there. And the problem I have with that is when you want to do cleanup, you're having to like, I mean...
If you want to use AI to do clean like AI needs to know about all of these repos, it needs to know about GitHub, so you're at the you're sort of like at the whim of GitHub and whatever sort of API tools exist there when you're able to pull everything down, even if it's, you know, 100 gigabyte repo, like with plumbing of storage, you're able to use.
like native file system tools, which one are going to be way faster for analysis than doing those over network calls. And you're able to, you know, put the context in the right spots with the code. So I think two things happen. One, you're able to make better decisions because you're not going back and forth between two different, you know, two different sort of like surfaces.
With kind of API tools in between, versus you know, your native file system tools, which I think you can you can use, you know, grep and rip grep and you know, set all these tools to like just blaze through and get it, you know, help you know, agent understands them super, super deeply, like insanely deeply, and...
Two, I think the...
So it's really easy for the agent to be like, oh, the read me is right next to this for this modules here. The explanation of how it works with API description or whatever is in the same folder. As it's scanning through, it's like, oh, I see this disconnect between these two things. You're not even asking it half the time. And it says, I need to update this. And so rather than having all of this like.
extra instruction that further bloats context, you know, to go to this shared context, GitHub and all of this, like, it just seems way simpler. And I'm a big fan of simple and stuff that doesn't break easily. So yeah, so I got, I'll say like I was already a big proponent of monorepos and shared tooling and building things like that and getting leverage like.

![](data:image/png;base64...) **Elisabeth Beltinger** 40:49
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 40:57
I don't want to rebuild a build system 18 times for 18 services. I want everything in one place, and I want to use something like Bazel, which Google built, and I want to have, like, I want to gain leverage across the whole repo. And so, like, for me, monorepos are just like a natural place to put everything.
especially at least for our side. I mean, then again, Google's historically famous for having, you know, an insanely large amount of people. They have special tools to manage it, but like they're going to get the same advantages at scale. So.

![](data:image/png;base64...) **Elisabeth Beltinger** 41:19
Yeah.
And what are some of the trade-offs that you see with the monorepo, or maybe anything that you think you cannot take advantage of as much because of the structure that you chose, or maybe as it scales anything that you perceive as a trade-off that you're actively making?
by choosing to have that monorepo.

![](data:image/png;base64...) **Michael Bernstein** 41:53
At our size, I don't think there's a lot of trade-offs around, you know, you, the biggest trade-off is like, you need to care about the tooling in your mono repo and care about like the developer experience and invest some time there. We use Bazel, which is historically a very hard build system that Google.
creator that can do everything imaginable and is amazing, but you know, historically has had a team of people managing for a reasonably sized monorepo. The difference, and when I was a governor, I had a team of people managing that for me. The difference is that Claude is really good at that now. So it turns out that Google having tons of documentation online and Claude being able to like...
do everything with build systems and do it really well, changes that calculus dramatically. I'm about to write a blog post about using Bazel and such and monorepos when building software these days, because it's like, I can't see why you wouldn't want to. There are a few cases where you...
where it doesn't work out super well, and that's one, if you wanna open source any components of what you're doing, you would have to, you can still get past that, but you have to have some sort of bidirectional sync to some other repo that is public, for instance, because you're not gonna open up your main model repo to everyone.

![](data:image/png;base64...) **Elisabeth Beltinger** 43:14
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 43:15
which then you introduce a little bit of risk if you're doing it automatically. So yeah, there's little things like that which I think can be annoying. You could extract parts of your mono repo into those repos and then do it the other direction so you don't have the risk of leaking. That creates other annoyances. So there's going to be some like.
small friction depending on what you're doing. But if you're not trying to like open source things, and there's probably a couple other cases like that that if I thought long enough I could come up with.
But unless you have some edge cases like that where you're trying to do things externally or you have some weird requirements.
I don't think these days with AI especially and coding agents that there's a gigantic downside.

![](data:image/png;base64...) **Elisabeth Beltinger** 44:01
I'm also curious, as you think about potentially growing and there are other functions in the company outside of software building or software engineering, how do you think about
agents for them, where would they get the context from?
And how would they provision the kind of...
memory layer, context layer, and kind of pointing to the right resources, infrastructure.

![](data:image/png;base64...) **Michael Bernstein** 44:33
Yeah, so we have two things that we've done internally. One of them is we're trying to make sure that any sort of like, and most of the context I've talked about is very engineering focused context. So a couple things we're trying to do is we're stealing the concept of model cards from anthropic. And so we're gonna, what we're doing.

![](data:image/png;base64...) **Elisabeth Beltinger** 44:44
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 44:53
is we're creating some skills that will go through and generate what we're calling agent cards. Because what we realized is that the go-to-market team, normally it's engineering that is kind of like the long pole as far as getting things done. We realized as a group that engineering is actually way faster than everyone else these days.
Yeah, even with complex things. And so it's like go to market that is behind or, you know, engineering products together very fast. So it's all the other functions that are having trouble keeping up. And so, you know, we said like, okay, we can make when we make new agents or we make agent updates, we can keep a set of like agent cards available and you can use that as context.
for your personal understanding as a human reading them, because they should be well formatted. You can use them as context for, and I mentioned Libra chat last week. You can use it as context for Libra chat if you want, where you can, you know, pull that in and do some work with it as shared context. You can use it in marketing campaigns. You can use it for whatever you need it for.
as far as keeping up with the changes. And so that was one thing we've done. And we've also just said, like, hey, we've got a lot of documents around Google Docs or other stores, like open them all for all, for anything that we want shared context, open an MCP layer up to Libra chat, which is what most people are using.
outside of engineering and product for, you know, for, you know, AI workflow type of agents. We have a few people, as I mentioned, like our CEO using some some cloud code for some some vibe coding. And so what we've also done is we have a platform internally as of last week where folks can, and we already had a couple things deployed, but it's been like.
This is now, and I might have mentioned it, but it's like officially deployed and announced where people who have some vibe-coded, like small apps or short-lived things that are internal only. I think I mentioned the migration tracker, which was a spreadsheet before, that turned into a small little vibe-coded app. There's a place for them to run it and all that.
So...
Yeah, shared context-wise, I would say that the story across the company is a little bit less robust than in engineering, but I think it's still pretty good overall for where we're at.

![](data:image/png;base64...) **Elisabeth Beltinger** 47:06
Gotcha. Yeah, yeah. No, really helpful. And then I guess in the monorepo, how exactly does the agent know which part of the repo to go look at in an efficient way without having to scan the entire thing?
Thing.

![](data:image/png;base64...) **Michael Bernstein** 47:29
Um, yeah, so that's mostly like file pointers, so you know it's start it's it's.
It's starting out by like having almost like tables of contents. So again, so like, let's say we're using Claude, there's a Claude MD. It says, okay, we use an agent MD. Claude doesn't need to use that, points to the agent MD. So the agent goes and says, okay, I've got to open the agent MD for whatever I'm looking for. And then there are, then there's like, you know.
Certain context about the, you know, the structure of everything, how to run things, but then there's context about how to find information on each of them, and it talks about, you know, what the different services are, and then you know, points to the the different readmes or pieces of documentation for each service, so the agent really can like...
do kind of like sequentially scan each document and it's kind of a tree. I mean, it's actually a tree, you know, where documents point to other documents, basically file pointers, and it's able to get to the information it needs. And if it can't, if it doesn't, it goes back and sort of reverses up the tree and then goes down another section.
So hopefully it guides it properly. I haven't run into too many problems where it hasn't found the right context. It's conceivable that if something's orphaned and not linked, it may not find it. But then again, if it knows the service it's looking for, you know, it can it can scan like they're amazingly good at scanning file systems, which is again why I like the idea of a monorepo versus.

![](data:image/png;base64...) **Elisabeth Beltinger** 48:33
Gotcha.

![](data:image/png;base64...) **Michael Bernstein** 48:53
a bunch of repos that you have to then go to GitHub and this and that, because like it will look through the whole repo in seconds and find the files it needs, even if it's, you know, disconnected from the documentation. But ideally it follows that tree.

![](data:image/png;base64...) **Elisabeth Beltinger** 49:04
The.
And is the repo, would you say in general, organized in a way that's still like intuitive to humans or have you put very intentional, I guess, organization around how an agent would work versus how a human would work as you were setting up the repo?

![](data:image/png;base64...) **Michael Bernstein** 49:27
It's intuitive for humans. My sort of feeling is that like most of what we measure reasoning, or not we, just like as a human race, is we're, you know, investing in AI and sort of like measuring the quality of what AI does. We're measuring its human standards. And so I, you know, I don't see too much, like we're not, you know, AI is, you know,

![](data:image/png;base64...) **Elisabeth Beltinger** 49:29
Mhm.

![](data:image/png;base64...) **Michael Bernstein** 49:47
models are communicating in English and other languages, but they're not communicating in like an AI language, for instance. And so most of all the effort around AI and reasoning is done from the lens of a human. So our thesis is that if it's easy for humans, it's easy for agents.

![](data:image/png;base64...) **Elisabeth Beltinger** 50:05
Gotcha. That's really clear.

![](data:image/png;base64...) **Michael Bernstein** 50:07
The structure should be shared.

![](data:image/png;base64...) **Elisabeth Beltinger** 50:11
And speaking of models, what models are you actually kind of running for each major workflow? Do you use for certain workflows, maybe like an older model, just for efficiency purposes, or because you notice it works quite as well, or do you use the newest models for everything? And kind of how do you go about that decision?
where to deploy which model.

![](data:image/png;base64...) **Michael Bernstein** 50:37
Yes, so we use a whole host of models. We try and keep up with the latest versions of models only because they charge more for older models and then they sunset older models. And so we find that like just keeping up with them is better. That doesn't mean that we don't use cheaper versions of the models. Like we use.
some Gemini, like we use some limited Gemini still, but we use, you know, Gemini Flash 3, whatever the latest version, the one before 3.5 that just came out the other day, might be 3.0, I don't recall off the top of my head. We use, you know, the Claude family, the, you know, of models. We'll do some things with Haiku, some things with Sonnet, some things with Opus.
more Sonnet and Haiku for most of it, but we use the latest versions that come out. And the way we just ensure that things work well is we do as much eval sort of processing as we can. We do it in a platform called Brain Trust, as well as some of our own additions, because like there's no real platform out there that.
That's they're all really good at doing things like evaluating single prompts, but when you have like 7 or 8 prompts in a workflow in a row, like there's no real system out there that does a great job of evaluating that. So, you know, we have our own measurements and such, and one of our data scientists and ML engineers, like they focus on a lot of that and really like getting.
the numbers behind that. So we keep up with the latest version, but we definitely use multiple versions inside a family of models.

![](data:image/png;base64...) **Elisabeth Beltinger** 52:01
And so in one workflow, would you have an instance where even in one workflow, there would be several different models used? So say in one workflow, you have Haiku, you have Sonnet, and then you have Opus, like very simply speaking. And what?

![](data:image/png;base64...) **Michael Bernstein** 52:13
Absolutely.
Yep.
Absolutely, like, like we have, we have workflows where, like, let's just, you know, for for just to put some some words behind it, where terminology, which we're calling brand terms now, we have a few different, like, in Europe, they like, you know, the tech operators there like terminology a lot, and we we come from a German company background, even though we're U.S. based now, and so...
For terminology, we heavily use, like, we found that Gemini is really good there, and that's used in a workflow where the kind of like the the the the the agent that's controlling it all is is a I don't know if it's right now, it's one or the other. I don't know what the what the team has done, but it is it is a different model that's then controlling, you know, and synthesizing that's calling out to a bunch of different agents.
And a bunch of those agents are haiku because they're simple tasks where we know haiku works really, really well. Some of them may call out to Sonnet. Again, I just mentioned, you know, terminology, we'll call it to Gemini. So we are definitely figuring out what models just work the best for the work, for like we break out all these things into composable sort of pieces and it's like.
what agent, you know, for the goal of this agent, this agent is very goal focused. It takes this input and it should do something and return some something, you know, out of this agent and like what agent measurement wise is the best for that. And then we just pick that model. If it's Gemini, cool. If Gemini is 5% better than Haiku, we go with Gemini there.

![](data:image/png;base64...) **Elisabeth Beltinger** 53:38
Mhm.

![](data:image/png;base64...) **Michael Bernstein** 53:42
And you know, if we need something where you know that you know the Gemini Flash isn't good enough, and we say, "OK, we need a Sonnet level model here, we'll look at Gemini Pro or whatever, and then we'll say we'll do a comparison and we'll say, 'Ohh, in this case, the best result we get is actually from Sonnet for, you know, and sometimes there's a cost analysis of it, like, you know, Opus versus Sonnet, you know, is there...
Is there a real difference? A lot of times, like, if Sonnet solves something, like Opus isn't necessarily, and gets it right, like Opus isn't going to necessarily do any better. It's just going to be slower and cost a little bit more. So it just depends on how hard the task is.

![](data:image/png;base64...) **Elisabeth Beltinger** 54:15
Yeah.
Awesome. That's really cool. I am going to make, I think, a...

![](data:image/png;base64...) **Michael Bernstein** 54:21
It's really hard to manage sometimes though and do that eval and go back and like the stuff we're doing to try and like keep up and make sure that like we pick the best models can be a little arduous. So I think like whoever solves how to do that really, really well for like multi-stage workflows is going to make a lot of money in the eval market.

![](data:image/png;base64...) **Elisabeth Beltinger** 54:38
Oh.
Yeah, yeah.

![](data:image/png;base64...) **Michael Bernstein** 54:40
Because no one's done that. I would just pay someone to take care of that for me.

![](data:image/png;base64...) **Elisabeth Beltinger** 54:44
Awesome. We might have a business idea right there. I'm going to pivot a little bit and just spend the last roughly 5 minutes talking a little bit more about like talent, culture, hiring, which I know we also briefly touched upon earlier. But kind of 1 hypothesis that we had and just wanted to kind of

![](data:image/png;base64...) **Michael Bernstein** 54:49
The.
Yep.

![](data:image/png;base64...) **Elisabeth Beltinger** 55:06
play back and forth with you is that as junior engineers come in and code heavily with clod code, et cetera, there is like a tendency to code very heavily the happy path. And we're kind of curious to get your thinking about how you think about like.

![](data:image/png;base64...) **Michael Bernstein** 55:14
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 55:26
Avoiding that engineers only code happy path and like don't build this skill of also coding for different failure modes and like learning about failure modes and system complexities, etc.

![](data:image/png;base64...) **Michael Bernstein** 55:38
Hu.
That's interesting because I think that that is totally true, but I don't think that's new. I think that's been happening since, I think, I think, you know, I've been in engineering leadership for like 13 years now, maybe, I don't know, for long enough. I don't think that's a new thing that's happening, though. I think they've always come in and
mostly coded happy path. I think the speed at which they can code happy path is just faster. But I think that like to solve that, I think it's also very easy to learn faster about the not happy paths and to experiment and sort of like understand the edge cases and failures because you can literally ask Claude, like, can you enumerate a few edge cases that you can see?
And it'll come up with some for sure. And I think that like the ability to learn actually about it is way faster than when I started, you know, forever ago, building systems and writing code. So.
You're right, I just don't think it's new.

![](data:image/png;base64...) **Elisabeth Beltinger** 56:36
That's really interesting.

![](data:image/png;base64...) **Michael Bernstein** 56:37
I think it's always been a problem. I think that, like, I think junior engineers, like, especially super smart ones, like the sort of like the foot gun or whatever, whatever phrase you want to use for, you know, like that they've always run into is like overconfidence in what they build. And part of that is because of the lack of.
testing outside of the happy path. I mean, I fell into that myself back in the day, like just kind of like the way it goes until you see some of that and experience it and break things, you're not really aware. So I think, but again, I think that like the opportunity to learn about it more quickly is.

![](data:image/png;base64...) **Elisabeth Beltinger** 56:59
Mhm.
Yeah.
Yeah, yeah.

![](data:image/png;base64...) **Michael Bernstein** 57:15
way better today.

![](data:image/png;base64...) **Elisabeth Beltinger** 57:17
Is that something you encourage junior talent explicitly to like use this opportunity with Claude or you expect them, for example, by the time they discuss code they wrote with their supervisors to already have some sort of hypotheses on edge cases and failure modes and have thought about that because it now is so easy?

![](data:image/png;base64...) **Michael Bernstein** 57:18
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 57:36
with Claude to think about it, is that like, has your expectation on how people think about it changed?

![](data:image/png;base64...) **Michael Bernstein** 57:39
Yeah.
Yeah, and my expectation for people beyond junior engineers has changed. I think that like, it is so easy to fire off an agent and be like, just, you know, you can download superpowers, for instance, and claw and be like, do a deep review of this PR. Think about edge cases and tell me what's good or bad about this code.
Like, it's such an easy thing you can cut and paste every single time or put in another skill that, you know, calls those skills that like, why wouldn't you? Like, my expectation is that people should think about that because it's the cost of it is so minimal. The key thing that they have to make sure of is that, like, just because Claude may find some things doesn't mean they shouldn't think more about their code.
Something that I'm balancing heavily is, and I've, you know, one team that I've had some struggles with outsources most of their thinking to AI, and it's like, what's the balance between trusting Claude and, you know, or Codex? And I mentioned last week that I use multiple models when I PR my own code.
or do a review of my own code before I put a PR out. It's more like I then sit down and think about it for a while and such and I set it aside and come back to and let my subconscious even kind of noodle on it is you got to think about those things yourself and not just use AI. Like AI is a great way to like.
Explore it. And then think about some things and be like, hey, could this happen? And then you know, like work with Claude, like bisecting through the code or that you've you've written and sort of like find, you know, determining methods to test that. And then you say, OK, cool, well, it is a problem. Let's write a test for that, then we'll fix the code.

![](data:image/png;base64...) **Elisabeth Beltinger** 59:24
Yeah.

![](data:image/png;base64...) **Michael Bernstein** 59:25
So, yeah, I think that the the...
For people who want to learn and want to get really good at this, like I think it's never been a better time. I'm actually super against, I just don't think the idea of replacing engineers is feasible anytime soon because I know kind of like using them day to day myself, the limitations of a lot of this. And at the end of the day, like.
they can do wonderful magical things till they entirely just don't. So it's, you know.

![](data:image/png;base64...) **Elisabeth Beltinger** 59:52
Hu.

![](data:image/png;base64...) **Michael Bernstein** 59:55
I kind of liken it to Newton's second law, where I'm like, you know, F equals MA, and I'm like, you're the mass, rather your thinking is the mass, and AI is the acceleration. If you don't put any thought into it, and M is 0, you get nothing out of it. Doesn't matter how good the AI is.

![](data:image/png;base64...) **Elisabeth Beltinger** 1:00:10
Yeah, yeah.
Yeah. Awesome. I know we're at the end of our time, so thank you so much for sticking through another hour of us investigating all the different things you do with AI. No, so do we. It's so interesting to learn how firms are thinking about it. And that's why we have these follow-ups conversations, because as we start talking to other folks, we're like, oh, this is really interesting. I'd love to learn.

![](data:image/png;base64...) **Michael Bernstein** 1:00:21
Of course.
Super fun, I enjoy it.

![](data:image/png;base64...) **Elisabeth Beltinger** 1:00:36
about this for the other companies. So yeah, really appreciate you signing up again. Same procedure as last time. You'll receive compensation for the time you spent with us through the email that you signed up with for this conversation. That will be probably either late this week, although I think we kind of send them out.
early next week. So yeah, if you haven't received anything in a week, reach out to me. But yeah, really appreciate it.

![](data:image/png;base64...) **Michael Bernstein** 1:00:58
No worries.
Of course, and no worries on the timing. I'm glad I could be helpful, and if there's anything else, just always feel free to reach out.

![](data:image/png;base64...) **Elisabeth Beltinger** 1:01:09
Awesome, yeah, thank you so much.

![](data:image/png;base64...) **Michael Bernstein** 1:01:11
Cool. Take care. Bye.

![](data:image/png;base64...) **Elisabeth Beltinger** 1:01:12
Have a nice rest of your day. Bye.

![](data:image/png;base64...) **Michael Bernstein** 1:01:14
See you.

![](data:image/png;base64...) **Elisabeth Beltinger** stopped transcription