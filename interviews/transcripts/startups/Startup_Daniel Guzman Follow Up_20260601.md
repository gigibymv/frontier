**Daniel Guzman - Frontier - Follow-Up-20260601\_210006-Meeting Transcript**

June 1, 2026, 7:00PM

56m 30s

![](data:image/png;base64...) **Elisabeth Beltinger** started transcription

![](data:image/png;base64...) **Elisabeth Beltinger** 2:09
Hi Daniel, how are you?
You might still be muted. Oh, there we go.

![](data:image/png;base64...) **Daniel Guzman** 2:20
Bye.
Hi, Elisabeth.

![](data:image/png;base64...) **Elisabeth Beltinger** 2:25
Good to talk to you again. Thank you so much for taking the time to have another conversation with us. We really appreciate it. And as I mentioned, as we're going through the content from last time, there were just a few follow-up questions that we thought would be interesting to go through. So yeah, again, really appreciate that you chose to.
speak with us again. I think either we might spend the full hour today or we might need only a little bit less time given it's a subset of questions. In that case, we'd prorate you for the time you spent with us. But other than that, obviously the same things hold this last time, anything that you share.
is completely anonymized and won't be attributed back to your organization. But yeah, I don't know if you have any other questions or if we should just get right back into it.

![](data:image/png;base64...) **Daniel Guzman** 3:18
Yeah, no, it is okay. By NDA contract, of course, I can reveal any sensitive data in this conversation, of course, but I can talk about the generalized theme and how the workflow was built, of course.

![](data:image/png;base64...) **Elisabeth Beltinger** 3:35
Awesome. Yeah, no, totally understand. If anything is like too sensitive for given the NDA that you have, just let us know and we'll move on. But yeah, so last time we kind of walked through a workflow where, you know, an agent kind of independently works for you.

![](data:image/png;base64...) **Daniel Guzman** 3:45
All right.

![](data:image/png;base64...) **Elisabeth Beltinger** 3:57
through tickets and pushes the kind of fixes for bugs and then just a human kind of reviews the final PR. And you mentioned for that kind of workflow that every AI agent that is triggered by the tickets runs in an isolated repo.
in a virtual machine. So everything is in kind of in the cloud and in an isolated virtual machine. So we were kind of just thinking through like, does that mean that for every change there is a fresh isolated repo or do any of those repo?
kind of are they being reused? If you have any more details on that, do they get discarded? That'd be really interesting.

![](data:image/png;base64...) **Daniel Guzman** 4:47
All right, no, I mean, we have, as I mentioned before, we use Sentry as a an issues monitoring tool for our systems, and when Tika this.
Issued by a center report, it triggers this workflow, and...
The agent is basically looking for these issues in those projects. We have several projects being monitored by Sentry. In this case, when an issue appears, when a customer report...
something, it directly go to Sentry and others, you know, other store we use Grafana with Locky and go to the look something the issue is regarding with the database spikes or something in the networking system inside that.
Our cloud infrastructure, and with all that information, it creates a makes a triage, and if this if this is something regarding with the central with the central and our system, it triggered another agent with cursor.
That agents that go directly into the issue by a specific line, you know, with Sentry is always give us the information about what trace was the problem, give that information to cursor agent, and it directly.
and make that pull request with the with the solution or the proposal solution. Sometimes it goes directly and sometimes another engineer is looking for an exchange.
Which is VPR?

![](data:image/png;base64...) **Elisabeth Beltinger** 6:49
So I does it I guess I I'm not sure if I hear correctly that it doesn't actually spin up an isolated repo or not.

![](data:image/png;base64...) **Daniel Guzman** 7:00
And I'm sorry, what do you mean with an isolated repo?

![](data:image/png;base64...) **Elisabeth Beltinger** 7:05
Ohh, so from our first conversation, I guess our understanding was that every time sort of the agent gets to work and and writes the code or the bug bug fix, it will.
apply that change in an isolated repo and then open the PR that is reviewed by the human so that the change, I guess, isn't in the broader repo.

![](data:image/png;base64...) **Daniel Guzman** 7:29
Yes.
Yes, exactly. Now, this is an isolated repo, because sometimes the issue is on the on the front end side, sometimes it is with one for one of our APIs, and every every project has their own repository on GitHub.

![](data:image/png;base64...) **Elisabeth Beltinger** 7:52
And so.
Would every change spin up a new isolated repo or?

![](data:image/png;base64...) **Daniel Guzman** 8:00
Yes, yes, and I, and we we don't have an isolated repo exactly.

![](data:image/png;base64...) **Elisabeth Beltinger** 8:01
But.
And how do you manage that? Like, does that mean there could be like 50 repos at the same time if I like obviously dramatize it, but would that happen?

![](data:image/png;base64...) **Daniel Guzman** 8:16
No, yes, of course. No, we are always looking for, and at this moment, and the current stage is that we are monitoring.
Giving 5, 6 repos right now, the main repos of our system, and more mostly for our customer-facing systems, you know, the web, the web platform, the search repository, the notification repository, you know, and for example, if one customer...
Is complying that is not receiving email notification, and probably this workflow is going to apply or try to monitoring every error inside the notification system, and if is appear a new issue.
In the notification system, a new bot.
It will be the final, the final output is a PR into the notification system or notification repository on GitHub.

![](data:image/png;base64...) **Elisabeth Beltinger** 9:22
Gotcha. Okay. Also, I'm warning you already, the conversation is going to jump a little bit more than last time, just because our questions are on like targeted things. But kind of still remaining on the infrastructure piece a little bit more. Last time you mentioned that you have that custom MCIOpre for agents.

![](data:image/png;base64...) **Daniel Guzman** 9:33
All right.

![](data:image/png;base64...) **Elisabeth Beltinger** 9:44
for the internal documentation and then you kind of connect the different tools to
to the like internal MCIOpre. So I first I wanted to clarify, does that mean you have several MCPs each for like a different agent use case?

![](data:image/png;base64...) **Daniel Guzman** 10:06
No, not entirely. We have an internal MCIOpre, because in this case, we built a specific workflow, and this agent is running on a separate virtual machine, and the way that we put all this communication inside our...
our entire organization is with an internal MCIOpre connected by a webhook, you know. In this case, we have people, non-technical people working on cloud, for example, and we trigger an internal MCIOpre just to check on the
For example, now I checked this issue for our customer, or, for example, the people from CSM, for example, then the customer success management team can ask to clouds to go to.
to hotspot and trying to check the renewal license from one of our customers. This is all done by internal MCPs, directly connected by hotspot and our own systems, yes.

![](data:image/png;base64...) **Elisabeth Beltinger** 11:28
And architecturally, where does the MCIOpre live? Is it like a central service, a per team service, or is it like a library in the monorepo?

![](data:image/png;base64...) **Daniel Guzman** 11:42
See, this, it is kind of in a in a in a repo, and this is it is all hosted in Clover, for example, and the the main conception of this is a remote MCIOpre server.
All is deployed via cloud firm and did allow us to connect it literally to our own systems monitoring system and this agents or extension system that I mentioned before.

![](data:image/png;base64...) **Elisabeth Beltinger** 12:15
And how do you or who owns it then? Like, who's kind of responsible for each monorepo? Sorry, for each MCIOpre, not monorepo.

![](data:image/png;base64...) **Daniel Guzman** 12:27
No, for internal Services, we have a semantic a semantic layer that teach the the the agents, I mean the orchestrator, which repo or which system it have to to connect in order to
to bring information. In this case, with this semantic layer, we just build a...
A dictionary for, for, for example, a dictionary to tell the agent how to, I mean, where to look for for customer information or which MCIOpre for infrastructure issues, you know, and basically we build an semantic layer on top of that.

![](data:image/png;base64...) **Elisabeth Beltinger** 13:17
And who owns that dictionary? Like, who's responsible for keeping it updated and current?

![](data:image/png;base64...) **Daniel Guzman** 13:23
The AI Productivity Team.

![](data:image/png;base64...) **Elisabeth Beltinger** 13:25
Gotcha. And how does like functional specific knowledge, like I'm assuming like, say the customer representative has like specific type of knowledge on how to go about XYZ vertical versus like the other vertical, how does their functional knowledge get transferred into?

![](data:image/png;base64...) **Daniel Guzman** 13:43
Yes, no, that is kind of difficult. We run several meetings and constantly we have our bi-weekly meet with those teams because sometimes it's changed some of the procedures and they want to add something else with this information that they...
in order to give the agent the tools to be to respond better. So, yes, this is a shared responsibility of shared ownership between our team, the AI productivity team, and the leader of those areas.

![](data:image/png;base64...) **Elisabeth Beltinger** 14:21
And what's kind of, I guess, what's the blocker to having the leaders update anything, like sort of by themselves or keeping a file updated by themselves with the different processes, et cetera, and update as they change?

![](data:image/png;base64...) **Daniel Guzman** 14:39
I might think that the biggest blocker is that right now this is something that we are running inside the team, the productivity team. Something on this is currently in our roadmap is provide a way to give them the capability to update this documentation by itself.
We are running.
A program with, for example, with the pro team that they are non technical people in pro team. You know, designers or functional analysts and they are looking to to push code directly into into our system.
And we are trying to work closely with them in order to, well, this is, you know, teach them that this is a repository because all the information is hosted in a current repository, you know, this semantic layer is inside our repository. But the bigger issues here.
is that if there is no clear ownership of that, everyone can change everything. And this is something that we definitely don't want.

![](data:image/png;base64...) **Elisabeth Beltinger** 15:54
That makes a lot of sense. Again, I'm jumping, so like, excuse me, but...
When you're connecting the agent or the MCPs that are connected to the different systems that then the agent, I guess, leverages the MCIOpre, how do you decide how...
data is scoped for every new agent. Is that declared very clearly up front or is it almost like you give the agent a mission and then the agent kind of requests access for the things that it needs and then also kind of like who needs to sign off on the scope?
of access that an agent has. Like say the agent needs to access the customer database and also needs to access the ticket system, et cetera. Who kind of makes that decision and how is that decision made?

![](data:image/png;base64...) **Daniel Guzman** 16:56
Well, at this, at this point, with...
The rollout of these agents have been just strictly by areas. For example, the SMB agent is only handled by the Customer Success Manager team.
This is a way how we inform right now that how...
What kind of information we can we can share across all the company? We are we are a small company right now, we are one of the a big one, and but we do this is kind of the the the measure we we we made in order to avoid cross-information, because...
We don't want one big agent to do everything. As I said before, we built several agents with different scopes, and this scope mostly with a specific task, you know.

![](data:image/png;base64...) **Elisabeth Beltinger** 18:05
That makes a lot of sense. I guess I'm still for say even within one function. So in the customer success team, I would imagine that for humans, say like a very junior team member only has access to a certain type of information. And then if you're the senior lead in the customer success manager team, you can basically see.
all types of information that's available in your team, say like compensation information and like all kind of customer history and like someone junior might not have that information. Is there that kind of consideration when you scope access for an agent too?

![](data:image/png;base64...) **Daniel Guzman** 18:43
Yes, exactly. This is this is the main concern right now, because we have our team is splitting in different market segments. You know, we have SMB, we have mid-market, we have enterprise customers, and some of them are managed that.
by different people, key account managers. And of course, this is something.
This is something that right now this is not on top of this because this agent is only for support and well every issue is basically this known by everyone. And the customer success team has all the information on Hotspot. They put all the information there.
And the the role-based access control is basically handled by Hotspot on this, in this case, we only put the an access token for for this agent to to get connected by with Hotspot and.
The code is basically the only read read read only with a specific a specific contact list.

![](data:image/png;base64...) **Elisabeth Beltinger** 20:02
Gotcha. Okay, okay, that makes a lot of sense. And then as you scale debt to other functions that might have different rules on, like say finance might work quite differently in how they scope rules, is that something that the functional managers decide or is that something that you kind of think through?

![](data:image/png;base64...) **Daniel Guzman** 20:20
No, this is probably something that we need to discuss with our with the others other areas. For example, we do not have a financial agent right now. This is something that right now we are not been working actually, so just probably on that.

![](data:image/png;base64...) **Elisabeth Beltinger** 20:32
Mm.

![](data:image/png;base64...) **Daniel Guzman** 20:39
At that moment, we need to be aware of that kind of thing.

![](data:image/png;base64...) **Elisabeth Beltinger** 20:45
Gotcha. Yeah, yeah, no, super interesting. And then in terms of context, I know you were talking about sort of the mono repo before, but I'm curious what type of context is available to all agents, regardless of which function they're deployed in? Is there any level of like...
baseline firm context that every agent has access to.

![](data:image/png;base64...) **Daniel Guzman** 21:11
Well, um, this is really interesting because last week we, we...
We were trying to get some experimentation with virtual machine with sandboxes. You know, every every system that right now this is every agents are are currently running in in our in one.
Virtual machine, and we just try to split the DOS and different sandboxes. These sandboxes need to to get context for, obviously, these the system problem or the definition, the private definition, and self-improvement that the the this system have.
We are trying to, we are currently making an experiment implementation with Obsidian Ball in order to give them a graph file system, a file system graph node linked for every node that this agent.
Create in every iteration. We are currently in, we are currently implementing LLMs LLM Wiki Sepi from skill that allows our agent to improve in every interaction and well eventually the test is with this is that eventually.
It will the the the all the responses will be better across all the the the invocation from our customers, or in this kind of our our employees.

![](data:image/png;base64...) **Elisabeth Beltinger** 22:53
No, and right now, I guess that was like a recent experimentation. Is there anything already that's like shared between all of them?

![](data:image/png;base64...) **Daniel Guzman** 23:00
No, but right now this all shared and every node and every system from is currently shared between the main monorepo and of course we say we have put several skills from you know to teach the agent to how to.

![](data:image/png;base64...) **Elisabeth Beltinger** 23:13
Mhm.

![](data:image/png;base64...) **Daniel Guzman** 23:21
how to fetch information from hospital, fetch information from our own system, fetch information from send this. Yes, we do have some of the skills and we have built some skills in order to test this architectural agent to work.

![](data:image/png;base64...) **Elisabeth Beltinger** 23:37
Okay, awesome. Yeah, yeah, yeah. No, that was really clear. Speaking of skills, last time we also briefly spoke about sort of how the agent learns, and you mentioned that you have a skill in your organization where, like, after the agent ran, it'll put...
the change that it applied or the context back into that general skill for the engineering team. I think that was for the bug fixing agent.

![](data:image/png;base64...) **Daniel Guzman** 24:06
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 24:07
So I guess like when it updates that skill, how does it decide like what is a general learning and how does it decide what is quote unquote like noise? Or also if maybe two things are slightly contradictory because in one scenario it worked and the other one it didn't like.
How does it reconciliate the learnings, I guess?

![](data:image/png;base64...) **Daniel Guzman** 24:33
Well, in this case, it's mostly that well I was mentioning moments ago, then whenever a pull request is, whenever a pull request is accept and merge into the our.
And that's our our our base code, and it runs an automation that.
Give this information to the to the bugs, the bug fixing orchestrator, no, and in this case he tried to to with adorable object try to get information and run this LLM wiki still in order to to try to learn from those.
from those recent Pierre. This is something that usually work automatically because we are using Hermes on top of that. We're using Hermes and Hermes has its own self-informing skills. Yes, this is something that it runs automatically right now.

![](data:image/png;base64...) **Elisabeth Beltinger** 25:41
And is there any level of like curation that you have to do or control so that what comes back is actually kind of or is what you are trying to enforce or trying to...

![](data:image/png;base64...) **Daniel Guzman** 25:58
No, I mean.

![](data:image/png;base64...) **Elisabeth Beltinger** 25:58
Broaden across the organization, I guess.

![](data:image/png;base64...) **Daniel Guzman** 26:00
Yes, yes, of course. No, I mean, this kind of the only contract we have so far is we have we run several evals in order to get this done, and we have some metrics with lagsmith that allow for to to.
And check how this agents working right is working right now.

![](data:image/png;base64...) **Elisabeth Beltinger** 26:26
But other than that, I guess like the learning is relatively unsupervised as like, as in like the way it updates the skill or what it updates in the skill isn't necessarily monitored. Am I understanding that right?

![](data:image/png;base64...) **Daniel Guzman** 26:38
Yes, it is not it is not monitoring in that way. Basically, if we check the PR and all the PR that are being issued by this agent on on on cloud is given an idea if everything is is really good or not. Usually does PR are linked with the.
With the central issue, and we are constantly monitoring that, and right now this is working pretty well. I'm not sure how the this automation or how the improvement skill is working, because some sometimes it doesn't even trigger the auto the the self-improvement memory for this.
These cases, I'm assuming that this is a recurring error, I know.

![](data:image/png;base64...) **Elisabeth Beltinger** 27:23
Yeah, yeah, yeah, gotcha. Is there, have you had the case at all where, because I'm assuming say 2 engineers, human engineers review a PR and they make different like decisions on it. One might be this is good to go.
The other one might be, oh, actually, I think we should rewrite this code in X, Y, Z certain way, not because it changes the functionality, but because, like, they prefer it written that way versus the other one prefers it written the other way. And then, like, I guess the agent would update its skill with that new way to write things, and the other engineer would get kind of upset because it keeps writing things in a certain way.

![](data:image/png;base64...) **Daniel Guzman** 27:55
Yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 28:07
and it's like, that's not what I'd like. Is that anything, like, have you encountered something like that at all? I'm like genuinely just curious.

![](data:image/png;base64...) **Daniel Guzman** 28:15
No, no, yes, yes, absolutely. Actually, we have some engineers and mostly a staff engineer that, well, they are still cautious about how the AI is writing code, and sometimes they...
Flag another another about some implementation from this from this models, and because right now this all the coding changes is not doing by the orchestration agent that I mentioned before, it's doing by agents, you know, well, so in in some cases an engineer might.

![](data:image/png;base64...) **Elisabeth Beltinger** 28:49
Yeah.

![](data:image/png;base64...) **Daniel Guzman** 28:54
We, you know, mentioned cursor, we have the cursor and the cursor application inside GitHub, and sometimes it mentioned cursor in order to trigger the same agent on the same thread, and to make or ask for a specific change, you know, just like another engineer just doing it.

![](data:image/png;base64...) **Elisabeth Beltinger** 29:13
Mhm.
And then have you had like a, I guess, clash where someone triggers cursor to like update like this is how you do it. And then someone else sees that and is like, why is cursor now suddenly doing it that way? The way it did it before was perfectly fine. Like I guess like a difference in preference.
that then gets coded into the skill or like played back into the skill that then leads to like frustration if different people review it, like almost like the skill gets updated with conflicting knowledge.

![](data:image/png;base64...) **Daniel Guzman** 29:52
Yes, well, we do have some some question from that, and then the cursor automatically made this pull request with a sentry issue, so, so probably cursor have has a lot of context about what.
What line was causing that issue or that bug in in production? So, yes, but in most of the cases, it it it is okay that the change that it it gives us sometimes an engineer might an engineer might pull dot dot.
And...
Those branch for for for the local environment, and and try to work on on on on base of what cursor does, but he finally do some changes or some some logs implementation, and yes, this is something that that happens. I do not remember on a specific case.
Where an engineer directly reject a proposal Chen, a proposed change by by, but I do remember engineers pulling these branches, the new new branches from from that happened in and working on top of that.

![](data:image/png;base64...) **Elisabeth Beltinger** 31:12
Gotcha. Okay, no, super clear. For the next question, last time we kind of spoke again about like setting up this bug fixing agent and you mentioned you have like sort of internal documentation of the business logic of your platform and how that's supposed to work and you connect
that obviously to the agent through the MCIOpre. But beyond that kind of written documentation, was there, as you were setting up the agent, any type of other knowledge that you had to create for the agent to work? Like any knowledge bases, I guess, that you had to specifically set up.
for the agent to work.

![](data:image/png;base64...) **Daniel Guzman** 31:57
No, yeah, no, absolutely. For example, for the front end project, you know, we we we had a a a in split now, you know, in in the front end and back end and APIs on TravelpassGroup in the middle, sometimes we we put...
And this agent has knowledge about, has configured the MCIOpre for our public API, you know, the same API that is public for our own customers and some of our customers use them. And well, we use it as well as an internal.
as an internal tool that leverage this agents in order to do well if it needs to make change on the front end for a bad implementation from one endpoint, it can paste that information from that. This is one example that our documentation, for example, API documentation is hosted on.
On Mindlify, and Mindlify, you know, it offers an MCP itself in their their platform, so we could use we could connect on this MCIOpre for in order to give them our agent cloud agent this information.

![](data:image/png;base64...) **Elisabeth Beltinger** 33:20
And were there any knowledge stores that when you were still running that workflow manually, you used to use and now they are obsolete, you no longer need them?

![](data:image/png;base64...) **Daniel Guzman** 33:35
Not at all, because I mean, we do have some skills. This skill we have a model repo for different internal skills, from some of them are from engineering perspective, how we do something, how
Our internal communication or internal services communicated between them, and we have another set of skills in for.
Product from from product perspective, you know, the functional functional analysis.
SegmentationFollow the product, and this kind of knowledge base is often also in an internal documentation in, and we provide this this agent with this with this NCP as well.

![](data:image/png;base64...) **Elisabeth Beltinger** 34:31
Gotcha, so there are no, I've been outside even of what is connected now to, there is nothing that.
Humans used, but an agent wouldn't use.

![](data:image/png;base64...) **Daniel Guzman** 34:42
No, there's nothing that you may use that, and it just can't because we we migrated the last the the the last queue from from last year we integrated every functional documentation from you know internal internal docs on Google Drive to to Mendify, for example.

![](data:image/png;base64...) **Elisabeth Beltinger** 35:00
Mhm.

![](data:image/png;base64...) **Daniel Guzman** 35:00
That way, every agent can get access to those documentation. The big issue here is, as I mentioned before, is, well, try to teach our product team, you know, the analyst, the functional analyst team, to use GitHub to get this maintained.
Because then, then, you know, every every every change needs to be updated in documentation.

![](data:image/png;base64...) **Elisabeth Beltinger** 35:29
Gotcha. Makes a lot of sense. I know you might have like explained this last time already, but I just wanted to get more clarity on it. So you basically have this like orchestrating agent before, you know, anything is coded that makes the plan.
And that orchestrating agent, I assume, is the one who actually goes and looks for a lot of the context to make the plan. So how does that orchestration agent for the bug fixing workflow know where to go for the context for a given query? Is it kind of like a static routing? So it's like encoded like, oh, for every new ticket.
go here and then I'll kind of lead him down a path or is it kind of dynamic where whatever the ticket is, it kind of goes and like looks at 5 different things to figure out what the right thing is.

![](data:image/png;base64...) **Daniel Guzman** 36:22
Yes, now we created several of the skills and depend of the domain of the issue. For example, then we have a skill for for Grafana and how to look about in Grafana whenever these.
Is something regarding with the, you know, that the platform, if a customer is complaining about the platform is is being on slow, hey, look for for for Grafana and go to to their the areas or the database spikes, look for for...
Just and then.
Yes, all the simulation that we learn across all these years, all the insights we usually do, the task we usually do, we put it into the skill, and we we this skills is is put into the the the our our.
own system on semantic layer in order to give access to this agent and how, where to look for something. For example, we do have another skill to create automatically a ticket in our program management system in order to.
To flag on a new a new issue from our our send this report, for example, this is something that is is is is made by these skills I am this client.

![](data:image/png;base64...) **Elisabeth Beltinger** 38:01
And.
When the orchestration agents kind of work together with the like cursor, et cetera, is there any type of durable workflow engine? So if like the orchestrating agent fails mid chain or like gets into a loophole, it restarts from scratch or does it resume from failure or how would you know even if that was?
To happen.

![](data:image/png;base64...) **Daniel Guzman** 38:28
Well, at this moment, we do have an adorable object from Clover. This is a SQLite database that usually they get all the information, you know, hosted in inside the virtual machine.
And it can it rate over that?
We do have some limitation about how this is might scale. This is something that we are currently currently working on, but right now this all is stored into a SQLite database and this kind of the latest object, just.

![](data:image/png;base64...) **Elisabeth Beltinger** 39:12
And so when you say it like iterates over that, what would a basic, like would it, what would it do if it noticed that the orchestrating agent like failed mid orchestration?

![](data:image/png;base64...) **Daniel Guzman** 39:24
Well, this is something, no, right now we don't have this kind of issue because we have right now the Hermes system have it owns iteration process that is constantly looking for failure. So in case it is failed, Hermes automatically.
Try to work again, and if something is wrong, it's triggered a message into our own slag systems.

![](data:image/png;base64...) **Elisabeth Beltinger** 39:54
Oh, gotcha. And then would you grease?

![](data:image/png;base64...) **Daniel Guzman** 39:54
We don't have, we don't have a channel, we don't have a channel with this orchestrator, with this architecture that it it flag any alert on any any issue that it might be in right now.

![](data:image/png;base64...) **Elisabeth Beltinger** 40:09
Oh, yeah, yeah, okay. No, that makes sense. And then if you get the failure and you're basically saying like, okay, I want to restart, do you have to restart from scratch? So basically, again, with like the raw ticket, or does it kind of take up or resume from where it kind of failed mid-process?

![](data:image/png;base64...) **Daniel Guzman** 40:27
No, no, it can it can resume from where it's failed. It can resume from where it's failed. Every every system that is connected with this orchestrator is with it has its own database in SQLite and it can it can spawn new agents from the.
from the step that it failed me for.

![](data:image/png;base64...) **Elisabeth Beltinger** 40:53
Okay, gotcha.
All right, let me just see in my question bank.
Um...

![](data:image/png;base64...) **Daniel Guzman** 41:07
I don't know, but I can describe other agents that it might be interesting for you guys.

![](data:image/png;base64...) **Elisabeth Beltinger** 41:10
Ohh.
I have a few more questions. Sorry, I just need to check which ones I already asked you. But for the customer or for the agent that takes the ticket and then kind of starts the process to figure out what happened, etc.

![](data:image/png;base64...) **Daniel Guzman** 41:21
Right.

![](data:image/png;base64...) **Elisabeth Beltinger** 41:33
Et cetera.
Are the customer service tickets directly creating engineering work items now, or does like a PM still translate something from like the customer experience to an engineering requirement?

![](data:image/png;base64...) **Daniel Guzman** 41:46
No, no, no, not.
No, no, no, this is automatically created by by this system, and this, but that's that has saying I just say that, for example, I was explaining that whenever I send this report, we connect this architecture with our own system via CLI.
and be using the Sky Jira and it created automatically these issues in Jira.

![](data:image/png;base64...) **Elisabeth Beltinger** 42:17
And you also mentioned, I think, that it's able to like triage between the tickets. So I just wanted to confirm, is that actually the agent who kind of prunes the different tickets that come in?

![](data:image/png;base64...) **Daniel Guzman** 42:30
Yes, this is the the the aliens, and basically then the...
The flywall for this this agenda workflow, this we do have a signal from PagerDuty or send this or something like that. We pull all the information from JIRA and the the MCIOpre context, you know, they pull information from LIDA and the documentation. Eventually, it create the the new issue on on on the JIRA system.
And then triggers another cloud agent from from from to do the the coding review and and and everything in it needs to be to do to.

![](data:image/png;base64...) **Elisabeth Beltinger** 43:13
And does it prioritize at all between the tickets or do all tickets get worked on at the same priority? Like I guess in a human engineering team, if you have a ticket backlog, you'd like prioritize between them and then work through them or maybe even drop some. Does the agent prioritize between tickets or even drop some tickets?

![](data:image/png;base64...) **Daniel Guzman** 43:34
Now, right now, we do not have an authorization ticket because everything is put into a bag of issues. But eventually, yes, when we do have a 0-0 bug policy, so whenever an issue is
Re-edit in our system, and automatically the engineering manager is usually looking for a new engineer to look into that workload, and...
Take a look into the PR or eventually do it once itself.

![](data:image/png;base64...) **Elisabeth Beltinger** 44:13
And is there any on the PRs, is there like a prioritization between which PRs for a human to review first versus which ones they can review later?

![](data:image/png;base64...) **Daniel Guzman** 44:23
And I do not have the answer for that, to be honest, because this is something handled by our engineering manager, just, but probably, I mean, I mean, probably the we do have for for enterprise customers and so on, we do have a set of policy server box policy.

![](data:image/png;base64...) **Elisabeth Beltinger** 44:31
Gotcha.

![](data:image/png;base64...) **Daniel Guzman** 44:44
And, for some of them, they need to be addressed as quickly as under twenty-four hours, so, or forty-eight hours. Yes, probably this is a high priority from from from some of this work. For example, if we don't have, if if we do have a...
Um, I mean, on...
Operational bug, and it definitely will be will be catalyzed as a as a high priority.

![](data:image/png;base64...) **Elisabeth Beltinger** 45:16
Gotcha, but it's not necessarily an agent doing the prioritization, it's the engineering team.

![](data:image/png;base64...) **Daniel Guzman** 45:19
No, no, no, no, no, yes, this is engineering, and at this moment, yeah.

![](data:image/png;base64...) **Elisabeth Beltinger** 45:23
And then last time, I think you also mentioned like looking forward, there's probably a scenario where even the PR review is only done if it's like a high priority or difficult issue. I'm wondering if...
I know this is like a future thought, but do you already have any thoughts on where exactly what the agents have already stopped? Like, how does it know how to judge if this is like high priority or like a difficult issue, so it needs a human review versus this is like low enough?
to do it without a human review.

![](data:image/png;base64...) **Daniel Guzman** 46:07
Well, this is kind of hard.

![](data:image/png;base64...) **Elisabeth Beltinger** 46:09
Yeah.

![](data:image/png;base64...) **Daniel Guzman** 46:12
I'm going to explain how it's working right now and where we are heading right now, okay? And this agent lead code review, basically, as I said, it triggered a GitHub VR open it. The action of the scope is this bug bug agent or agent lead agent assesses a risk impact.

![](data:image/png;base64...) **Elisabeth Beltinger** 46:16
Yeah.

![](data:image/png;base64...) **Daniel Guzman** 46:34
We are looking to get a bug bug that says risk impact when basically it can out of fix and merge low risk changes immediately. But the tricky part of this is, as you say, and you can imagine, how he can measure the risk impact of this bug.
Because we need to test this agent intelligently.
Routine high risk PR to the main expert engineers, you know, some kind of this bug might be difficult for this agent still to get addressed by itself. We, I don't know when to reveal the mains.
The the the the the kind of work or critical work we do in core, but some of them have to be with with financial power or financial system from our customer, so those kind of those kind of works definitely won't be able to be addressed by the the agent itself.

![](data:image/png;base64...) **Elisabeth Beltinger** 47:46
Makes sense. I am also curious, I don't think we went into depth on this last time, but as you're starting to build out more and more workflows across your company with AI, how do you think about
token cost and how do you kind of manage it and what do you is there any type of like trade off of like this one is like a very high token cost this workflow is a very low token cost like how do you think about token cost?

![](data:image/png;base64...) **Daniel Guzman** 48:19
But this is a tricky question, and because at the beginning of the year, for example, to give you an idea, when we started to think of this kind of workflow, we didn't know how to measure that, and in the previous conversation we had.

![](data:image/png;base64...) **Elisabeth Beltinger** 48:22
Yeah.

![](data:image/png;base64...) **Daniel Guzman** 48:40
And I mentioned that the way how we can measure the impact of this AI workflow is basically divided into pillars.
the number of hours saved by our employees, and then the quality of the responses of these agents. You know, I can give you an example. We do have, we do have another agent in this case for the...
the go to market team. This is called a lead agent. It's a lead agent. Basically, this is when an inbound submission reach to our system, an inbound submission reach the agent to now search internal knowledge base where all the face and make some workflow from that enrichment and CRM search.
And it qualified a step with a structure output, made a qualified process, and if if this lead qualified, it generates it generates personalized email draft in order to be sent with a human in the loop process, where the, you know, the...
The SDR agent go and approve the the.

![](data:image/png;base64...) **Elisabeth Beltinger** 50:00
What?

![](data:image/png;base64...) **Daniel Guzman** 50:04
Approve the email, no, and this workflow records records the decisions, and we have a reusable pattern. The game, in this case, in this workflow, is basically...
Eighty percent of the of the time of this SDR employee just looking into, well, do another thing, you know, and this is a playbook that is operational from prospection, enrichment, and personalized email, and can mass scale via hospital connection the next milestone.
And this is something that we are currently looking to measure. Now, answer your question.
This kind of workflow, thanks to...
To to to increase the token spend and the token cost, we are we are we are hosting different solutions, we are we are using cloud from some of them, we are using another, I mean we we're using Kimi in on some internal workflow engineering workflow, we're using Kimi and other.
open source models, you know. Yes, this is kind of difficult and this is a conversation that we are currently looking at specifically. Actually, my team, my AI productivity team is in share of this metric. We do not have a budget limit right now. The policies of the company is we don't have
a limit right now, but we are constantly monitoring the spend of tokens.

![](data:image/png;base64...) **Elisabeth Beltinger** 51:46
And how easy?
to specific workflows, like, do you have a way to actually be like, oh, the bug, like the bug fixing agent takes X amount of tokens and then the...
like BDR kind of workflow takes X amount of tokens and then the finance workflow will take X amount of tokens. Like can you make this allocation?

![](data:image/png;base64...) **Daniel Guzman** 52:14
I can do it, but it's kind of hard. It's hard to do it because we use several tools, AI tools, in different steps on different workflow. For example, then orchestrator, the background architect, and another orchestration in this case.
And use cloud tokens with Sonet, and well, we we we use a a epic epic consumption token, and with the we create a specific epic token for for with label it with this orchestrator.
But for example, the coding execution is running on a cursor. We do have a cursor team subscription for the entire organization, for our engineering team. And well, in that case, everything is most easy.
To to track in in the our engineering team, but with cloud is kind of hard to to track unless we have every every workload labeled with a specific IP token, and our internal team.
also use cloud in a daily basis task, you know, and this is kind of difficult to track one, I mean cloud, it doesn't show clearly.
How?
People have multiple.

![](data:image/png;base64...) **Elisabeth Beltinger** 53:53
Yeah, yeah.

![](data:image/png;base64...) **Daniel Guzman** 53:54
I mean, we do have another one, but not by people.

![](data:image/png;base64...) **Elisabeth Beltinger** 53:58
Yeah, yeah, yeah. Um, super interesting.
I think probably this is pretty much it for.
My, oh, actually, no, sorry, one last question. Last time we did also briefly touch base on the cost, especially on like the cost of the model when you decide which model to use for which task in the workflow. So how do you track that?

![](data:image/png;base64...) **Daniel Guzman** 54:25
Right.

![](data:image/png;base64...) **Elisabeth Beltinger** 54:29
the cost? Is it per like entire workflow? Is it per agent action or is it just like the monthly billing that you experience? How do you like track that?

![](data:image/png;base64...) **Daniel Guzman** 54:45
No, I mean, we do have every agent that we run have is its own API token, and this API token is is we can track.
this by API token. I mean, we can check the dashboard on a cursor or in cloud, and we can check how the, I don't know, how the lead agent from the GTM team, how the, how much the lead agent consumed this month, or how much the orchestrator agent.
Consume this this this month. This is because we we split the the the API consumption by different API token and depend of the the use case.

![](data:image/png;base64...) **Elisabeth Beltinger** 55:37
Makes sense. Awesome. I think those are all of my follow-up questions for now. I think I went through them. I know we have 5 minutes left, but I'll just give you back the 5 minutes if that's okay. I really appreciate you taking the time to talk to us again. This has been really, really helpful and
kind of clarifying a few of our follow-ups. Again, same as last time, you'll receive the compensation on the email that you used to sign up for this interview. And yeah, we'll keep you in mind for any future studies if you're interested. So yeah, we really appreciate your willingness to talk to us.

![](data:image/png;base64...) **Daniel Guzman** 56:17
Yeah, sure, sure. Thank you for keeping in mind.

![](data:image/png;base64...) **Elisabeth Beltinger** 56:20
Of course. Thank you so much. Have a nice rest of your day.

![](data:image/png;base64...) **Daniel Guzman** 56:23
Same to you. Bye bye Elisabeth.

![](data:image/png;base64...) **Elisabeth Beltinger** 56:25
Thank you. Bye.

![](data:image/png;base64...) **Daniel Guzman** 56:27
Hu.

![](data:image/png;base64...) **Elisabeth Beltinger** stopped transcription