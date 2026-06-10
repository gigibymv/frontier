**Benjamin Jiang - Frontier-20260526\_131508-Meeting Transcript**

May 26, 2026, 5:15PM

1h 2m 30s

![](data:image/png;base64...) **Tyler Richards** started transcription

![](data:image/png;base64...) **Tyler Richards** 0:15
Hi Ben, how are you?

![](data:image/png;base64...) **Ben Jiang** 0:23
Yes.
Hey, first time using Microsoft Teams on my live. Can you hear me?

![](data:image/png;base64...) **Tyler Richards** 0:31
Yes, I can.

![](data:image/png;base64...) **Ben Jiang** 0:32
Yes.

![](data:image/png;base64...) **Tyler Richards** 0:32
How are you today?

![](data:image/png;base64...) **Ben Jiang** 0:34
Doing well, how's your day going?

![](data:image/png;base64...) **Tyler Richards** 0:37
Pretty good.
up to you if you want the cameras on or off, either way is fine for us, whatever you're more comfortable with.

![](data:image/png;base64...) **Ben Jiang** 0:43
Ahh.

![](data:image/png;base64...) **Tyler Richards** 0:45
Um...

![](data:image/png;base64...) **Ben Jiang** 0:45
Okay.

![](data:image/png;base64...) **Tyler Richards** 0:47
Yeah, I can give you a quick background on who we are and what we're doing, and then I'll open it up to you if you have any questions for us, and then we can get into some of the questions that we have for you today. So we are Keystone. We're a strategy, economics, and technology firm, and

![](data:image/png;base64...) **Ben Jiang** 0:50
Yeah.
Sound good?

![](data:image/png;base64...) **Tyler Richards** 1:07
Today, we're doing market research to try to understand how companies are using AI to shape their operating models and actually create business value, so...
We're particularly interested in how AI is embedded in workflows, in organizational structures, and enabling platforms, and what the actual business results are that follow from AI being embedded in those ways. So everything you share will be completely anonymized, so your identity and your company will be kept confidential.
Do you have any questions for me?

![](data:image/png;base64...) **Ben Jiang** 1:40
No.

![](data:image/png;base64...) **Tyler Richards** 1:43
Great. So just to kick things off, could you briefly describe your role and how it relates to AI-enabled workflows or initiatives at your company?

![](data:image/png;base64...) **Ben Jiang** 1:52
Yeah, for sure. So I was a data scientist at Meta and I worked on AI initiatives in two way. One is the, so there's two parallel paths that we were implementing a lot of AI software data folks. And the first one is this top-down structure where we are implementing
knowledge stores and semantic knowledge layers across different teams, different organizations, et cetera, to try and build a user-defined.
Like knowledge base essentially that can be queried and used to like power AI within the workplace. And the second one is working on a bottoms up agent driven initiative where we were working on implementing, signing and implementing a structure where agents can actually learn from each other.
and try to replicate all of this without.
The human component to it.

![](data:image/png;base64...) **Tyler Richards** 2:49
Got it. Okay.
Yes, I think that provides some good context for me. So for the purposes of this.
study, what we're really interested in is knowing where
Workflows are truly transforming as a result of AI, like not just where people are using.
tools in existing workflows to speed up the process, but where like processes are changing, where handoffs are changing, where AI is orchestrating workflows. So is there a particular workflow that you could, you would be able to describe to us and kind of walk through end to end?

![](data:image/png;base64...) **Ben Jiang** 3:14
Hu.
Hu.

![](data:image/png;base64...) **Tyler Richards** 3:31
where AI has really fundamentally transformed what this workflow looks like and where it's actually had realized business impact.

![](data:image/png;base64...) **Ben Jiang** 3:36
Yeah.
Sure, so I think the...
biggest, like most transformative aspect of AI within like my organization, the meta. I think there is the optimization of existing parameters. There's a lot of unknown unknowns that like sort of have to be plumbed. And I think that AI has done a really, really good job of quickly iterating through these spaces.
and running through like a predefined set of evals and.
Seeing how this works, so the biggest example, like I was on video, um, and we have recommendation engines that power our video engines, right? And...
All these models are powered by...
a lot of very specific parameters and features that need to be explored. And we have a decent existing testing infrastructure, but it moves relatively slowly and you have to run like a large number of experiments.
To do this, and so historically the way this worked was you had your subject experts and they had like a sense of like what were the right directions to push parameters, what were the right features to build, like what are the underexplored areas, and I think that.
The AI driven change in all this is you sort of plug this historical library of experiments into a...
into your AI and you go and teach the AI how to go use all this existing infrastructure so it can try to go and optimize all this itself without a human being in the loop for this and iterating over these.
To get more specific in these details, the AI is pretty good at correlating, like given, you know.
They like tell like what the range of possibilities and these are the ones that we have seen work or have not worked in the past.
is pretty good at trying to do like many, many different layers of segmentation. Like we think this will work for this set of users. How big is the set of users? And then like if we push this parameter in this way, what would we have to push a different parameter to go and bounce this out?
And it is much, much faster at running like different sets of experiments, looking at the evals, and pushing all of this back. So this has been used to drive like pretty significant improvements within like the recommendation engines at Meta in the last like half or so.

![](data:image/png;base64...) **Tyler Richards** 6:29
In the last hour.

![](data:image/png;base64...) **Ben Jiang** 6:30
Hat.

![](data:image/png;base64...) **Tyler Richards** 6:32
Okay. Unless half. Okay, got it. Okay, so maybe we could walk through this one kind of step by step. Like what actually triggers this workflow in the 1st place? What are the steps along the way? Like where is there human action or decisions?

![](data:image/png;base64...) **Ben Jiang** 6:36
Mhm.
Yeah.
Mm.

![](data:image/png;base64...) **Tyler Richards** 6:50
AI action or decisions, handoffs between the two, and then what is the actual like output of this workflow?

![](data:image/png;base64...) **Ben Jiang** 6:57
Yeah, so the workflow, um...
It's kicked off either through a... there are...
It like it runs somewhat autonomously in the background. There is just like an, it's just automated. And then after there are like large checkpoints where they have to be reviewed and the workflow kind of comes to stop at that point. And then after like we've hit this checkpoint, it feels like code has to get merged in batches in order for this.
work for like testing for like back testing purposes, then it gets like kicked off again. And I think so.
The human, sorry, trying to jump out of place, the human element of this, the human element reviews, these are the changes that we have made, and this is the number of new features that we have had to go and push, and these are the...
evaluations and here's like metrics driven capacity costs, etc. And there is essentially a human complexity versus resources versus metrics outcome decision that is still being done at the human level.
I think the...
Possibly the biggest reason for this final level of trade-offs is the company situation is like relatively fluid month over month and depending on how we are measuring against goals versus constraints, there is like some still a human need.
for this and like I think the AI contacts is not constantly up to date on this.
And then the workflow itself, did you want, like, what are the specific details that you want in the same work?

![](data:image/png;base64...) **Tyler Richards** 8:55
Yeah, so you said this is running autonomously in the background.

![](data:image/png;base64...) **Ben Jiang** 8:59
Mhm.

![](data:image/png;base64...) **Tyler Richards** 9:01
And this is all the time, right? This is just always running. So what?

![](data:image/png;base64...) **Ben Jiang** 9:02
Mm-hmm.

![](data:image/png;base64...) **Tyler Richards** 9:06
What is the, like, what are the data inputs? I'm just trying to, I, I, it's helpful for me to see, like, from like a starting point at A all the way through like the end of the process at Z, and like it's running continuously, obviously it's running continuously, but maybe if you start with like what kind of, what are the data inputs?

![](data:image/png;base64...) **Ben Jiang** 9:10
Yeah.
Mhm.

![](data:image/png;base64...) **Tyler Richards** 9:25
that go into this workflow. What?
I know you said there were a few checkpoints, like what those specific checkpoints are when there might need to be human review or actions taken, whether it be autonomous or human, and then we can go from there.

![](data:image/png;base64...) **Ben Jiang** 9:34
Min.
Got it. So the data inputs on...
We have a categorize them as like one we have.
So all of Meta's experiments, they generate this large log of how it moves like every single metric. And then you also have the code that was associated with all of the historical experiments. And then you have your internal like wiki doc or whatever about.
what exactly the change did and like what were the hypothesis behind it. So we have Metz metrics, hypothesis and code.
I went into it.
And the code is like what new features essentially what had. So all this stuff gets plugged in to the historical training and then from there you build your...
Uh, what's the...
Sorry, what's trying to figure out, like, what's the not mathematical way of saying this?
It's like a, the mathematical way says like, oh, this is like a creating the sensor. So you're trying to figure out like if we push any code in this direction, how it will move the like the metrics accordingly. If basically, okay, along this line, if we go like what?
We know where certain data points are. We want to fit like a line between them and figure out like how.
The metrics will move if we do each thing. That's like a dramatic or simplification, but yeah.

![](data:image/png;base64...) **Tyler Richards** 11:15
Yeah.

![](data:image/png;base64...) **Ben Jiang** 11:19
So the data inputs, and then from there, the model has the ability to actually kick off new write code, kick off new experiments accordingly.
So, like, this is an ongoing process, and we have this experimentation framework, and, you know, some regular cadence, either the metrics have moved enough or there has been enough time that goes by that we think we can the model thinks that it can go and make like a reasonable judgment on the experiment.
then it will go and like say, okay, how do we do? And that input goes back into like the historical metric experiment data.
And when it thinks it has something that is a winner, then it will go and output for human review. And...
On occasion, all of the winners get put into like a larger combination, and that gets like reviewed more heavily as well, but...
We have like pretty set trade-offs on a lot of these things.
Those are defined at like the...
Let's say every half or so, the biggest constraint, for instance, right now is capacity, like literally how much like CPU are we spending to drive like this much incremental engagement within our users. And if that...
We have like a defined trade-off across like a bunch of different metrics, and if it passes the threshold, then goes to human review. So, if that makes sense.

![](data:image/png;base64...) **Tyler Richards** 13:06
Yeah, yeah. Okay.
All right, so...
In this process, let's see.

![](data:image/png;base64...) **Ben Jiang** 13:16
Mhm.

![](data:image/png;base64...) **Tyler Richards** 13:19
Is there?
Are there any specific, like I know you said that once it received, once it keeps some sort of threshold, that that's when...

![](data:image/png;base64...) **Ben Jiang** 13:28
Yeah.

![](data:image/png;base64...) **Tyler Richards** 13:32
It says it has, you know.
something of a sufficient quality and it moves forward. So that's like when you have human review. Is there anything within that process that might trigger?
human interrupt or like human engagement earlier? Like is there are there any issues that it might flag or guardrails that exist in this process or is it just running until it has something that meets the quality level and then moves to the next step?

![](data:image/png;base64...) **Ben Jiang** 14:00
I think if it is going like negatively enough, it might also flag and just like immediately end there.
I, but I think for the most part it runs relatively autonomously until it gets something that is like positive and worth. I think any negative results just go back to the input training inputs.

![](data:image/png;base64...) **Tyler Richards** 14:19
Okay.
And so, what did this?
So help me understand the workflow.

![](data:image/png;base64...) **Ben Jiang** 14:28
Min.

![](data:image/png;base64...) **Tyler Richards** 14:29
A little bit, but what this look like before you had this capability?

![](data:image/png;base64...) **Ben Jiang** 14:30
Yes.
Mhm.
Yeah, so...
A human would basically review and try and contextualize all like, okay, these are the past things that we have tried. These are like past directions we have. Did they work well or did they not? And try to identify areas for improvement either by.
manually identifying underserved segments or underserved user behaviors that we didn't think we were capturing through existing features. Just as an example.
The definition of, like...
You're just imagine you're scrolling through videos on Instagram and then you're trying to figure out like, was the did the user like this video or not? And we would say like, okay, hey, users watch from zero to 10 seconds and then there's a big drop off. We should have a feature that's like zero to 10 seconds. So someone would manually go through.
The data be like, this is what the drop off looks like. Let's do this cut off right here, and then from there you would go build this as a feature, and then we have to go put it into the training data, etcetera, and see.
Okay, we like built this, how much does this cost? How well does this actually do and like does it improve the model?
in the long term, like adding the small components.

![](data:image/png;base64...) **Tyler Richards** 15:58
Okay, so then the workflow is kind of...
Opportunity or issue is identified, then.

![](data:image/png;base64...) **Ben Jiang** 16:07
Yeah.

![](data:image/png;base64...) **Tyler Richards** 16:10
kind of determining what the step is to fix the issue or improve, and then turning that into a feature, or at least requirements for a feature, which may get handed off to someone else and then eventually implemented. So thinking about this workflow,

![](data:image/png;base64...) **Ben Jiang** 16:14
Address it.
Yeah.

![](data:image/png;base64...) **Tyler Richards** 16:29
I know you said this is kind of continuously running in the background right now. So it's presumably flagging where there might be issues like low engagement or specific drop-offs in engagement, like you had mentioned, and then it's kind of running these experiments to try to determine how to address them.

![](data:image/png;base64...) **Ben Jiang** 16:32
Mhm.

![](data:image/png;base64...) **Tyler Richards** 16:48
And then...
Does it actually lay, like, so does the AI is working in the background? Then hand this, like, how do you get from...
Solution identified to actual feature.

![](data:image/png;base64...) **Ben Jiang** 17:07
Yeah, so it depending on how involved the feature is, the solution, if like the AI can write the code and like a data pipeline to go and do this within a testing, like a relatively small testing environment, they can just like.
write the code for this.
If the feature can be done without like making major changes, it has ability to go do this on like an experimental basis, and the...
Experimental stuff is relatively confined from primary code base, and...
Within like this constraints, go nuts, like, don't cost too much money, like, like, et cetera, but go nuts.

![](data:image/png;base64...) **Tyler Richards** 17:54
Okay, so sorry, I do just want to go back for a second. So you said before in the original version of this workflow.

![](data:image/png;base64...) **Ben Jiang** 17:57
Hu.

![](data:image/png;base64...) **Tyler Richards** 18:02
You would identify the problem.
and then determine kind of the parameters for what experiments that might look like to try to identify a solution. Who was actually doing that originally? Like, what was the role that was responsible for that?

![](data:image/png;base64...) **Ben Jiang** 18:11
Min.
Yeah, so it's a mix of data scientists and software engineers. I think like machine learning engineers and meta are just like called software engineers, but there are people who just like work on tuning the models. And so data scientists do a lot of like identity opportunities.
Yeah.
opportunity identification and from there it is usually up to the software engineers trying to figure out how to translate that opportunity into features or next steps.

![](data:image/png;base64...) **Tyler Richards** 18:47
Okay, and how does the relative balance of work in this workflow look today?
compared to how it looked before, like between the data scientists and software engineers.

![](data:image/png;base64...) **Ben Jiang** 18:59
Yeah, so I think the...
So I think obviously it varies on a case by case basis, depending on like...
Maybe the opportunity is like really obvious and the fix is really hard, et cetera. But I think in general, the...
ratio of data scientists to software engineers is probably somewhere between like 1 to 10 and 1 to 20 or so like within these recommendation teams. So like much more on the...
A...
There's much more work to like actually go and do all the testing than it is to go identify the opportunities. And I think that this is probably continuing to...
Increase, I think the ratio of is like there are less data scientists relative to software engineers within these teams going forward. I think the like automating out a lot of this.
opportunity identification, if you can just like iterate over more things and then the software engineer like maybe has to go spend more time thinking about like, oh, this is a particularly complicated implementation, but the AI is making it much easier to cover like low hanging fruit of opportunity identification.

![](data:image/png;base64...) **Tyler Richards** 20:23
Yeah.
Got it. Okay.
All right, so that makes sense. So I do want to dig in a little bit on the part of this workflow that goes from...

![](data:image/png;base64...) **Ben Jiang** 20:42
Mm-hmm.

![](data:image/png;base64...) **Tyler Richards** 20:48
Um...
Like.
Experiment as the threshold to.

![](data:image/png;base64...) **Ben Jiang** 20:54
Mhm.

![](data:image/png;base64...) **Tyler Richards** 20:57
Like what the actual solution is. So you mentioned that
under certain circumstances.
It like the feature development may actually be automated, presumably depending on like complexity, potential impact of the feature, and whatever other like parameters are involved in that. Do you have a good sense of like...

![](data:image/png;base64...) **Ben Jiang** 21:07
Mhm.
Yeah.
Yeah.

![](data:image/png;base64...) **Tyler Richards** 21:20
What actually would allow a feature to then go to this automated pathway as opposed to being...
I push to human review or like the software engineers or whatever process is actually like human-driven development.

![](data:image/png;base64...) **Ben Jiang** 21:37
Yeah, so I think it is a numerical change to an existing parameter. So in this example that we skip 0 to 10 seconds of video defines a skip. And if the AI is like, okay, actually the number should be 0 to 15 seconds is a skip.
Usually don't like it. That is completely A-OK. So modifications to existing.
tables with existing like parameters. That kind of tuning is relatively automated.
The biggest one being once we start adding on more tables because every...
additional table or like extra steps to the pipeline is relatively expensive and we want to try and avoid like exponential growth of that. The exponential like horizontal growth of a table is more okay.

![](data:image/png;base64...) **Tyler Richards** 22:41
Okay, so then what's less okay then?

![](data:image/png;base64...) **Ben Jiang** 22:45
Let's say we want to go to a stat that says...
Within 3 videos, what?
Did you, of the last three videos, like how many of them did you skip?
Oh, sorry, so let's imagine a hypothetical feature row on this user plus video and what did they do, right? And did they watch, did they did less than?
10 seconds or a and that can be calculated within just this user plus video information. Less okay would be.

![](data:image/png;base64...) **Tyler Richards** 23:43
Um...
Hey, Ben, I don't know if you can hear me, but it it froze for me.
From there.

![](data:image/png;base64...) **Ben Jiang** 24:07
Hello, sorry, can you hear me?

![](data:image/png;base64...) **Tyler Richards** 24:09
Yes, yeah, I can hear you.

![](data:image/png;base64...) **Ben Jiang** 24:10
Okay, cool. Um, well, sorry, what was the last thing that you heard me say?

![](data:image/png;base64...) **Tyler Richards** 24:15
You had just started to explain what a less okay situation might.

![](data:image/png;base64...) **Ben Jiang** 24:18
All right, so in this context, let's say we need an aggregation that cannot be done within just this video plus row, and we have like a custom aggregation. Like of the last three videos, what percentage do they watch less than 10 seconds?
Um...
And we can imagine like this aggregation could happen for like any number of the last X videos and we might need like different tables for each of them joining onto this user plus video row combination. That would not be okay.

![](data:image/png;base64...) **Tyler Richards** 24:57
All right, got it.
Okay.
So, throughout this...
Let's say that it's one of those situations that...

![](data:image/png;base64...) **Ben Jiang** 25:13
Mhm.

![](data:image/png;base64...) **Tyler Richards** 25:13
can be fully automated.

![](data:image/png;base64...) **Ben Jiang** 25:16
Yes.

![](data:image/png;base64...) **Tyler Richards** 25:18
Does, is this like?
So, you've identified...
a potential solution, how does this get, like obviously it's automatic, but how does it get handed off from like 1 AI tool or agent to another?

![](data:image/png;base64...) **Ben Jiang** 25:25
Mhm.
Yeah, Snell.

![](data:image/png;base64...) **Tyler Richards** 25:34
And like, what defines those and what are their core responsibilities?

![](data:image/png;base64...) **Ben Jiang** 25:41
So at this point we had a positive response and we are passing back off to human review or are we...

![](data:image/png;base64...) **Tyler Richards** 25:49
No, so this is this is like one of the situations where you said, like...

![](data:image/png;base64...) **Ben Jiang** 25:52
Thank you.

![](data:image/png;base64...) **Tyler Richards** 25:55
You know, maybe it's numerical change, like you had mentioned, and it doesn't need to go through human review; the actual feature update can be automated; it qualifies for automated code, so what does that look like?

![](data:image/png;base64...) **Ben Jiang** 25:58
Mhm.
Yeah.
Mm.

![](data:image/png;base64...) **Tyler Richards** 26:14
Does, I'm assuming this gets passed off to some other agent or something that actually writes the code, but...

![](data:image/png;base64...) **Ben Jiang** 26:19
Yeah.
Oh yeah, okay, so...
There is a, there's like one process that goes, takes in all of the inputs, all the historical experiments, and maps out the range of like what are the changes that we can make. And then we take this change and we pass it over to the coding agent.
which, you know, does this, like looks at complexity and figures out like, is this a reasonable automated change or not? And from there...
There is a...
We have this experimental infrastructure which hooks up to a code slash pull request and can run experiment from there. This is like historical infrastructure experiment runs.
We have a separate tool that goes and just like...
one like on a daily basis, go look at the results of the experiment, plop it out. How does this look? And if it looks bad after a certain amount of time, kill the experiment, feed the information back to the original agent. If it looks good, pass over to human.
For review.

![](data:image/png;base64...) **Tyler Richards** 27:41
Okay, when you, what is, what is like, so when you say experiment, is this actually like user-facing experiments on your platform? Okay. And presumably those are kind of like limited in scale.

![](data:image/png;base64...) **Ben Jiang** 27:46
Yeah.
Um, we'll define limited in scale.

![](data:image/png;base64...) **Tyler Richards** 28:00
Like, is there like a threshold for the certain a certain number of users that this experiment could be rolled out to, for like the automated experiments?

![](data:image/png;base64...) **Ben Jiang** 28:06
Oh.
Um...
Yes, generally speaking, the tool is pretty good at knowing how many users we would need to hit statistical significance. And it tries to go like, you know, limit the scope to that.

![](data:image/png;base64...) **Tyler Richards** 28:20
Alright, OK.

![](data:image/png;base64...) **Ben Jiang** 28:26
The other other things I like, if you have a like a trillion experiments right at the same time and there's like overlapping populations, you want to go and you need to keep all of these separate, so like if like it's forced.

![](data:image/png;base64...) **Tyler Richards** 28:26
Got it.

![](data:image/png;base64...) **Ben Jiang** 28:42
Minimize the.

![](data:image/png;base64...) **Tyler Richards** 28:46
Okay, you were breaking, I think I caught everything you said, you were breaking up there a little bit, but I will let you know if...

![](data:image/png;base64...) **Ben Jiang** 28:51
Mhm.

![](data:image/png;base64...) **Tyler Richards** 28:55
It continues, so.
Let me turn off my video in case that helps at all. Um, alright, so...
Let's follow this kind of workflow in this concrete example, so...
If the experiment looks bad, it gets killed, obviously, then presumably that.

![](data:image/png;base64...) **Ben Jiang** 29:15
Mhm.

![](data:image/png;base64...) **Tyler Richards** 29:20
Information is saved back into the experiment repository, so it can be learned from, correct?

![](data:image/png;base64...) **Ben Jiang** 29:25
Yes.

![](data:image/png;base64...) **Tyler Richards** 29:26
Okay, let's say that on the other hand it looks good. Then you said passed over to a human. What happens at that point?

![](data:image/png;base64...) **Ben Jiang** 29:35
Um...
So the human gets a printout of all the metrics, all the changes that went into it, and...
They look at the complexity of the code and they look at the metric impact and they make a judgment and then it gets sent over to a...
like team review essentially where someone who is like unbiased, unaffiliated, takes a look at this and there is some level of...
AI review on this as well. They're trying to automate it, but generally speaking, this second step is not as successful because if like, you know, an AI was able to review this, they would have caught it the first time around. So at that like.
So it goes over to human review, team review.
And push.

![](data:image/png;base64...) **Tyler Richards** 30:38
Okay.
And so, how I know that you have this?
database of experiments.

![](data:image/png;base64...) **Ben Jiang** 30:48
Mhm.

![](data:image/png;base64...) **Tyler Richards** 30:50
Is it just the growing database that allows this tool to improve over time, or is there other types of learning kind of fed back into it throughout this process as people are iterating and reviewing and improving?

![](data:image/png;base64...) **Ben Jiang** 31:11
So we have tried to go and post notes on...
Like when the experiment goes to review and people discuss online, we have tried to go and pass back to an AI to see like, hey, can you go and review like a person? And so far that has been relatively unsuccessful.
I think that...
It's probably mostly because the humans have a specific context within this that the AI does not have access to, or they...
had a sign decision in mind that the AI does not.
Trying to, I look at concrete example, trying to think like how to phrase this.
Yeah, like as of right now, it is mostly just database experiments and growing pool that.
improves the review slash iteration process.

![](data:image/png;base64...) **Tyler Richards** 32:27
Okay, got it.
All right, so...
Human gets the output that you had mentioned. Is there...
Sorry, I'm just looking at my notes, wanna make sure that I captured it. So, is this the final step in this workflow? Is there are there further changes after this? Like, is it just that this feature gets rolled out, whatever it is?

![](data:image/png;base64...) **Ben Jiang** 33:01
Ice.
There are smaller follow-up steps, but they are mostly automated. For instance, like when you roll out an experiment, you have to do a backtest that like tracks experiment over time to make sure you know the change is still good in the long term.
Like, so you can, you know, tell you how much impact you had at the end of the half, but that is mostly where the...
Ohh.
workflow ends. You have to like do your write-up, write-up gets logged to the place where all product changes get logged.
But these are like smaller follow-on steps for the most part.

![](data:image/png;base64...) **Tyler Richards** 33:53
Okay, and

![](data:image/png;base64...) **Ben Jiang** 33:53
Shin.

![](data:image/png;base64...) **Tyler Richards** 33:56
Does this get handed off to...
Like, does the output of this get handed off to another team that can use it for the purpose of, like, you know, product design, something like that?

![](data:image/png;base64...) **Ben Jiang** 34:11
Hu.
You give me an example. I feel like the other agents have access to this information, but they're perhaps not like actively attempting to.
Use it right now.

![](data:image/png;base64...) **Tyler Richards** 34:30
Okay, okay. So I wanted, I think I have a good picture of the workflow now. You had mentioned

![](data:image/png;base64...) **Ben Jiang** 34:32
Yeah.
Min.

![](data:image/png;base64...) **Tyler Richards** 34:43
the steps and roles that were involved, primarily data scientists, software engineers. Were there any other functions involved in this workflow, either in the old version of it or in today?

![](data:image/png;base64...) **Ben Jiang** 34:47
Mhm.
I think that...
The areas I worked on were very...
Like technical, it was kind of just these teams. For instance, the we had like a technical product manager and not a, you know, classical product manager. There are other teams that have product designers and such.
But my team specifically did not. I know like within or I can speak to it somewhat, but less extensively, I think.

![](data:image/png;base64...) **Tyler Richards** 35:30
Okay, got it.

![](data:image/png;base64...) **Ben Jiang** 35:31
I.

![](data:image/png;base64...) **Tyler Richards** 35:33
And has anything, so aside from...
The kind of...
ratio you had mentioned within the teams changing. Has anything else about...
The roles themselves changed, like...
Are the job descriptions different, role definitions? Have performance reviews changed what their focus is, what they like put a lot of weight on? Is compensation changing or tied to different outcomes?

![](data:image/png;base64...) **Ben Jiang** 36:12
So the performance review part, there is a new axis of performance, which is kind of just like how AI native and how actively are you pushing for.
AI usage and there's two sets of different expectations. One of them is, you know, are you like significantly more productive through the usage of AI? And the other one is, are you helping other people at the company be more productive through the use of AI?
So one of them is like more individual and the other one is like, you know, are you building infrastructure? Are you building knowledge for other people's AI benefit? Are you building processes, et cetera?
I think in terms of compensation, it is...
I don't believe anything has changed a meta.
But also, like, having kept super close tabs on that, and I think the...
general sense is that head count is like probably decreasing and continuing to decrease over time, like, but no one is quite sure what the final percentage like original head count that year four is.

![](data:image/png;base64...) **Tyler Richards** 37:38
So you mentioned.

![](data:image/png;base64...) **Ben Jiang** 37:39
Yes.

![](data:image/png;base64...) **Tyler Richards** 37:41
One of the metrics being whether you're becoming significantly more productive over time. Is there a kind of standard metric for that, or is it more qualitative, anecdotal?

![](data:image/png;base64...) **Ben Jiang** 37:52
No, there is not. So...
A lot of what software engineers do, because it's Metz so experimentation framework, you can look at your launches, you can look at the back test and see, did the changes you make actually do something in the long run? But...
For other roles such as DS, product designer, PM.
It is harder to say. Although some people are looking at numbers like raw output, you know, lines of code or numbers of doc, data science docs published like to build understanding, but no one is especially happy with these quantifications right now. I think the...
number of lines of code and number of pull requests is dramatically up, but the overall impact, like numerical impact that we see driven by these changes, is not proportional at all.
Like, it's up, but it's just not like up nearly as much as like raw code and pull requests.

![](data:image/png;base64...) **Tyler Richards** 38:58
Okay.
Got it.
And what about, do you have visibility into what this looks like for less technical, maybe more creative functions? So are they kind of being, do you know if they're kind of being evaluated on the same sort of performance?
parameters.

![](data:image/png;base64...) **Ben Jiang** 39:29
Um, I don't have...
I don't think I know any designers well enough to speak on this.

![](data:image/png;base64...) **Tyler Richards** 39:35
Okay.
Um...
Alright, so.
Let me see.
So, for I, I, I just kind of going back to the workflow we have been talking about a little bit, um...
What would you say are the kind of core AI capabilities that allow this to succeed?

![](data:image/png;base64...) **Ben Jiang** 40:06
Yeah.
Looking at all of these steps, I think the two core components are being able to link to internal tooling and output from it. And that tooling is what it uses to understand like the impact.
of the things, right? It's...
It's essentially the AI's like window into reality. If the tooling broke, it was like returning garbage numbers, the AI would be like, oh, this is going well or not. That's like window into reality. And then the second one, this.
somewhat automated coding process like can it convert
The.
desired steps into code. That part is somewhat solved right now. Like the existing AI models are good enough to do this. And then...
The part that is critical and can always be improved is how do you translate these data inputs, all these historical experiments, the hypotheses, the code that went into it into future steps. And this is the biggest part and this is.
The, I would probably say like the second most critical.
component of this.

![](data:image/png;base64...) **Tyler Richards** 41:51
Okay, so that that's actually that's really interesting. I
The internal tooling, the ability to link to internal tooling that you mentioned, can you explain what that looks like a little bit more? Like what is the internal tooling that it connects to? How is it connected?
and like what was necessary in order to enable that.

![](data:image/png;base64...) **Ben Jiang** 42:16
Yeah, so.
We have.
The experimentation software at Meta, it's called Deltoid. And to...
Super, super high level. It produces a lot of metrics for...
your specifications. And prior to this, it was a relatively human-driven user interface.
You.
set up some things, you set up your experiment, you hit some buttons, and it would, you know, put out these metrics over time. It would automatically generate the metrics, a human would look at them and evaluate them. So all of this stuff, information already existed in the tables.
But it needed to be.
exposed to an AI endpoint. So someone had to go and build essentially an API that says.
How do we go and connect to this data? And there are a bunch of like security concerns that had to be managed around this.
And I think that was probably like one of the hardest parts, but...
Given that this data already existed, it was just mostly trapped to like a...
a graphical human user interface before someone had just go and build like an API implementation to connect this and in a way that agents could use it consistently.

![](data:image/png;base64...) **Tyler Richards** 44:02
Got it.
Okay.
That's interesting. So the other thing you mentioned, like automated coding and translating this into future steps. So I am just curious, are you...
For this, are you typically just using like whatever Metz frontier model of the moment is? Do you kind of...
delay the rollout of frontier models for these tools.

![](data:image/png;base64...) **Ben Jiang** 44:42
We had the option to switch between different ones. I think the code of tool of choice for most people was Codex. We got access to internal models around the same time that everyone else did.
I think it's like some people within the, within the like the org that built it had earlier access and tested it, but I think general population got access to it at the same time as everyone else. There is, I think, like...
They are pushing people to test out internal tools, et cetera, and like...
trial run it, that's like a, you know, pretty sizable user base, like good feedback, but...
But up until like a month ago, we had the same access as everyone else did, which is none.

![](data:image/png;base64...) **Tyler Richards** 45:37
Okay.
And so.

![](data:image/png;base64...) **Ben Jiang** 45:40
The.

![](data:image/png;base64...) **Tyler Richards** 45:42
Yeah.
Given all this, like how do you measure whether this workflow is working well?

![](data:image/png;base64...) **Ben Jiang** 45:51
Yeah, so.
It is the same way that everything else is measured, which is like these experimental backtests. We have these longer, we have holdouts. Sorry, do you know what an experimental setup slash holdout is?

![](data:image/png;base64...) **Tyler Richards** 46:10
You can explain it.

![](data:image/png;base64...) **Ben Jiang** 46:11
Oh, yeah.
So imagine we're running like an AB test for a given experiment, and we use that to say how well the experiment did, and then...
What was the impact of it? For every single team, we have the same thing. And for every single organization, we have the same thing. All the changes that happen within the team go into one large AB test, within the organization, large AB test, within the company, large AB test.
And the same metrics that each team, each experiment is being evaluated on.
Like Meta knows what they are at every single level of the company and
like the, like, oh, are these processes working well? The biggest one is like, what is the top line impact? How much additional engagement are we driving? How much additional revenue are we driving? And then I think from there, there's more.
Qualitative stuff, which is...
Are people like happy with the tools? How are, you know, individual people feeling at the team level, at the org level? And...
A lot of this is just kind of like user reported stuff.
And then there is the third layer, which people were kind of reckoning with recently, is how often does stuff break now that we are outsourcing a lot more things to agentic workflows and there's like a lot more AI written code.
And...
I think people were sort of like working on trying to understand the impact there.

![](data:image/png;base64...) **Tyler Richards** 48:07
Got it. Sorry, I had to close the window. There's some loud construction going on outside.

![](data:image/png;base64...) **Ben Jiang** 48:10
Mmh.
Okay.

![](data:image/png;base64...) **Tyler Richards** 48:14
Okay, yeah, I mean that.
That makes sense, and in...
Is there any other?
All right, so what do you see as kind of the next step in this workflow? Like, are there any kind of short-term roadmap changes that you know of or expecting? What does this, like, do you have a sense of what this looks like long-term? Is it?
Is it kind of continuing?
on the path that it's owned just more efficiently or are you expecting some more kind of fundamental changes to what this workflow looks like as time goes on?

![](data:image/png;base64...) **Ben Jiang** 49:06
Yeah, so I think the biggest one being how good are the suggestions that it makes. And right now it's...
It's somewhat limited by like our existing set of historical experiments, what we changed, and then you can use it to go and...
Prompt additional.
I think, like more, let's say, like system-level changes and ask for...
Improvements, actually possible code, road maps, et cetera, and they could do all these things, um, and then, but there are...
complications when you increase the amount of code load and amount of code being generated. So I think the next step is at some point, do we switch over?
How much human in the loop intervention do we want? And...
How like crazy are we willing to let agents go? I think as contacts windows increase and they are able to load more and more information and try to use like...
make system slash org level decisions about the future of the product. That is 1 area where things could.
dramatically change and like increase in scope slash complexity of these changes. I think the other one which...
Could be.
I think it is interesting. I think it depends on how much control people are willing to let go of is...
You give it more goal-focused optimizations like, hey, these are the constraints. This is what we're aiming for. Or maybe even ask the AI what we should be aiming for and just ask it to like optimize from there.
This will like probably represent a dramatic decrease in workforce and like a massive increase in
compute, but those seem like the two most logical next steps.
Based on like what I was seeing, like, I don't know.

![](data:image/png;base64...) **Tyler Richards** 51:33
Okay.
Okay. And based on kind of the incentives that you face or decisions that you make or decisions that you've seen being made in the company, like what is your...

![](data:image/png;base64...) **Ben Jiang** 51:42
Hu.
Yeah.

![](data:image/png;base64...) **Tyler Richards** 51:49
How much weight are you and others putting on like human cost versus token cost?

![](data:image/png;base64...) **Ben Jiang** 51:57
Yeah, so I think the...
It feels like human cost is a very, very big deal and people are somewhat betting on the ever decreasing cost of compute and the improvement in compute efficiency.
It is somewhat unclear to me how much of that is. I essentially like...
Be.
wishful-ish thinking of management. From A technological perspective, it does kind of feel like there is a strong incentive to just keep building these more and more
expensive models and people are like finding more and more ways to burn tokens and all of these AI first approaches are very very
Token heavy and not super efficient, and in which case it like, maybe it is possible that all these LLMs costs just keep scaling up to infinity and...
At which point, like?
It is possible for a human to be cheaper, but less fast than...
AI models so far.
like management, like taking like a very strong bet that efficiency will go up, like we have our own, we're buying our own compute, etc.
Five.
It does feel pretty strongly like they are betting that.
Human costs are fixed and AI costs will decrease.

![](data:image/png;base64...) **Tyler Richards** 54:15
Got it, okay.
All right, so I want to make sure before we end here that I understand, and sorry to kind of be jumping around A lot. I want to make sure that I understand this workflow kind of step by step. Because that's one of the biggest things we're trying to understand as part of this study is like, how are workflows changing? Where are humans and AI involved in?

![](data:image/png;base64...) **Ben Jiang** 54:28
Okay.
Mmh.

![](data:image/png;base64...) **Tyler Richards** 54:41
in the different steps of the workflow. So what I have now, and if any of this is wrong, please cut me off in the middle. So first, there's this continuous running system AI tool. It ingests historical inputs and generates potential changes.

![](data:image/png;base64...) **Ben Jiang** 54:49
Mm.
Mhm.

![](data:image/png;base64...) **Tyler Richards** 55:03
Ben.
There's stage gate one, which is like whether it is eligible for automation or not. If it passes, then it can move forward automatically. If it fails, then it's escalated to a human, like software engineer. Then experiment runs.

![](data:image/png;base64...) **Ben Jiang** 55:20
Mhm.

![](data:image/png;base64...) **Tyler Richards** 55:24
whether that be automated or through software engineer, is that right?

![](data:image/png;base64...) **Ben Jiang** 55:29
Mhm.

![](data:image/png;base64...) **Tyler Richards** 55:30
And then stage gate 2 is in either one of those paths, there is a negative outcome, experiment stops, feedback goes back into the database, or positive, in which case it's escalated for review. And then on both of these paths,

![](data:image/png;base64...) **Ben Jiang** 55:47
Mmh.

![](data:image/png;base64...) **Tyler Richards** 55:50
automated or not, human reviews, the metrics, the complexity I think you mentioned.
you know, cost trade-offs, things like that, right?

![](data:image/png;base64...) **Ben Jiang** 55:59
Mhm.

![](data:image/png;base64...) **Tyler Richards** 56:00
Then the human decides whether to approve for broader team review and actually push forward or to reject.

![](data:image/png;base64...) **Ben Jiang** 56:07
Hu.

![](data:image/png;base64...) **Tyler Richards** 56:09
And then...
There's the independent, you mentioned independent review. Is that like just someone else in your team who was not involved in this particular experiment or is that like a completely separate team?

![](data:image/png;base64...) **Ben Jiang** 56:25
Um...
It varies on which team you are. Usually it just means someone who is not on directly working on.
This project.

![](data:image/png;base64...) **Tyler Richards** 56:40
Okay, but it would be, yeah, it would so it would be like a data scientist, software engineer that was okay, okay, then.

![](data:image/png;base64...) **Ben Jiang** 56:44
Yeah.

![](data:image/png;base64...) **Tyler Richards** 56:51
That's the final decision. It's either approved for rollout, rejected, and then...
I
I'm not sure I captured this. What's the what's the like feedback mechanism here? Is there any because this is the end of the workflow, right?

![](data:image/png;base64...) **Ben Jiang** 57:09
Yeah, so these experiments, they go back into the like library of experiments that like initially happened.

![](data:image/png;base64...) **Tyler Richards** 57:17
Okay.
Okay.
Got it.
All right, so I think that covers most of the specific questions I wanted to ask. So just like before we...

![](data:image/png;base64...) **Ben Jiang** 57:31
Hu.

![](data:image/png;base64...) **Tyler Richards** 57:34
And is there anything else, because we were talking about this and based on the context of what we're trying to capture from this, through this study, is there anything else that we didn't talk about that you think is particularly relevant to understand kind of how operating models are changing in the work that you do?

![](data:image/png;base64...) **Ben Jiang** 57:51
Um...
I think the...
I think like the overarching theme of this maybe like six months to last year has just been like, okay, hey, are we moving from human doing everything to human in the loop and how much like, you know, additional.
information like does the AI need to go and make all these decisions. I think that...
is probably covers all of it.
Sure.

![](data:image/png;base64...) **Tyler Richards** 58:39
Okay, and I don't know to what extent you have visibility into this, but like as you're deciding.
for some of these workflows.
like where you can adopt tooling that can help.
and whether it's worth...
You know, changing existing processes, like, what is...
What is the kind of like framework that your team uses for deciding whether to like build something internally, buy some sort of tool, partner, or...
Justin.
maintain the status quo.

![](data:image/png;base64...) **Ben Jiang** 59:22
Yeah, so I think...
A lot of this is culturally specific to Meta. One, Meta has like a long history of just building out internal tooling in many, many situations, like our experimentation platform, internal, many, many things that we do, like internal.

![](data:image/png;base64...) **Tyler Richards** 59:39
Yeah.

![](data:image/png;base64...) **Ben Jiang** 59:47
And that's just who we are. I think in terms like when do we decide that we want something or not.
There's 2 like obvious answers. One of them is when management like pushes for it, it's like a very top-down thing over the last six months. Management, like very, very heavy, like everyone should adopt AI toolings and then you just go kind of plug them all in and figure out which of these things are actually useful or not.
And then on a...
More of a team specific level is like how like do we find these things useful or not? Do we think this speeds up our code? How fast we write code? How fast like we make launches to are the launches better or not? And I think this part is actually relatively.
Easy to quantify through our, like, like existing experimenting accessing experimentation framework and tooling, which is really nice and like advantage that.
Maybe other teams like don't have as much.
But...
The like build versus buy framework is that we basically almost never.
Bye, unless.
It is something really, really standard. We choose to like build most of our internal coding tools. Like we have our own version of Git. We have our own experimentation platform.
We have our own version of...
I guess like knowledge store, etc.
Well, I think like build versus buy is a very company specific thing. The answer is almost always build.

![](data:image/png;base64...) **Tyler Richards** 1:01:37
Got it. Okay. All right, so that covers all the questions that I need to ask. So thank you for taking the time to speak with us. This has been really helpful. We usually send out honoraria on Mondays or Tuesdays for the previous week. So you should get an email on Monday or Tuesday with

![](data:image/png;base64...) **Ben Jiang** 1:01:53
Mmh.

![](data:image/png;base64...) **Tyler Richards** 1:01:57
Um...
the Amazon gift card for the amount that Gloria had mentioned in her email. If you don't see it by Tuesday night or Wednesday morning, or you just have any other questions for me, my email is in the invite. You're always welcome to reach out to me to ask anything.
But...
Yep, so thank you again for taking the time to chat with us. Hope you have a good day.

![](data:image/png;base64...) **Ben Jiang** 1:02:25
Do have a good one. Bye.

![](data:image/png;base64...) **Tyler Richards** 1:02:27
But.

![](data:image/png;base64...) **Tyler Richards** stopped transcription

Follow-up email exchange 5/28

Tyler Richards:

1. Is the experimentation platform you were referring to the company's general experimentation platform or a more narrow experimentation platform focused on a type of experiment or media? Put differently, how broadly does the workflow pattern you described apply across the company?
2. Which models or tools are actually used in the workflow you described? You mentioned internal models and Codex, but which internal models? ​ Was Claude not available? And for each model, do you have access to the most powerful / latest version?

Benjamin Jiang:

1. The experimentation platform is used across the entire company, but I would say the more automated iterative approach is used on things that the consumer does not directly see. Using Instagram as an example: there is less user trust lost / confusion if the algorithm powering their feed temporarily shows slightly different content vs if we add a new button that takes you from feed to messages and then remove it after a week. The moment a user can point out exactly what a change was, rapid changes to the user experience may cause long term effects that can’t be captured within a single experiment (which is what we base everything off off). Imagine the same button going from feed to messages: if it starts off in the top right, then goes bottom right, bottom left, top left in successive experiments for a single user, the user may just become frustrated with the overall app and “returning” to the original top right will feel worse.
2. We have access to the latest versions of the models from Anthropoc/OpenAI/Google. Our internal model was referred to as Avocado pre-release, I think it’s now Spark. What tools are you referring to, our internal experimentation platform is basically <https://share.google/sYurXFhCR3AzbYQdN> Source:%20Statsig