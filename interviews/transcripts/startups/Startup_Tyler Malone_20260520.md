**Tyler Malone - Frontier-20260520\_120014-Meeting Recording**

May 20, 2026, 4:00PM

1h 2m 24s

![](data:image/png;base64...) **Elisabeth Beltinger** started transcription

![](data:image/png;base64...) **Elisabeth Beltinger** 0:49
Hi Tyler, how are you?

![](data:image/png;base64...) **Tyler Malone** 0:51
Hello, how are you?

![](data:image/png;base64...)
**Elisabeth Beltinger** 0:53
Good, thank you. And thank you so much for taking the time to speak with our team today. I have my colleague Tyler, also Tyler, on the line as well. Feel free to be off camera, on camera, whatever is most comfortable for you. But we don't necessarily need you to be on camera for the sake of the interview.

![](data:image/png;base64...) **Tyler Malone** 1:00
Yeah.
Sure.

![](data:image/png;base64...)
**Elisabeth Beltinger** 1:13
Before I get into the questions, just like a little bit of background, I guess, on our research. We're basically conducting this research to understand how different companies are using AI to shape their operating model and create business value from that. And we are particularly interested in
how AI is embedded in workflows, how it is embedded in organizational structures, how it's enabling platforms, and really, again, like the business results that follow from that. Everything that you share with us will be anonymized, so nothing will be attributed to you or your organization.
So yeah, I think that's my little intro. Before we get into it, do you have any questions for us?

![](data:image/png;base64...)
**Tyler Malone** 2:02
No, I'm mostly curious about just what your questions are, so that'll be answered with the questions.

![](data:image/png;base64...)
**Elisabeth Beltinger** 2:07
Awesome. Okay, yeah, let's get into it then. So, yeah, to just get us started, can you briefly describe your role and kind of how it relates to AI-enabled workflows or initiatives in your company?

![](data:image/png;base64...)
**Tyler Malone** 2:23
Sure. My title is the principal engineer and head of AI for Satiri. We are a small company of 10 people, honestly. But over the past year, I have adopted AI tooling myself as an engineer.
building our software. I quickly discovered what I would be able to do with it. And we have rolled out tools around Claude and some other engineering specific tooling to
to the rest of the team. And with the Cloud tools, we've adopted Cloud Desktop as well and encouraged other disciplines in the company outside of engineering to explore and use it. We've connected various other like third-party applications.
via Claude, where we have documents stored, other resources, other couple of materials, so that they can be combined under, well, so that an LLC can like retrieve them, right, and do its job of.
reading, consolidating, analyzing, and hopefully helping out us across the team.

![](data:image/png;base64...) **Elisabeth Beltinger** 3:47
Awesome. And so I guess beyond the software engineering workflow that I'm assuming you're pretty close to, are there any other company systems or workflow where you have pretty deep visibility into, yeah, what the workflow, the systems, the impact of that workflow is, et cetera?

![](data:image/png;base64...)
**Tyler Malone** 3:55
Mhm.
So with our CEO, he has created several of his own workflows to produce either slide decks, board reports, or whatnot for his own, and demos, really, demo materials as well for his own purposes.
One of the things that we do use in engineering that everybody has access to is just MCP servers into our Salesforce orgs, where we can do, at least for me, it's more close to debugging issues. But on our customer experience side,
They can use it to also help understand data structures and then advise our customers on that, depending on what they might be seeing or something. So they're kind of using a little bit for debugging as well in the 1st place, but it could also let them understand.
some of the data and records that are in there when cases might come up that they see.

![](data:image/png;base64...)
**Elisabeth Beltinger** 5:18
Gotcha. Great. No, that's awesome as kind of our intro. So I guess to dive a little bit deeper into AI-driven workflows, my first question to set us up for this section is, what is the most impactful AI-driven workflow that you personally know really well?

![](data:image/png;base64...)
**Tyler Malone** 5:45
Good question. So that is going to land on the engineering side.
So I have a series of agents and skills myself that allow
For one, set up guardrails first for the code generation, but then do the validation and some local smoke testing and QA validation as well. So I have agents that either review the quality of like test-driven development and then the resulting tests. I have a couple of agents that do security reviews specifically for our platform, which is Salesforce.
One of those is looking at like Salesforce best practices just to make sure that things are enforced, patterns, architectural decisions, stuff like that. There's one that does a packaging review to make sure that we catch some gotchas when it comes to packaging the code.
for release that have been things that have cropped up in the past for us. So trying to mitigate those before we even see those.

![](data:image/png;base64...) **Elisabeth Beltinger** 6:58
But...

![](data:image/png;base64...) **Tyler Malone** 6:58
And then there are several other skills and review agents that help land pull requests in our code base.

![](data:image/png;base64...) **Elisabeth Beltinger** 7:09
Got it, got it. And is this something that the broader engineering folks, I mean, you mentioned you're a small team, but if there are other folks in the engineering org, is this something that the team, like everyone kind of uses, or is this a personal setup?

![](data:image/png;base64...)
**Tyler Malone** 7:25
For my role on the team, I usually have the one that uses it, but everybody has access to it because they are available at different levels. Some of them are available within the project itself. So anybody who has like the project locally has those agents and skills. A few of them are more personal to me.
And then some, a couple of them are at the organization level distributed through the cloud desktop app.

![](data:image/png;base64...)
**Elisabeth Beltinger** 7:54
Gotcha. Okay. It'd be awesome if we could focus on one of them that is used more broadly, or I guess that you would consider organizational standard almost, or like pretty ingrained in people's, several people's workflows. And if you could just walk me
kind of end to end through that particular workflow. So I'm thinking about what triggers it, what are the main steps, where does AI really come in and kind of what's the loop with a human, etc.

![](data:image/png;base64...)
**Tyler Malone** 8:26
Sure, let me think about this for a second.
Okay, yeah, so we have.
One of the workflows is with Landing PR, and so anybody else on the team can use this because, once they, once a team member...
wants to make a pull request into our code base. We have a couple of other, let's say, review agents that run on it. One from Code Rabbit and Codo, actually three right now. They're still kind of artifacts from a leftover.
comparison process. But we have three agents that will run on each of these pull requests and leave comments. And so what we have at the project level that any other team member can use is a...
a skill called Land PR. And this goes through a series of steps to verify some just PR quality issues at the top.
So that making sure that it is titled in a certain way, that it is connected to existing Jira ticket, if at all.
If not, then we kind of label it in certain ways.
Um...
that way, but it'll go through and look at all the code comments, pick up the AI reviewer comments, categorize them and organize them into their criticality, and will display those issues to
The engineer, let's just say, call it engineer, and...
can walk through it one by one to mitigate. And it uses sub agents to pass off so that the main context of like that orchestrating agent doesn't fill up too fast. So we use sub agents to run through any issues that the engineer decides to address and fix. And then those are also validated with tests. So it uses that
test runner agent.
to deploy locally to our own orgs and run those tests against the orgs before it gets back to like the PR, because then it would have to run the continuous integration cycle, which would then take 20 to 30 minutes each PR. So the local testing is just a little bit local, I mean a little bit faster.
But it can babysit the PRs as well. So while like fixes have been made and either pushed back and then the continuous integration kicks off again to do its building and running of tests, it will kind of do a polling, but it'll wait for a determined period of time and then just check on that PR.
to see if any more issues, comments are put on there as issues by the AI review agents. And watching for the continuous integration steps to all go green.
Now, when it does resolve a fix and has verified that, it will go back to those comments and make its own comment as the running engineer as to what the fix was, and then resolve that comment on there, unlike the PR.
The end result, what you're hoping to get to, is that all issues on the PR have been addressed and resolved. And then you have all of the other continuous integration, the CI checks go green. And once that happened, we do have a gate there that requires a human to do the merging.
But the back in the session, unlike the local computer, the agent would just notify that it's all been passed and that it just needs the human approval for merge.

![](data:image/png;base64...)
**Elisabeth Beltinger** 12:38
Gotcha. So just to reiterate what you're saying or to make sure I understood that correctly, the whole thing kind of starts once an engineer
kind of initiates a PR or wants to make a PR or what starts to trigger that kind of agent review cycle.

![](data:image/png;base64...)
**Tyler Malone** 13:00
The PR can be put up there. It's not the actual PR itself, but it is the engineer invoking the agent skill itself.

![](data:image/png;base64...)
**Elisabeth Beltinger** 13:12
Gosh, so it's almost like clicking a button basically being like, hey, can you review?

![](data:image/png;base64...)
**Tyler Malone** 13:17
It's akin to that, yeah. You know, it's a slash, it's essentially a slash command. We type in the slash land PR and give it the PR number. So it would be able to, obviously the GitHub URLs are static, but like just giving it the number knows how to look, it will know how to look for it.

![](data:image/png;base64...) **Elisabeth Beltinger** 13:19
Mm.
And is that a mandatory step or is that something that engineers can do or invoke at their own discretion?

![](data:image/png;base64...)
**Tyler Malone** 13:45
They can invoke it at their own discretion, but every PR does get it because we'll always have comments land on there. Unless it's very small sort of metadata driven or just adding, updating some documentation. So it's not mandatory that it has to run in every PR, but I would say that like 95, 96% of the PRs we do use it on because it's a remediation.
step just to make sure that bugs and issues are addressed before they get into
The main branches.

![](data:image/png;base64...)
**Elisabeth Beltinger** 14:20
I'm sorry, I might not have caught that correctly earlier, but does that mean the comments, like, it's not an agent leaving the comments and then another agent addressing the comments? It's a human making comments and then the agent addressing the comments?

![](data:image/png;base64...)
**Tyler Malone** 14:35
No, it's their agents are leaving the comments, and so the agents that we are running locally are then...
picking up those comments, because they do have their own agentic props in there for the agent. Left by Codo, Code Rabbit, or Cursor Bugbot. So those are the three that are reviewing the code and the PRs and leaving.
leaving comments based on like our own architectural like rules and other things that we've set up with it. But yeah, it's agents going back and forth. A user is sort of observing the entire thing.

![](data:image/png;base64...)
**Elisabeth Beltinger** 15:03
Gotcha.
So if I like ask provocatively, if I as an engineer am making a PR, but I don't call any of the agents skills, I guess I wouldn't, I also wouldn't get comments, nor would I get the agent then addressing comments. I would just make it or is having it run and give comments, is that a mandatory step?

![](data:image/png;base64...)
**Tyler Malone** 15:21
Mm-hmm.
So the comments on the PR are independent of like the skill that I was talking about. Those always run on a PR with the integrations in GitHub.
So if there's anything that surfaces, you'll get comments on that PR. The land PR skill uses the agents locally, well, I'm saying locally, but they're clod agents, right? To then go look at the PRs, gather all the comments, address those one by one with sub-agents.
do its own deploy to our local orgs or like environments, and running the tests locally as well. Then the cloud agents will go back to the PR, they'll commit the work, push the commits, resolve all of the comments.
that were generated on the PR from those AI review agents.
Um...
and then continue from there. So the oversight for the human is really watching, watching what is happening.
answering any questions that may stop like the auto AI review process, but also at the end it requires a human approval to then merge the PR once everything's been addressed and once the CI is all green.

![](data:image/png;base64...)
**Elisabeth Beltinger** 17:05
So if, so you're saying the PR review cycle is not something an engineer has as an optionality? He has the optionality to then have the comments addressed by an agent. That one isn't mandatory, but getting comments on the PR, that is mandatory slash just automatically runs. And then just the step of addressing them is something they can opt in and out for.

![](data:image/png;base64...) **Tyler Malone** 17:32
Ah, yes.

![](data:image/png;base64...)
**Elisabeth Beltinger** 17:34
Okay, okay, gotcha. All right, so I guess I am curious, you mentioned this already a little bit earlier, but what type of information or context do those two agents, I guess the one that does the initial pass and leaves comments and then the agent that
goes in and addresses those comments. Yeah, what type of information context do they have in order for it to work?

![](data:image/png;base64...)
**Tyler Malone** 18:04
All 3 broadly have access to, well, one, the context of the PR, so they could see the diffs in between what changed, what was added, updated, modified, things like that. They also all have their own repository of like...
rules that were set up initially. And these are just copies of what I have in the project.
around like what our best practices would be for architectural patterns, security.
security items that need to be looked out for, making sure that there's no less, you know, making sure that queries would be made in an efficient way possible and respecting users' security levels. But then also making sure that we have, we're not doing some patterns that are.
anti-patterns that would hit resource limits or governor limits against a myriad of things.
So as the AI agents mature as well, when we provide feedback on the PRs during that resolution process, they can also take what has been provided as a solution or a comment back and use those as learnings.
So it can save its own set of rules back to its, I guess, just say database, its repository of knowledge, and then use that on further PRs. So it's a continuous learning process that they can go through themselves.

![](data:image/png;base64...)
**Elisabeth Beltinger** 19:50
That's super interesting. I guess before we get into that, I'm curious how much curation went into the content. So you mentioned there was some copy pasting of what you already had in the project.
But I'm also curious kind of if there were any specific things you did to curate that context or as it updates with the learnings, if you occasionally go in and see if those learnings that it used to update the context are reflective of what you perceive should be a rule in coding.
Just kind of, yeah, how you go about setting that up and then updating it.

![](data:image/png;base64...)
**Tyler Malone** 20:29
So a long time ago, which is feels like ages in this era of AI, at the beginning when I started exploring this, we were using a cursor very heavily. And cursor had a...
They had a framework for how you define files.
Of rules, so markdown files of rules that were scoped to various areas of the code base, and what I initially did, because very early on I understood that LLMs were very good at retrieving data and then repurposing that.
that data, reformatting it. So as I mentioned, we build on the Salesforce platform and Salesforce has copious amounts of like documentation out there and there's...
like thousands, if not 10s of thousands of other third-party websites that write articles about coding and developing on Salesforce. So there's a lot of material out there that defines best practices, and there's very opinionated ways to do it on Salesforce, because Salesforce is opinionated.
Um...
So I would go and find those articles from some sources that I trusted and the documentation of Salesforce itself. And then I would point the LLM at those and say, here are blogs, articles, posts, docs of best practices on how you do Apex triggers, on how you do SOQL queries, on LWC best practices.
let's make rule files that we can then use as guardrails for this project. And so I generated the files just that way, reviewed them, and made sure that like everything that it had put in there was actually from the source materials as well.
and put them into the project. And over time, those files were the seed that then became larger guardrails that then, as skills became a thing and sort of became adopted, some of those rules would then be put in skills on how to use them.
with examples of like of this is what good triggers look like. This is what a good Apex class looks like when it's extending another type of class. Here's what good LLC components look like. This is our structure for how data or how like calls flow through.
Our software.
And so...
Those early rule sets that became more broadly used in the skills or agents MD or whatever, those were the same ones that I then would put inside like the CodeRabbit configuration inside its blocks for checks. And I also still used, you know, Claude to then take that as well.
And pointed it at the examples that CodeRabbit would have in its documents, and say we need to take our rules from here and rebuild it as a prompt that CodeRabbit will use to ingest when its CodeRabbit agents are reviewing our PRs, and we do a few iterations of that to make sure the prompt.
sounded reasonable and sound and the intent was there for everything that I wanted to do with the AI, the review process. And I just would put it into the configuration file for these review agents.

![](data:image/png;base64...)
**Elisabeth Beltinger** 24:00
Sorry, I was muted.
No, this is super helpful. My follow up question on that would be, what made you choose? I guess there could be a path in which you just feed the entire code base and you just kind of instructed to infer the rules from that. So what was your path of thinking or your reasoning for being like, okay, I'm going to point it to.
these websites and have it extract what the rules should be from there. So basically, like, why choose this over maybe other ways to give it context and rules in the way that you do it at your company.

![](data:image/png;base64...)
**Tyler Malone** 24:28
Hu.
Um...
Well, because Salesforce is in a, it has a very strict opinions on how you need to build on there. It's not quite like a company that's going to be using like...
more open-ended type of technology stack and would define its own ways of doing things.
I mean, I guess it's kind of like anything. Like any community that comes up around a tech stack, they're going to have their own maybe best practices. And Salesforce definitely does that and defines that. Like this is how you need to do this to avoid, you know, X, Y, Z down the road. So going to those definitive sources that.
have been trusted for, you know, a couple of decades was just where I wanted to go.
And using that, using that as like the foundation for our guardrails.

![](data:image/png;base64...)
**Elisabeth Beltinger** 25:34
That makes sense.
And then the other thing I just wanted to quickly come back to the learning loop as well that you mentioned where it feeds back what it learned from the initial pass into the rules. How do you monitor what those become? Is that something you regularly check for or do you kind of...

![](data:image/png;base64...) **Tyler Malone** 25:43
Mhm.

![](data:image/png;base64...) **Elisabeth Beltinger** 25:56
trust that it has enough judgment to make the right rules updates from that.

![](data:image/png;base64...)
**Tyler Malone** 26:02
I mostly trust that it has the right rules. Every now and then I go and spot check it and like very like actually within like the dashboards of these of these products. But that's very rare. However, and I'll just clarify, the learnings come from the feedback that we put on there on the on the comments.
So if I say, well, this is okay to, this is, we can ignore this because of this, or this is why we chose to do this decision.
Usually the agent reviewer will then say, got it, I'll save this as a learning. And if it's not correct, I can always go back into those dashboards for like those products and delete them as well. But not done that, even though the option is there. I do see though.
when it uses a learning, something that is learned, that it makes note of that on future comments. It'll, you know, it'll indicate that like the reason it's saying this was influenced by like the learning. So I can see how it's also going back into its quote unquote memory.

![](data:image/png;base64...) **Elisabeth Beltinger** 27:03
Ben.

![](data:image/png;base64...) **Tyler Malone** 27:14
and pulling these things out and then having it inform its decision now.

![](data:image/png;base64...)
**Elisabeth Beltinger** 27:21
And would it also then be like, oh, I could flag this, but I know not to? Or is it just like, I'm flagging this because I learned that this is a flag we make? I guess does it flag both scenarios? Like I'm no longer flagging this and I'm now newly flagging this.

![](data:image/png;base64...)
**Tyler Malone** 27:42
It's interesting. I would kind of assume both because I only see like, I would only see when it makes a comment and it says, and it just has the note of it used this learning for that. I wouldn't see the negative, right? It wouldn't make a comment and be like, I'm ignoring this because you told me this. It just wouldn't make a comment at all.
It would just ignore it, so it'd be hard to it'd be hard to understand when it made that inverse decision, right?

![](data:image/png;base64...)
**Elisabeth Beltinger** 28:03
Hu.
Gotcha, okay, yeah, no, that's super helpful. And then kind of outside of the tools you mentioned, is there any other company-wide tools or systems that those agents like access during that review process, or is it really kind of in that?
environment that you outlined earlier.

![](data:image/png;base64...) **Tyler Malone** 28:34
It's in that environment.

![](data:image/png;base64...)
**Elisabeth Beltinger** 28:37
And then I know we spoke about guardrails kind of at the end of the process where a human has to review before it's actually finalizing the PR. Could you just walk me again through, I know you touched upon this too, but just to clarify,

![](data:image/png;base64...) **Tyler Malone** 28:49
Mhm.

![](data:image/png;base64...)
**Elisabeth Beltinger** 28:54
kind of how the human is in the loop or how active he has to be versus can be during that comment and then addressing the comment section.

![](data:image/png;base64...)
**Tyler Malone** 29:04
So under normal circumstances, there's usually two people involved, excuse me, in the PR.
The engineer that opens, that creates the PR and opens it, and then the person who's going to do the merging of that PR after all the...
issues have been resolved and satisfied. So during the whole loop and iteration of addressing the issues that come up and re-verifying code, the engineer would need to be just understanding and kind of
being that just keeping an eye on what's going on. Because there are times where the engineer would need to make decisions on what truly is an issue. I know myself, sometimes I don't even worry about like the minor things that could be cosmetic because we can always come back around to those.
and fix those in a smaller scope if needed. And sometimes things are flagged that, you know, are just false positives for our context or our use, and we'll just skip those.

![](data:image/png;base64...) **Elisabeth Beltinger** 30:19
Gotcha.

![](data:image/png;base64...)
**Tyler Malone** 30:19
So that would be, yeah, that would be the first part. The second part at the end is really just having somebody who's like the lead engineer or myself, just making sure that not re-reviewing everything, but
Maybe reading like the PR description that just has the details in there about what the overall purpose of the PR was. And then just seeing that, double checking to make sure that there wasn't any issue missed that.
probably should have been addressed.

![](data:image/png;base64...) **Elisabeth Beltinger** 30:56
Mhm.

![](data:image/png;base64...) **Tyler Malone** 30:57
and then just merging the PR.

![](data:image/png;base64...) **Elisabeth Beltinger** 31:00
And do any of the agents have full write access to your entire code base?

![](data:image/png;base64...) **Tyler Malone** 31:08
No.

![](data:image/png;base64...) **Elisabeth Beltinger** 31:09
Mhm.
And just read access or not at all.

![](data:image/png;base64...)
**Tyler Malone** 31:12
Well, the not on the not on the PR side, um, our agents.
the cloud agents would at the project level.

![](data:image/png;base64...)
**Elisabeth Beltinger** 31:24
Okay, and then how do you measure whether this workflow is working well or not? Do you have any types of metrics that you're tracking to see if that PR workflow is going well or better through the agents working in it?
Any other kind of points that you use to quantify the impact?

![](data:image/png;base64...)
**Tyler Malone** 31:46
Not from week to week. Every now and then when I'm curious or need to, I guess, talk about just...
timelines or time spent. Excuse me. I can use some of like Cloud Code's internal tools. One of them is the usage tool that talks about tokens in, tokens out, and then also like the cost of that. But I have.
I don't know if frequently is the right word, but I have used Claude in the past to also review the velocity of how long it takes to actually land the PRs. That would be from when we first pick up working with it to when it actually gets merged and do like an average amount of time.
per PR that that takes over, like, you know, a sample of PRs. Personally, for myself, and I've encouraged other engineers to do this as well, is to have cloud review, like, the...
commit activity locally on your own machine so you can understand your own velocities or efficiencies as well. And that way you can compare things kind of just at a personal level, like week to week or over whatever like period of time that you want. But there's nothing that like we have like internally that tracks this.
broadly across the team.

![](data:image/png;base64...) **Elisabeth Beltinger** 33:14
So do you use those individual checkpoints or kind of your observations at all to tweak the workflow or is it more, you know, like as you said, everyone kind of tracks it individually to see how they're pacing, but it's not necessarily used to restructure the workflow?

![](data:image/png;base64...)
**Tyler Malone** 33:33
I do. I do use it to tweak that workflow. And either that could that could either be create, excuse me, new skills, modifying the skills. I guess a good example of this is like this land PR skill used to be called something different.
that was not as broad. Excuse me.
And when I saw that, there was probably a couple other steps that we could put in there to automate and use an agent to do to do this.
PR review and monitor and address the issues process. I rewrote the skill and then called it land PR and then went and deprecated the other skill by just noting within it that the agent needs to use this skill now. So if it tried to pick up the deprecated skill, it would redirect itself to the other one.
And that's worked fantastic.

![](data:image/png;base64...)
**Elisabeth Beltinger** 34:28
Awesome. For, I just want to quickly also talk about some of the broader company workflows that are AI, if I may call it like that. And I think you mentioned that there is somebody else that...
MCP into Salesforce. So I'm just curious about how that works and where maybe some of the differences are in how that workflow is set up versus the ones you set up in engineering. So yeah, if we if we could talk a little bit about that and that would be awesome.
I think I lost connection to you, Tyler.
Can you hear me?
Hu.

![](data:image/png;base64...) **Tyler Malone** 35:43
Yeah.
Are you all there?

![](data:image/png;base64...)
**Elisabeth Beltinger** 35:46
Oh yeah, now I can hear you again.

![](data:image/png;base64...)
**Tyler Malone** 35:48
Sorry, we lost power here, so I'm on my mobile hotspot.

![](data:image/png;base64...)
**Elisabeth Beltinger** 35:52
Oh no, okay, yeah, let us know if that works okay. Yeah, I was...

![](data:image/png;base64...) **Tyler Malone** 35:58
I can hear your phone.

![](data:image/png;base64...) **Elisabeth Beltinger** 36:02
You can hear me?

![](data:image/png;base64...)
**Tyler Malone** 36:04
Yeah, I can hear you fine. So I can be good

![](data:image/png;base64...)
**Elisabeth Beltinger** 36:05
Awesome. Perfect. Yeah, so I just wanted to quickly talk a little bit about the broader company workflows that are AIified that you mentioned earlier. So I think one of the examples that you gave were some of the BLs MCPing into Salesforce with Claude. So I'd love to understand that workflow a little bit.

![](data:image/png;base64...) **Tyler Malone** 36:17
Hu.

![](data:image/png;base64...)
**Elisabeth Beltinger** 36:29
bit better and yeah, just see how it might differ from the engineering workflows that you set up in your team.

![](data:image/png;base64...)
**Tyler Malone** 36:39
So, excuse me.
It uses Salesforce CLI internally. The MCP server does. Excuse me. So we've connected that at a couple of levels. People could set that up like on their own tooling. The engineers can use it just in Cloud Code or in cursor.
But we also use it with Cloud Desktop, which gives it access to the broader team. It doesn't use more of the other engineering type of tools.
On the client platforms, we have integration users set up that have read-only access, because we don't want to run the risk of modifying any clients, any customers' records, whether it be like in their sandbox environment or their actual production org.
doesn't matter because we really just want to use this to be able to run.
prompts against the customer orgs when we're doing just investigations or want to know about like local solutions that are set up, want to look at users' permissions quickly without having to like click through some UI interfaces to get to like the setup stuff too.
to diagnose or see those type of settings ourselves.

![](data:image/png;base64...) **Elisabeth Beltinger** 38:06
And what kind of context other than the access in general to that client platform would that agent have?

![](data:image/png;base64...)
**Tyler Malone** 38:17
Hu.
Just knowledge about the tooling that it's available to it through the MCP and its own general knowledge and its training data about Salesforce, about Salesforce administration and the platform.

![](data:image/png;base64...) **Elisabeth Beltinger** 38:35
Gotcha. Was that something that already came with that agent, the kind of knowledge about Salesforce and the tool?

![](data:image/png;base64...)
**Tyler Malone** 38:43
Yeah, it's just whatever is built into its training training data.

![](data:image/png;base64...)
**Elisabeth Beltinger** 38:47
Gotcha. Okay. That makes perfect sense. I guess then maybe I'll shift just quickly back to the engineering workflow. And I'm just curious if that workflow kind of evolved from the beginning, the like PR request workflow, I guess.
and what changes you anticipate kind of to this workflow in the short or long term, kind of how that will evolve going forward.

![](data:image/png;base64...)
**Tyler Malone** 39:18
It did evolve from the beginning. As I mentioned, this workflow was named something a little different. It didn't have as broad a scope on it for.
I think the way that it's handled, oh, I know what I did to it. So there's also a step in there that helps, that allows it to pick up on like the JIRA tickets because we kind of scope commits to also JIRA tickets as well. So a PR might
While we try to keep a PR per year ticket as well, it could also maybe span two or three, but.
The, excuse me, the land PR skill could also go into our Jira board and update the status of those tickets to make comments there as well.
So it uses the Atlassian integrations also that have been set up on like our own machines to do that. So that was an evolution from the original remediate PR like skill into the land PR skill. As for going forward, I don't know. There's nothing in the skill right now that I feel like needs to be added.

![](data:image/png;base64...) **Elisabeth Beltinger** 40:08
Hu.

![](data:image/png;base64...)
**Tyler Malone** 40:31
pretty, I'm pretty happy with like the scope that it covers at this point with just being able to pick up the PR, look at it, address the issues, commit fixes, and then work with the Jira tickets on that side as well. So I hadn't given much thought to that.

![](data:image/png;base64...)
**Elisabeth Beltinger** 40:50
Do you think there is a long-term vision where it would say, like, remove a few of the human checks so as it commits fixes, there is no longer human oversight? It would just be like the final, the final, I guess, push that has to be human oversight. Or do you see that evolving at all? Or do you think you'd...

![](data:image/png;base64...) **Tyler Malone** 40:51
With.

![](data:image/png;base64...) **Elisabeth Beltinger** 41:09
want to keep the human in this.
kind of as it does the fixes in an oversight role.

![](data:image/png;base64...) **Tyler Malone** 41:19
There is a vision and hope that we can get more to that, what the dark factory structure, that dark factory idea is. I don't
have any sort of idea of what type of timeline that could be for us.

![](data:image/png;base64...)
**Elisabeth Beltinger** 41:41
What's kind of the concern currently holding you back or what do you think needs to change for you to be able to move in that direction?

![](data:image/png;base64...)
**Tyler Malone** 41:52
We need to have a better, so we need to be able to deliver better quality across the whole software delivery lifecycle. The reason that it's important right now to have.
excuse me, eyes on it from the human is just to make sure that there is not drift. So we probably could put the work into creating some other agents.
or going back into refining guardrails to make sure that some anti-patterns don't get into like the code base. But I have seen that just through.
some of the PRs that are delivered from those who have not had an engineering background.
there's too much work that tries to be done there. And the context, like the...
the context windows or just the amount of sheer size of the volume of work that's trying to be done on like a PR exceeds the capabilities of current LLMs to be able to ingest and understand and hold everything in its context. So
We do see some like breaking in patterns that happen. That should be our best practices, even though we've defined them. So that is indicating to me what I kind of just said is that like, it just, there's so much there that it can't properly apply the rules and guardrails.

![](data:image/png;base64...) **Elisabeth Beltinger** 43:23
Hu.

![](data:image/png;base64...)
**Tyler Malone** 43:25
to every single thing that it's trying to look at. It's just forgetting.

![](data:image/png;base64...)
**Elisabeth Beltinger** 43:30
Gotcha, that's really interesting. All right, I think I'm going to shift gears just a little bit out of the nitty gritty of this workflow and just in general, like see if this workflow pattern of having a human supervise the AI as it does the steps and then also having a human kind of sign off or do the final sign off.
if you think that is sort of representative of other workflows in your company that are being performed by AI or if you think engineering is different or very particular in specific ways.
Hi, welcome back.

![](data:image/png;base64...)
**Tyler Malone** 45:27
Yeah, sorry, I got kicked again, but I was able to get back on my actual Wi-Fi again, so maybe we're good.

![](data:image/png;base64...)
**Elisabeth Beltinger** 45:32
Awesome.
I don't know if you caught my last question. I'm happy to kind of repeat it, but I was just curious if in any other parts of the company where workflows are getting identified, if you think they are, the patterns are similar to the way you structured identified workflows in your org or if they're
significant differences in how the workflow is set up with an agent between engineering versus other orgs.

![](data:image/png;base64...)
**Tyler Malone** 46:08
Mm.
So the inroads that like customer support and actually sales is trying to make, I forgot about this guy, he's the newest to the team.
So they are they are entering the world where they're going to use.
One on the customer support side, just.
AI tools that are going to.
make it easier for capturing customer feedback and some needs or wants within the software. On the sales side, they're going to, he's going to use, what's the term, I believe it's SDRs. I can't remember, but we are going to use agents on the agent on the Salesforce platform in Agentforce to actually do.
Some.
initial contacting of prospects.
And that's about all I know about that right now. Like that's basically just in the beginning phases. But I think that's going to allow David, our salesperson, to kind of multiply himself and to cast that first net, whether it's follow-up things that if people he's met at like conferences or whatnot.
But yeah, to do some emails to then figure out where the real leads could be. So kind of to do that top of the funnel thing for him, where he doesn't have to go back out and like contact like 40 contacts he just made at like a, you know, a dinner event or like a conference or.
or whatnot to get through that first pass so that he can go and then follow up on maybe the ones that have the higher signal.

![](data:image/png;base64...)
**Elisabeth Beltinger** 47:56
Yeah.
Gotcha. And in what kind of ways do you think the type that workflow is set up will differ from the ones you have set up? Is that the level of AI involvement or like the autonomy of the agent or is it the type of context or info that that agent has or a different enabling factors? Kind of, yeah, where do you see that being different?

![](data:image/png;base64...) **Tyler Malone** 48:27
The contacts.

![](data:image/png;base64...)
**Elisabeth Beltinger** 48:27
more structurally than as yours.

![](data:image/png;base64...)
**Tyler Malone** 48:30
Yeah, the contacts would definitely be different because it's all going to be more just like the customer profile that is inside of like Salesforce, whatever he has set up for like contacts in there, information about the company or the account. Excuse me.
Or whatnot, and then those agents run on the Salesforce platform with Salesforce's resources, but they do use either the underlying LLMs that Salesforce has built, or Salesforce does allow us to bring our own sort of our own.
LLMs. So we could use Claude via the API within that.
Excuse me. So he probably, he's not going to have, he's going to let those go a little bit more autonomously since it's the first, since it's the first kind of like initial contact after like the meet and greet or whatever.
And the emails within that, knowing and remembering back from like how like the prompt builder or like the agent of force builder is on that platform, everything's highly templatized anyway, which would kind of be expected in these emails to begin with. But.

![](data:image/png;base64...) **Elisabeth Beltinger** 49:47
Hu.

![](data:image/png;base64...)
**Tyler Malone** 49:55
There would be key, there would be key points about like the the customer that would be defined and the AI can can grab those pieces of information and.
pretty much stick to a template for how like the email needs to go. And then Dave would probably be able to put notes, he would be able to put notes in that he's created from that meeting and the AI would be able to also analyze those notes and take.
things from those notes that would be relevant to following up on with like the customer and then put that inside of the email as well.

![](data:image/png;base64...)
**Elisabeth Beltinger** 50:42
Gotcha.
Cool, I think, given we have about 10 minutes left, I...
Just want to see, I am one more question on the data or workflows and then I'll move to some different topics. But are you guys thinking about setting up a, I guess, more central context layer for any agent to be set up on top of that yet? Or is it more trying to think really intentionally about what?
what specific agents need in terms of context from that specific kind of function or unit.

![](data:image/png;base64...)
**Tyler Malone** 51:22
Both for the first side of that question, as we move to building some more agentic experiences inside of the inside of our software using Salesforce's Agent Force.
Their data cloud is going to be a central, excuse me.
their data cloud and then their also knowledge base for communities is going to be a central repository for context around what our software does, what Sotiri does, what we operate, our software is built for what's called ORAT, operational readiness and training. So
Where?
our target customers are large-scale infrastructure projects. And our software enables their enablement team to have oversight more of like at the owner scope level, not down at the construction contractor level, pulling back to like the C-suites and those organizations like.
the airport ownerships and people that run airports to understand the progress that's being made and where goals are being hit or missed on their like large scale like projects. And then there's the training part of that as well, which needs to happen before you can open any sort of facility.
So, you're training either your outside vendors or contractors who are going to be employed there that are going to like make sure operations run smoothly, you know, and employees or whatnot. So, those two areas of data cloud and our community knowledge bases are going to have a lot of that contextual information about.
what Aura is, how Sotiri's platform can enable that, and then some specifics about like using our software and setting that up, but also understanding the various industries that we're in and that we're targeting. Utilities, hospitals, metro transits.
airports, things like that.

![](data:image/png;base64...)
**Elisabeth Beltinger** 53:30
Gotcha. Okay, I'm going to make a relatively big pivot then. And I am curious about, as you're moving forward with these AI initiatives, what do you look for when you are hiring people at your company? And that could be engineers, if that's
what you have most context into or beyond that if you are involved in that too.

![](data:image/png;base64...)
**Tyler Malone** 53:56
Curiosity.
I think curiosity has got to be a big part of that because we are leaning very much into like using agents and identifying stuff. And so you have to kind of have a curious person that's going to lean into self-learning and exploring how, excuse me,
exploring how personally these tools can be used first. And I think that like, you just kind of have to have that natural curiosity about yourself in order to be open to like adopting these tools. But yeah, I think I could.
leave it at that. So, not necessarily, like, this is always kind of what you hear from like, uh...
job descriptions anyway, there's always like the nice to have. You always want somebody that does have like the deep experience at using the tools that you're going to want them to use. And that's definitely nice. But as I said, more of like just a personality who's going to be open-minded about.
where these tools kind of take you. And very curious about...
about what they offer and the benefits that can't arise from it.

![](data:image/png;base64...)
**Elisabeth Beltinger** 55:19
Gotcha. And how do you kind of test for that? Do you have any sort of assessment or types of interview structures that you use to probe for these skills?

![](data:image/png;base64...)
**Tyler Malone** 55:33
No, we don't. Everything, so all of the hires that we have made since I've been here has been connections via word of mouth. So we have more of like the,
So we're relying really on just those personal connections and maybe having like worked with people in the past and understanding like who they are as a person, rather than, you know, somebody we've never met before and having to discover this in a 30 or 40 minute conversation.

![](data:image/png;base64...)
**Elisabeth Beltinger** 56:08
And...
How do you balance, I guess in your case, you work pretty in-depth with Salesforce. So how do you balance, or how do you think about the mix of technical expertise with that specific platform versus, you know, AI?
Fluency or someone that's very good at working with Claude Code, say.

![](data:image/png;base64...)
**Tyler Malone** 56:36
Mhm.
And.
On the engineering side, I definitely would still want somebody who's had some pretty good experience developing on the platform, because it's pretty broad and opinionated.
And stuff that like you learn every day, even if you've been working with it for five, 6, 10 years. There's just areas of it that might, that you're learning for the first time.
Hu.
But having somebody with like the background that could understand and have quote unquote those spidey senses about where the, you know, the gotchas are in the platform, where the pitfalls are, understanding to be able to look at what we're developing and understand what the code smells might be rather than.
relying wholly on like the AI to bring that to the forefront is definitely something that we would be looking for.

![](data:image/png;base64...)
**Elisabeth Beltinger** 57:32
Just.
And how do you train people to work effectively at your company and maybe also how do you train them to be more AI native or AI fluent?

![](data:image/png;base64...)
**Tyler Malone** 57:53
We have, for one, we share tips in Slack in a specific channel called AI Upskilling. So anything that like somebody might have discovered on their own, shared there, brought her with the team.
So, um...
Or like.
a link to like something that helped them like gain better understanding about about some sort of aspect of AI programming agents or LLMs. So that's one resource. But for me, it is a lot of mentorship showing.
what the capabilities are one-on-one with a person and explaining like kind of the other tools that I've built and how like an agent can, how an agent might use for say skills that they automatically pick them up. You just have to, we just need to make sure that like skills have a good.
Um, you know, front matter that describes what their purpose is for and good examples and stuff, um, so...
I think broader at the team level, it's making sure that we share the learnings via that Slack channel that we're all discovering in real time. And then for me, with the people I work with directly, it's that one-on-one mentorship to kind of bring them along.

![](data:image/png;base64...)
**Elisabeth Beltinger** 59:19
Yeah, and has the importance of junior work changed at all since you kind of got involved more deeply with agentic workflows?

![](data:image/png;base64...) **Tyler Malone** 59:20
Hu.
Has the importance of junior work changed?

![](data:image/png;base64...) **Elisabeth Beltinger** 59:35
Yeah.

![](data:image/png;base64...)
**Tyler Malone** 59:35
Is that what the question is?
That's interesting. So a few of the people that I've had contribute were not, they didn't start, they're like, they didn't start as engineers. They either came from like the admin side of things for Salesforce, or even one was a designer.
to begin with.

![](data:image/png;base64...) **Elisabeth Beltinger** 1:00:07
Mhm.

![](data:image/png;base64...)
**Tyler Malone** 1:00:08
Still just kind of thinking.
Because you would say like they were, they would have fit that junior role, but they both had like...
They both had the ability to, I think, adopt these tools a little bit better than maybe somebody who was more senior. And I've actually heard this from a few other people as well who are managing teams, that it's those that are more junior.
more new at like the role, the job, the career that are more flexible.
So, to your question.
I kind of feel like juniors are still, like they're kind of important because they can help drive the AI adoption a little bit faster. It's definitely a double-edged sword because the experience that you get with like senior engineers.
As long as they can be healthy skeptics, is quite useful.

![](data:image/png;base64...)
**Elisabeth Beltinger** 1:01:21
Yeah.
Gotcha. Okay. I think we're out of time, so I'll let you go your way. I'm already warning you ahead. There is a possibility we reach out again to schedule a follow-up conversation, depending kind of how our other conversations go. And other than that, on the admin side of the house,
The compensation for this conversation will be sent to the email that you used to sign up for this interview, probably either end of this week or early next week. So if in roughly about a week from now you haven't received anything, please reach out to me or my colleague Tyler, and we'll make sure to follow up on that.
make sure you get that compensation, but yeah, usually send out end of this week or Monday next week. But yeah, thank you so much for taking the time. I really appreciate it. This was really interesting. So yeah, I hope you have a nice rest of your day.

![](data:image/png;base64...)
**Tyler Malone** 1:02:19
Thank you as well and you too.

![](data:image/png;base64...) **Elisabeth Beltinger** 1:02:22
Thanks. Bye.

![](data:image/png;base64...) **Tyler Malone** 1:02:24
Bye.

![](data:image/png;base64...) **Elisabeth Beltinger** stopped transcription