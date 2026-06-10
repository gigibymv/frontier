**Dmitry Shkolnik - Frontier-20260610\_113137-Meeting Transcript**

June 10, 2026, 3:31PM

1h 1m 36s

![](data:image/png;base64...) **Tyler Richards** started transcription

![](data:image/png;base64...) **Tyler Richards** 0:07
Hi to meet you. How are you? Can you hear me?
Dimitri, if you're speaking, I think you're on mute.

![](data:image/png;base64...) **dmitry** 0:28
Yeah, I got it. Sorry, not a regular Teams user.

![](data:image/png;base64...) **Tyler Richards** 0:33
Yeah, how are you today?

![](data:image/png;base64...) **dmitry** 0:34
Good, good. How are you doing?

![](data:image/png;base64...) **Tyler Richards** 0:36
Pretty good.
All right, so I can just give you a quick background on who we are, what we're doing here today, and then if you have any questions for me, I'll leave you some time to ask, and then we can jump into some of the questions that I have for you. So we're Keystone, a strategy, technology, and economics firm.

![](data:image/png;base64...) **dmitry** 0:52
OK.
Yeah, sounds good.

![](data:image/png;base64...) **Tyler Richards** 0:59
We're conducting market research to try to understand how companies are using AI to shape their operating models and what the actual business value is that they can create from that. So in particular, we're interested in how AI is actually embedded into workflows and into your organizational structures.
and what the enabling factors and platforms are.
for those AI workflows. And then what the actual business results are that you're seeing from embedding AI into these workflows and organizational structures and platforms. So as a reminder of what Gloria mentioned in her email, everything will be completely anonymized. So your identity and your company will be kept confidential.
Do you have any questions for me?

![](data:image/png;base64...) **dmitry** 1:50
Um...
I think it makes sense. I've done a call like this before, so I think I have some sense of the rhythm. But yeah, I think the background makes sense. I think it's an interesting topic. I think it's one that everyone is figuring out in real time, and I think everyone's curious what everyone else is doing.

![](data:image/png;base64...) **Tyler Richards** 1:58
Okay.
Yeah, great. So then, just to kick things off, could you briefly tell me a little bit about your role and how it relates to some of the AI initiatives and AI-enabled workflows within your company?

![](data:image/png;base64...) **dmitry** 2:14
Okay.
Fat.
Yeah, definitely. So I'm currently a senior manager of a data science team. So I manage a team of around 8:00 to 9:00 people right now. It's part of a larger, more than 100 person data science organization. The functional data science.
work that we do sits very closely in these typical cross-functional groups with engineering, particularly machine learning engineering, as well as with product managers. The nature of the data science work that we do is a range of work from kind of like standard products
product-oriented analytics to everything, including more of like an applied science, machine learning type of work. And what has changed a lot in the last, especially in the last four, five, six months, but I think started changing around 12 months ago,
is the degree to which AI is complementing and augmenting the work that we do.
I think, like many of our peer companies, the first things that have materially changed have been...
more, I suppose, like facilitation of like automated analytics. I don't think, I don't think anyone's fully, fully mastered this. I think, you know, some of the like blog posts that companies put out are maybe like a little bit more.
posturing than they are representative of reality, but I think everyone is concurrently working on figuring out like the right way to approach the automation of that, because that is probably the most immediately valuable product to unlock. I think for a lot of data science groups, you spend a lot of time
doing analytical like work for stakeholders. And so the more you can automate that, the more you get your own time back to work on more interesting things. But to get to that point has required a lot of investment of time into essentially building the substrate that you need for that to work. I'm sure we'll get into that in more detail.
Um, but...
Let me pause here if I'm going off too much into the solutioning, and if you want to get a little more background.

![](data:image/png;base64...) **Tyler Richards** 4:47
No, that is a background is perfect. So I think what's helpful for us is to try to talk about something very specific, like that concreteness really helps us understand what it is that you're doing, how it's changing, what the workflows and operating model look like today. So

![](data:image/png;base64...) **dmitry** 5:03
Yeah.

![](data:image/png;base64...) **Tyler Richards** 5:05
To do that, is there a particular workflow that you have visibility into where you feel like AI has truly kind of like materially changed what the workflow looks like, who's involved in it, how the handoffs work, and has had like...

![](data:image/png;base64...) **dmitry** 5:06
This is.
No.

![](data:image/png;base64...) **Tyler Richards** 5:24
measurable business impact that we could kind of just talk through step by step.

![](data:image/png;base64...) **dmitry** 5:30
Yeah, definitely. And also, Tyler, I think as I went through with this, like you are welcome to try and like guide me to specific questions that you want me to answer, because I think I might do a better job giving you that direction and the color to those questions specifically if you point them out to me, like in this case.
But yeah, certainly I would categorize the...
workflows into few different buckets, right? So, you know, as I was mentioning, like one part of it is essentially like analytical workflows. And analytical workflows tend to be a little bit more simple in nature. They are essentially, you can even classify them as like query automation, like get better and faster at.
Being able to ask the questions of your data that are relatively straightforward and are.
historically gated on the ability or the capacity of somebody with access to the databases and familiarity with SQL to be able to do that. So that, I think, has basically been the first domino to fall for us. And so that, I think, is not entirely solved.
But there has been a lot of movement there, so we have.
approaches by both exploring external tooling. It's obviously been a number of little startups who've been trying to do exactly this, like automating, basically automating SQL, automating some simple data analysis, and allowing people to approach those kind of questions with more of like a semantic approach.
And then beyond that, you know, we've had mass adoption of, especially Claude code for about four, five, six months now at this point, although we are actively using both Claude and Codex relatively interchangeably. With that, I think people have developed
you know, many people will have developed their own workflows and then kind of scale up through network effects from the bottom up to solutions that are like a little bit more popular and get more established and benefit from kind of like a virtual cycle of improving context, improving like skills.
And, in turn, improving workflows.
So I would say the automation of like that of analytics, I think, has been the thing that's come furthest along. It still has some challenges, particularly in the last mile of things. Like verification of is the analytical output that's generated by AI.
Is it accurate? Is it correct? I think it continues to be a little bit of a challenge. I have some thoughts on that. I can go back to it. But by and large, that has seen almost universal adoption. I certainly, myself as a user, am not writing very many queries these days.
Neither are most of the people in the data science team, and but more importantly, the wider cross-functional group, including like technical stakeholders, technical stakeholders like engineers, but also like less technical ones like product managers, finance, operations, whomever.
Essentially, everyone has access to different analytics automation tooling. Some people prefer to do it via their command line interface tools like Cloud Code. Other people will use more dedicated tools that have a little bit more of a user-friendly front-end experience.
So, that's kind of category one.
Prior to the last four or five months, there was much more wide scale adoption of cursor as a tool. So I would certainly say that many folks were still not necessarily writing queries or doing much code by hand even 5, six months ago.
But it was much more in like an interactive nature where, you know, somebody would be working within an ID and then using like AI augmented like auto completion to round out kind of like the queries of the building or some of the analysis code that they're writing. That, I think, has largely gone away.
Yeah.
Let me pause there for a second if you have any questions before I move on to anything else.

![](data:image/png;base64...) **Tyler Richards** 9:55
No, I mean, I am curious to hear just like a very brief kind of explanation of the two.
Hu.
buckets. So you mentioned the three, kind of like the three types of things that are being automated. You mentioned analytical. Is coding to the second? Is that kind of what you were getting at? I'm just curious what those other two buckets are, but I do think I'll probably want to, if analytical is where there's the most automation, that might be where we want to focus our time.

![](data:image/png;base64...) **dmitry** 10:11
Yeah.
Yeah, let's let me come back to like what those buckets are, but like coding is very much automated, like I think much more so. So, the my emphasis on it on like analytical and applied workflows is just coming from like my frame of reference, where that that is what I'm like best positioned to speak to. I think, by and large, like a lot of...

![](data:image/png;base64...) **Tyler Richards** 10:33
Yeah.
Right.

![](data:image/png;base64...) **dmitry** 10:45
Like, there's very little coding by hand at this point, and I think that's been that's like increasingly true every single day.

![](data:image/png;base64...) **Tyler Richards** 10:56
Okay, yeah, that makes sense. So yeah, then maybe you just, we'll briefly cover those other two buckets. And then I think unless there's something more advanced within one of the second or third bucket, I do want to focus in on like one specific workflow and what it looks like so we can kind of walk through that end to end.

![](data:image/png;base64...) **dmitry** 11:14
Okay, yeah, it sounds good. So, but Tyler, where I was going is that, like, is it trying to separate kind of like the nature of like pure analytical work versus something that's like a little bit more applied, which is where I think like there's much more open space, I think a lot more exploration in the current moment. And the point I'm trying to make is I think the
By and large, the analytical components feel solved, and at this point, like, it's just a question of, like, continuing to improve the underlying, like, context repositories that people are building that are kind of kept fresh and continuously improving, and in doing so, like, we...
Have hit like pretty good accuracy on like how well the data retrieval stuff works. The applied problems that I think are a little bit more interesting, right? So, there's this is where you move from what is essentially just like...
trying to get the data and that simple interpretation of data, it's actually doing something with it. So this kind of represents more of like the other parts of the classic data science workflow where you're more into.
inference and modeling and even like developing and prototyping systems. And so this is where certainly people are starting to benefit from capabilities of AI that are like scale complementary.
if you kind of follow my drift. By that I mean we have individuals who are already in principle like quite strong technically, but they're able to work with AI in a way that allows them to kind of like brainstorm together, to use AI as a
complementary like critique. For example, like you maybe have some ideas about how to approach a modeling problem. And for any given problem, there's a lot of different ways of approaching it, right? And so
You may have a background in some statistical models, you may not have a universal comprehension, but because you know the right questions to ask, you're able to kind of get higher quality, higher quality like feedback and engagement support from the AI models that you're working with. That I think has been like a big finding for us is that like,
It's never sufficient to just ask a model how to do it without giving it like sufficient level of not just like prompting, but also like pushing it into particular like niche directions. So especially if you're working on more applied work that does presume, I think, a higher baseline of the operator skill level.
And another interesting area that I've seen in the applied work is more of these.
more hands-off workflows that are like multi-step in nature and people thinking about how to build
These research pipelines, essentially, these are like multi-step, multi-agent processes that are trying to...
How do I put this?
What they're trying to do is capture.
the kind of decisions and the kind of steps that a human researcher would take and try and replicate that. And then you do that in order to not only just like automate and free up time, but also to get the benefits of like being able to do some of these things in parallel, right? Like what if you could try the same research approach multiple times?
multiple times in parallel, see which ideas are more likely to work. And so this is the kind of thing I think is a lot more nascent right now. I think this is much further away from like established tooling. Like I think if you look around, there's a huge suite of like solutions for the automated analytics part.
But I think the applied research work is not nearly as solved.
I think there's something specific implementations that I think we can come back to. Let me let me pause here again, can I take stock?

![](data:image/png;base64...) **Tyler Richards** 15:26
Yeah, I mean, this is.
This, this is like helpful and interesting, and so I think I do wanna...
I don't want to spend too much time talking about like all of the different areas, because like I mentioned before, I think getting into one specific workflow and also talking about, I do want to dig deeper on a couple of the things that you had mentioned before, like people developing their own workflows, some of this like context repositories, like all that's interesting. So, but I think

![](data:image/png;base64...) **dmitry** 15:41
Yeah.
Yes.
Mhm.

![](data:image/png;base64...) **Tyler Richards** 15:56
Um...
Maybe let's just go ahead. Well, I guess first I do want to give you a quick moment to try to mention what that third bucket was, just so I actually have that. And then we can dive into one of the workflows. So you mentioned analytical and applied work, right?

![](data:image/png;base64...) **dmitry** 16:11
Yeah, basically the third buck is, is like, we kind of glossed over it, that was along the lines of like, just like the pure aspect of actually like writing code. So I think that of the three is probably the most, like the one that's most solved right now.

![](data:image/png;base64...) **Tyler Richards** 16:20
Right, okay, got it.
Okay, so why don't we now talk about a specific workflow? So is there...

![](data:image/png;base64...) **dmitry** 16:30
Yeah.

![](data:image/png;base64...) **Tyler Richards** 16:31
Is there a specific workflow that you think would be good to talk through where we can like see what actually triggers this workflow? What are the main steps in it? Where does AI, like where is AI involved? Where are humans involved? How do handoffs work? What is the context that needs access to? Like all of that. And I'll ask all the follow-up questions. So if you could just kind of briefly

![](data:image/png;base64...) **dmitry** 16:40
Yes.
Yeah.

![](data:image/png;base64...) **Tyler Richards** 16:52
Tell me about what the what you think would be a good workflow that we could talk about.

![](data:image/png;base64...) **dmitry** 16:55
Cool.
Yeah, let's come back to the analytical stuff. It's a little bit more streamlined. So let me describe it from maybe it's like two different point of views. So one would be from the point of view of like myself or somebody in my team, and then another one would be from somebody who's a beneficiary of this who's...
maybe like an external stakeholder.
like internal within company, but external to the team. So I'll start with the latter. So a good example would be, let's suppose you take a product manager. A product manager will have a lot of empirical questions. You know, suppose they're working on a...
Product idea, product brief.
Not unusual for them to want to be able to.
baseline whatever it is that they're suggesting with like various quantitative figures, do some kind of estimations, some kind of sizings if you will. So I think typically a product manager would have to be reliant on somebody with familiarity and access to the data in order to support this.
This creates traditionally some bandwidth and resource constraints, some challenges to prioritization, and forces a dependency on having like the availability of that empirical resource, whether that's like a data scientist, an analyst, or some, or basically anybody else who can support them on that.
And so this is one of the things that the tooling that we use has certainly mitigated. And so the tooling that they have access to at our company is a mixture of...
On one hand, there are some proprietary tools that we are have been experimenting with, smaller companies who whose specific like dedicated solutions to them is essentially doing like building and developing these company-specific context layers and doing more
Of.
AI that's oriented around automating like SQL and data retrieval, and then providing it via like a more user-friendly front-end tool.
That is fairly widely used. The way it works is people have essentially like an interface that they log into. That interface, they can ask questions.
In natural language, they...
Questions in natural language are mapped against what that system has built, this understanding of our data structures, the annotations of our tables, and then...
translates the questions into queries, kind of work against that. It generates results, the results are given back to the user. Initially, there was a lot of errors in this, and so the...
There was a dedicated effort to actually include the relevant subject matter experts on the data in all these threads. So the threads are kind of something public in the sense that like the person who's asking the question can tag particular individuals, they'll get a notification and they'll participate in that discussion with both the
the AI model that's generating results and the person who's asking the question. And so over several months of iteration and continuing to kind of improve the background context in which it is based on and fine-tuning with FDs from the company that's working on that tool.
and our own investment of time, the tool has gone actually like fairly accurate for a number of tasks. It can do not only just like pure data retrieval, but also several steps of like data analysis beyond that. So that is 1 tool that is widely used.

![](data:image/png;base64...) **Tyler Richards** 20:49
Okay, yeah, that that sounds that's actually really interesting, and I think maybe I want to dig a little bit deeper on on what you mentioned there, so...

![](data:image/png;base64...) **dmitry** 20:49
Uh, at.
Yeah.
Yeah.

![](data:image/png;base64...) **Tyler Richards** 21:01
All right.
So this workflow, in this example, Product Manager already has some sort of product idea, but needs to do some sort of analysis, empirical testing, whatever it is.

![](data:image/png;base64...) **dmitry** 21:12
Jake.
The.
Exactly, yeah.

![](data:image/png;base64...) **Tyler Richards** 21:18
So then you have this tool that he goes in and uses that kind of automates what, like a data analyst or some other.
Like data scientists or something would have would have otherwise done, so.

![](data:image/png;base64...) **dmitry** 21:29
Yes.
Oh.
Yes.

![](data:image/png;base64...) **Tyler Richards** 21:36
Okay.
You mentioned.

![](data:image/png;base64...) **dmitry** 21:39
Yes.

![](data:image/png;base64...) **Tyler Richards** 21:40
I know you mentioned a few things in there with what this tool has access to.
Well, maybe let me take a step back, actually, because I do think I want to understand more than just the tool, but the full workflow, so...
And tell me if you don't have full insight into all of this, but...

![](data:image/png;base64...) **dmitry** 22:00
Yes.
Yeah.

![](data:image/png;base64...) **Tyler Richards** 22:03
When let's say that it's the you mentioned product idea.
Could you walk me through?
what that full product idea workflow would look like from like when the how the idea is formulated to what the like final output is the product is built or not.

![](data:image/png;base64...) **dmitry** 22:26
Yeah.

![](data:image/png;base64...) **Tyler Richards** 22:26
And just like very high levels.

![](data:image/png;base64...) **dmitry** 22:28
Yeah, so basically, if you separate out like the AI component here, nothing has materially changed, right? You still have the same kind of like product development lifecycle, which, you know, in some parts of our business, it's going to be more
like quantitative in nature and other parts is going to be a little bit more qualitative and a little bit more based off of like a product vision. The area of the business that I work on is maybe a little bit more on the quantitative product side. So any idea or any like any potential like direction for a product strategy needs to be empirical.
be backed, like it needs to have like some sense of...
why this is relevant, why we should spend time working on this, and what are some of the data points that you do have on hand, or you're able to kind of acquire.
in a reasonable amount of effort that support the case to build and prioritize this. Now, the kind of evidence that you would look for is you have to make some trade-offs, right? Like you're certainly making some assumptions, you're making some cuts on the fidelity. But at the end of the day, having that
like empirical backing behind the idea is what allows people to kind of rally behind a project and be able to prioritize it. That's like your standard, you know, product sizing and prioritization exercise.

![](data:image/png;base64...) **Tyler Richards** 23:52
Okay.
Yeah, okay, that makes sense. So I know you had mentioned 2 perspectives on this. So is the perspective of your team, so not the external stakeholder like a product manager, but from the perspective of your team, has that workflow?

![](data:image/png;base64...) **dmitry** 24:08
Yeah.
Shin.

![](data:image/png;base64...) **Tyler Richards** 24:12
changed it more than just like using this one tool.

![](data:image/png;base64...) **dmitry** 24:13
Yeah.
Yeah, definitely, because it's changing in two different ways, in a couple different ways. So one is like how this tool and the changes in the expectations, you know, like what a product lifecycle looks like. I think it has had some effect on us, like what our relative roles and responsibilities are in this overall workflow. Let me talk about that first and then I'll talk about the more.
like how we approach a AI augmented analytical workflow on our side. So coming back to the first part, you know, if you had that traditional life cycle, essentially like a data scientist or an analyst or anybody who's able to kind of get that data for the product manager,
is a little bit of a gatekeeper and their ability to contribute is bound by time.
With the AI tooling like this, the, like, basically the nature of what the analyst is doing has changed, rather than spending your time, you know, pulling that data, doing that analysis, that time has shifted to doing more verification, right? Verification.

![](data:image/png;base64...) **Tyler Richards** 25:20
Yes.
Yes.

![](data:image/png;base64...) **dmitry** 25:24
Almost, you can almost call call something like data labeling, because essentially what you do is you're verifying whether the models are building the right queries, using the right data sets, coming up with the right, you know, right solutions. And so, especially in the more like the developmental phase of these workflows,
Like, that's where a lot of our time went, which was...
It's not fun, I think, but it's a valuable, valuable investment. I think the investments do pay off in the extent that, like, I would say, I don't have a stat on this, but the proportion of time that we spend, like, verifying

![](data:image/png;base64...) **Tyler Richards** 25:52
Shin.

![](data:image/png;base64...) **dmitry** 26:07
The work that, that like a non-technical person is doing has shrunk significantly, and so...
Giving more independence to someone like a product manager or basically anybody, anybody who needs access to data and needs to be able to do stuff with it. I think I do see the value in freeing up some of our time and allowing them to pursue more things, pursue like the idea generator more things in parallel.
But it certainly required an investment, I'd say.
I'm speculating here, but I think one of the reasons why collectively across, you know, the industry, there hasn't been as much of A
externally visible ramp up in productivity is I think a lot of companies have spent a lot of time in the last six months working on what are essentially like data labeling problems and building out the kind of context and the architecture that they need in order for these systems to work and work reliably. And I don't
Yeah, again, I can't can't speak for.
everyone. I certainly probably shouldn't even speak for us collectively, but I think that's something that will start to pay off and it just requires the investment of time.

![](data:image/png;base64...) **Tyler Richards** 27:28
Got it. OK, so you mentioned, so I wanna...

![](data:image/png;base64...) **dmitry** 27:30
Oh.

![](data:image/png;base64...) **Tyler Richards** 27:33
I think what would be most helpful is to talk about some of the...
interesting things that you mentioned throughout that description, some of the previous ones. There are like a few things that I want to dig a little bit deeper on.
Um...
Sorry, let me. So, one of the things that you mentioned earlier was that...
You know, using Clog Code or Codex, whatever tool your teams are using.
People are kind of developing their own workflows and...
You mentioned scaling it up through network effects, so...
I'm curious if...
So like are most of the kind of automation solutions and new workflows that you're developing coming from the bottom up as opposed to top down efforts? And if so, like how is there a formal process for sharing what people are working on and using or is there kind of like a standard way to scale that up or is it just kind of

![](data:image/png;base64...) **dmitry** 28:27
Yeah.

![](data:image/png;base64...) **Tyler Richards** 28:40
happening organically.

![](data:image/png;base64...) **dmitry** 28:43
Yeah, great question. Obviously, maybe I'll ask you for advice you've talked to a lot of people, but...

![](data:image/png;base64...) **Tyler Richards** 28:49
Hu.

![](data:image/png;base64...) **dmitry** 28:51
I think I think it's a mix. I would say, like, wherever there is introduction of like an external tool, that tends to be a little bit more top-down. Like, it's not unusual for like an external tool to materialize because you know somebody is pitching somebody in leadership.
or an exact team and they are bought in and they're like...
Let's invest in this, let's make time, set aside time for us to actually like work with this and improve it and and and check it out. I think it it makes sense to try to look at different things, but in terms of...
workflows that are built specifically on like Cloud Code on Codex, that tends to be much more bottoms up. And it tends to be much more bottoms up because we have been fairly, I think, encouraging and generous with like token budgets, for example, like we have.
Been like very aggressive in promoting people to use AI tooling. We have for quite a while. Our company is actually relatively and has been relatively AI forward for a while. We spent a lot of 2025 getting increasingly familiar with tooling. And so when.
We had that big cloud code.
Cambrian explosion of, you know, use cases and applications from like January, February of this year. Everyone is experimenting, everyone's trying out different things at work. Everyone's very excited to share the things that they're working on. I think that will combination both genuine and excitement. Also, I think everyone kind of realizes that it's like...
good for your career to be seen as an AI advocate, champion, promoter.
What is missing for us and something that right now is actually measuring which of these different workflows are more productive, which ones are more effective at accomplishing different tasks. Up until now, the only thing that's for you, a measurement of that performance.
is kind of like a marketplace of ideas, right? Like people, people take the workflows, the skills that they built, they put them into like a local plugin repo marketplace, make it available to other people, and then...
Other people are free to take take those on, implement them in their own workflows and systems, and so if you have something that is like quite effective, more people will implement it, but...
What is missing, I think this is a genuine challenge for us, is actually measuring, evaluating, and thinking about like...
performance optimization, not just purely from a outcome perspective, but also like efficiency of input to output perspective. I think that's probably the next phase of how we think about our workflows.

![](data:image/png;base64...) **Tyler Richards** 31:50
So, do you?

![](data:image/png;base64...) **dmitry** 31:52
So.

![](data:image/png;base64...) **Tyler Richards** 31:52
Do you ever take, like, let's say that someone developed this workflow, it was, it's getting pretty widely adopted through that, you know, marketplace plugin repo you mentioned. Do you ever kind of...

![](data:image/png;base64...) **dmitry** 32:03
Hu.

![](data:image/png;base64...) **Tyler Richards** 32:08
Like, does your team ever work to kind of standardize something like this, like beyond just the person who initially built it, kind of revised, like updating it?

![](data:image/png;base64...) **dmitry** 32:12
I.
Look.
Yeah, it's a good question, right? I think that's certainly true up to a point. One of the tensions that we have
I would say as a group is that there's some things that make sense to standardize at a company level. There's some things that make sense to standardize at a much smaller level than that, like whether that is like a functional organization, a specific team, or not even that. And so
I think there's generally a desire, certainly among leadership, to always try and standardize things, because I think like the premise, the premise makes sense, right? Like the more you standardize workflows, the more you have positive network effects, the more everyone kind of benefits from shared context, shared tooling, shared approaches.
But it's not always actually true in practice. And so in some cases, you need to figure out what is the right gradient, like what's the right boundary at which you do want to have that standardization. So for example, like the domain that I work on, that my team works on, is meaningfully different than
maybe say like a different domain, like somebody who's working on like ads or growth. And so the question is like, does...
Standardization of infrastructure makes sense. Yes. The standardization of a particular workflow makes sense. Not always.
And so that, I think, is still a little bit of an open question, one that we actively spend time thinking about, like, what is the right level of centralization of shared context, of runbooks, of skills.
For me, I'm relatively opinionated on this internally, and so I don't want to standardize everything that we do with AI, and I'm more interested in generalizing workflows that make sense for a particular team.
And in doing so, it allows the people who are the experts in that workflow to continuously like tweak it, still retain some ownership of what that workflow looks like, and to think very carefully about like, is it giving you the right outputs?

![](data:image/png;base64...) **Tyler Richards** 34:38
Okay, so...
I'd like to know a little bit more about the standardized infrastructure. You mentioned context a few times. Is there a standardized way that you manage context for AI tooling across

![](data:image/png;base64...) **dmitry** 34:46
Yes.

![](data:image/png;base64...) **Tyler Richards** 35:01
The organizations.

![](data:image/png;base64...) **dmitry** 35:05
I would say semi-standardized. We would like to standardize things, but...
Like I said, you still have some of this tension, and in terms like what is the right level of standardization, and because...
Because teams or like different parts of a larger organization might have like different ways of working, they might have different.
prioritizations in terms of like how they approach, like where AI comes in and supports the work that they do. Being very explicit about standards can...
Hu?
It.
Let me rephrase that.
Because what works for one team isn't always going to be what works for another team, finding a way to kind of solve for that is a combination of a technical challenge, but it's also an organizational challenge. And
While you are in this transition period, kind of like where we are, I would maybe call it a little bit of a ball conversation in the sense that, like, some efforts are more supported by the company, whereas other teams are building up their own collections, their own repositories, and like context can be...
in many different ways, right? It can be as simple as like having a GitHub repo of a bunch of markdown files that describe what you're doing. And for like a frontier model, that's actually like super effective.
On the other hand, it can be more of like a dedicated infrastructure layer that is actually trying to...
Pull in all of the metadata that you might have around different tables, different data sets, different user entities, different...
Components, and those would would typically.
That is Jennifer of Harbors.
I think if an organization has like a dedicated, centralized, like data engineering, data infrastructure team, those teams are likely working on their own efforts with a view to try and create like standardized, widely available context infrastructure for other people to work on. They very likely have a mandate
To do so, and are given objectives to build that out, but...
People who are working in places where they have to, they may not have the same level of centralized support and are working on problems where they have the freedom and capacity to kind of build out their own tooling, they have, and they will. And so I think organizationally, we're certainly at a point where we have to reconcile this.
Do you do you mandate one set of, like, basically, do you mandate centralization? Do you force everyone to use a particular set of tools, a particular set of like repositories for context, a particular set of like metadata infrastructure? You basically have to kind of force everyone to do this.
And there is going to be like a growing pain there. People will push back. But you have to believe that like the juice is worth the squeeze and then like what you're going to get out of it is like a place where basically everybody's working on this on the shared context.

![](data:image/png;base64...) **Tyler Richards** 38:28
So...

![](data:image/png;base64...) **dmitry** 38:28
And I wouldn't say that we're there yet.

![](data:image/png;base64...) **Tyler Richards** 38:31
Okay, yeah, so right now it's kind of like different teams have their own approach to this. You mentioned like GitHub repo markdowns, is that what your team is doing?

![](data:image/png;base64...) **dmitry** 38:32
Oh
That is more so like what our teams are working with, because to the point I was making earlier, like we have had...
wider take up of people just going straight to like CLI tools like Cloud Code and like experimenting with their own workflows and just being able to kind of point it at a get repo that has the relevant context for you is.
really effective with the quality of the models that we have access to.
So that then also allows people to kind of build more bespoke solutions. Like maybe you want to have.
some kind of like automated data retrieval tool for yourself. And it's not as well calibrated for every general case, but it is really well calibrated for the subset of data and the subset of problems that you and your team might be working on. And this is, to my previous point, this is kind of like where that tension comes from. This is people have
really quickly dialed in like a personal workflow.
But that may not be like the right thing for the organization.

![](data:image/png;base64...) **Tyler Richards** 39:55
All right. Okay, no, that all makes sense. So I want to shift back to talking about people a little bit. So I know you had mentioned you're encouraging people to adopt some of these tools, and there's an advantage to being like an AI champion.

![](data:image/png;base64...) **dmitry** 40:05
No.
Hu.

![](data:image/png;base64...) **Tyler Richards** 40:15
Did.
Do you incorporate anything like AI usage or impact of AI into your performance management processes?

![](data:image/png;base64...) **dmitry** 40:23
Yes.
Yes.

![](data:image/png;base64...) **Tyler Richards** 40:33
How so?

![](data:image/png;base64...) **dmitry** 40:35
Yeah. Also, I think a little bit of like a evolving art form. We, even I think as early as 2025, it's hilarious saying that it's literally half a year ago.
Even at that point, I think.
Being an early adopter was, I think, valued positively. It wasn't held against you, I think, if people were a little bit further behind or like non-adopters. But I think certainly people who were not willing to engage with technology, I think, have had a little bit more of a difficult time. I think that has been a factor in like how they're...
evaluated and perceived. Now you're at a different equilibrium in the sense that basically everyone is expected to be using AI tooling. I think you're expected to be thinking about how it complements the work that you're doing.
It's probably unusual.
to see somebody who's still working primarily, like who's maybe still in like some of the pre-AI workflows. I think the extent to which you use AI tooling is going to vary and certainly like a lot of people are in a create a lot of slop phase. I don't think we have the right
evaluations yet for like how well you use AI. So the evaluation is more like, are you using AI? We also, we do keep track of spend and usage. We have not actively chosen to use that information yet, but it is available to us.
I think if somebody is not using AI tooling at all, it generates a conversation. I think it generates some questions. I think similarly people who are using it extensively, you may ask them, like, okay, like, this is, you know, really interesting, like, you're spending a lot of money, like, what are you doing with this? Like...
Because if it's something actually meaningfully productive and interesting, we want to advocate for that. We want to make space for it. We want to make sure that people kind of know more about it.
But I think we've been deliberate in encouraging learning and encouraging experimentation. So I think we've actively chosen not to limit people's access to tooling, not to necessarily limit budgets or anything like that. I think we're not at that point yet.
Um...
I would say that it's created some...
not always ideal incentives for people. To the point I was making, I think a lot of people have created like kind of useless things with AI for the sake of creating it. But I think maybe that's just okay. I think that's probably just the price you pay to get people more comfortable with the tools.
Yeah.

![](data:image/png;base64...) **Tyler Richards** 43:31
Okay.

![](data:image/png;base64...) **dmitry** 43:31
Where we're not yet, but I think we will be, is...
The the efficacy right, the ROI, like, are you?
It's like insufficient to just be like using AI, like are using AI to actually become more materially productive in a way that like leads to measurable impact.

![](data:image/png;base64...) **Tyler Richards** 43:50
But how do you measure that?

![](data:image/png;base64...) **dmitry** 43:52
Well, I think that would be more along the traditional lines of how we would measure impact anyways. Like, are you building, are you coming up with good ideas that lead to measurable business outcomes? Are you building things that lead to measurable business outcomes? You know, you're still doing experimentation, you're still doing all the same, like...

![](data:image/png;base64...) **Tyler Richards** 43:59
Scott.

![](data:image/png;base64...) **dmitry** 44:11
Ways of evaluation that you're doing before, not just on people, but also like on the things that you're coming up with, things that you're building.
So that's all still there, but I think the expectations, like how much you're able to produce, how many things you're working on concurrently, how long it takes for you to work on things, those keep subtly shifting. And if you're not effectively...
taking advantage of the AI tooling to become more productive in that way, I think you will fall a little bit behind. I think you will be tangible. I think that's basically the way in which it starts to cleave open to performance evaluation.

![](data:image/png;base64...) **Tyler Richards** 44:57
Got it. Okay.

![](data:image/png;base64...) **dmitry** 44:59
Yes.

![](data:image/png;base64...) **Tyler Richards** 44:59
So...

![](data:image/png;base64...) **dmitry** 45:02
Yes.

![](data:image/png;base64...) **Tyler Richards** 45:02
I do want to go back to some of the...
I know you said that a lot of the AI use and workflows are not standardized, but I am curious, do you have any...

![](data:image/png;base64...) **dmitry** 45:09
Show that.

![](data:image/png;base64...) **Tyler Richards** 45:17
The.
Like, are there any any workflows that have?
like top-down built agents that are automating significant parts of the workflow where there's any kind of like AI orchestration happening.

![](data:image/png;base64...) **dmitry** 45:23
And.

![](data:image/png;base64...) **Tyler Richards** 45:36
It's okay if not, but like I just, it's interesting to hear about that stuff where people are working on it.

![](data:image/png;base64...) **dmitry** 45:36
The yeah.
Definitely. I'm approaching this from my perspective on the data science side. I think on the engineering side, this is a much more robust infrastructure. There's a lot more of this agentic tooling, you know, automated.

![](data:image/png;base64...) **Tyler Richards** 45:48
Hmm, okay.

![](data:image/png;base64...) **dmitry** 45:56
Like, basically, like bots that are evaluating every single pull request that people make, giving feedback, making recommendations and suggested changes. There's a lot of different kinds of these agentic processes that run for, you know, things like incidents and for...
Passively going through some of the code base as well, but I I don't feel as qualified or as comfortable to speak about like the nature of those things. On the analytics side, it is simply because I think code is always like pure like...

![](data:image/png;base64...) **Tyler Richards** 46:26
Yeah, no, that's fine.

![](data:image/png;base64...) **dmitry** 46:36
Software engineering, I think it is a more solvable problem in the sense that like the agents are really good at doing things, doing tasks that are immediately verifiable and code is immediately verifiable and has a lot of like built-in self-evaluation in it. The analytics workflows are more open-ended in that sense, so it becomes a little more difficult.
But the tool that I was describing that, for example, like the non-technical stakeholders can use, that is, in essence, like an agentic workflow, because it's automating.
It's automating the translation of what the user is trying to do into query building and able to kind of string those things together and run multiple queries, go a step or two beyond into building an analysis, building maybe like...
its own automatic dashboard. It is essentially able to do all of that. And I think that kind of falls into the category of an agentic workflow at this point.
because it's not just doing that.
Translation as a model, it is invoking tools, it is invoking agents, and it is accomplishing both.

![](data:image/png;base64...) **Tyler Richards** 47:53
Okay, yeah, well maybe let's just spend our last 11 minutes here talking about that, because I actually did want to come back to that. So you mentioned that it's, you know, invoking agents, tools. So what would you, how would you define like the isolated agents that exist within this tool?

![](data:image/png;base64...) **dmitry** 48:03
Yes.

![](data:image/png;base64...) **Tyler Richards** 48:11
Like what are they responsible for and how do they interact with one another?

![](data:image/png;base64...) **dmitry** 48:30
I was thinking, I'm thinking about how to relay this.

![](data:image/png;base64...) **Tyler Richards** 48:33
Yeah, no, take your time.

![](data:image/png;base64...) **dmitry** 48:45
Yeah.
I don't think I have a good technical answer for you on this one, Tyler, because I'm like, I'm...

![](data:image/png;base64...) **Tyler Richards** 48:50
He.

![](data:image/png;base64...) **dmitry** 48:54
I'm not actively using this tool because, like I said, so I'm more in the camp of like, let's build our own workflows that are specific to the kind of work that we do. I can speak in more detail about like the way that we use agents, like within my team. These are more bespoke workflows, so they're not necessarily standardized, but we are trying to
increase the extent to which we do standardize them. So that things are basically the way we use these multi-agent approaches is to
compartmentalize the different stages of like an analytical workflow, right? So if you take a step back and actually map the different tasks and the different responsibilities that like a data scientist would have when they're approaching an analytical workflow, those map fairly well to different, to like ways
for an agent to do things sequentially, the kind of tools and the kind of expectations that they take on at different stages, as well as opportunities to use like multiple agents concurrently or adversarially. And those I think are like really interesting workflow problems that we're thinking about right now.
What that could look like in practice is essentially you would have...
Suppose you have a...
research question that you want to look into. You may invoke.
an agent that has access to specific skills about how to think about a given domain. So like a skill.
has a bunch of metadata in it. And so an agent.
that has access to a particular skill is doing a little bit of an initial semantic pass on what is the user trying to ask about and trying to map it to the right skill, or a user can directly invoke a particular skill. That skill would have essentially kind of like a mapping of
how to think about a problem, how to point it to the right data, how to think about common pitfalls and issues. And you would start with that and then essentially kind of go from there. So there's value in not being overly prescriptive. Like there's value in being like very prescriptive about certain things with agents and not being overly prescriptive than others. It kind of depends on like
the nature of the work. If you want like a super precise and deterministic answer, I think you want to be also like precise and deterministic in the way that the agent is using, or like the inside the skills that the agent is referencing. But sometimes you actually want to be a little bit more open-ended. And this matters, I think, more for
the kind of applied work that we do, where you want the agent to have access to the data that it believes is relevant, to answer the question.
And it has access to the right tools, the right environments to actually be able to build the right code, test models, look at what it's doing, self-evaluate, like, is it on the right path? Is it doing something interesting? And then turn that around and then work on other phases like

![](data:image/png;base64...) **Tyler Richards** 51:49
Okay.

![](data:image/png;base64...) **dmitry** 52:10
evaluating its hypothesis, stress testing the results it's generating. Do they make sense? Do they seem credible? And so all of that is a combination of some handoff to the model, letting it do its own thing, but also kind of reinforcing best practices, creating
Basically, tools that allow an agent to be a little bit more careful, a little bit more aware of when it is making mistakes, so you don't waste a bunch of time, because the more complex the analytical workflow is, the harder it becomes to actually figure out, is it wrong?

![](data:image/png;base64...) **Tyler Richards** 52:50
OK, so.

![](data:image/png;base64...) **dmitry** 52:50
Shin.

![](data:image/png;base64...) **Tyler Richards** 52:55
It sounds to me like the way that this these kind of multi-agent approaches work within your team is effectively you have like a bunch of kind of specialized agents that your team will call at different points in their workflow to.

![](data:image/png;base64...) **dmitry** 53:12
Mm-hmm.

![](data:image/png;base64...) **Tyler Richards** 53:13
execute different tasks, but not, there is no kind of like chain where agent X hands off to agent Y and then agent Z reviews agent Y output or something like that.

![](data:image/png;base64...) **dmitry** 53:23
Uhh...
There is experimentally, so, so when I talk about like the more bespoke workflows, this is the kind of thing people are able to like actually try out, and it's also the kind of thing I think is harder to build out the infrastructure to like centralize. So, like in the experimental workflows, yeah, very much I've seen this, right? Essentially what I was saying about like...

![](data:image/png;base64...) **Tyler Richards** 53:27
Okay.

![](data:image/png;base64...) **dmitry** 53:45
how you think about the multiple stages of what a data scientist would be doing, that maps to different agents and different handoff points. In particular, some of the more interesting places are where people will use
agents in parallel to come up with ideas and also review like the ideas and the methods. You know, one common thing that I've seen people do is like, suppose you're working with Claude on a problem.
you will have a kind of spec out an approach or even implement an entire approach. It's a relatively simple thing to then take whatever it's done and either directly ask that agent to hand off to a competing model, like a codex,
and have it either like re-implemented, have it stress test what it's created. And so figuring out like the right ways for those agents to communicate, that's an open problem. It's one that I've personally been spending a lot of time kind of thinking about it. And it
It's really like quite interesting, right? Like, what is the what is the right ways for these agents to hand off data to each other, hand off context, hand off like different checkpoints? Like, what are the right specific workflows? Like, at what point do you want to have?
Do you want to have like a review early on the process? Do you want to have it in the end of the process? Do you want to have like multiple stages of this kind of like back and forth adversarial stuff? And again, these are the kind of things where I think we're able to experiment because we're not concerned about token budgets and all of this will very much blow it up. I think as we get more dialed in, I think we're going to be more deliberate about like how this works.

![](data:image/png;base64...) **Tyler Richards** 55:32
OK, so.

![](data:image/png;base64...) **dmitry** 55:35
I think.

![](data:image/png;base64...) **Tyler Richards** 55:35
Because we're down to three minutes, I'm just gonna combine my last two questions into one, and you can answer whatever you can in three minutes, but...
So, obviously, these agents that you're referring to will need access to the context layer, which, as of right now, sounds like it's the GitHub repo markdown files. They also presumably need access to data. So, question one is, what is the...

![](data:image/png;base64...) **dmitry** 55:53
Mhm.

![](data:image/png;base64...) **Tyler Richards** 56:03
data information beyond the GitHub repo that they need access to. And then question two is for the context itself, how do you go about...
updating it to ensure that these agents are using the most relevant and recent context and are learning from feedback.

![](data:image/png;base64...) **dmitry** 56:28
Mhm.

![](data:image/png;base64...) **Tyler Richards** 56:32
throughout the process.

![](data:image/png;base64...) **dmitry** 56:34
Good question. On the data side, so the agents that people are working with will, there'll be like ways to connect to whatever the data repository that the person is using. So for, like we use multiple different like data providers, data lakes, the majority of people will use something like Snowflake.
So let's use Snowflake as an example. You would have like a few different Snowflake connectors.
an MCP or more of like a CLI-based connection, depending on like the workflow. And so simply giving the agents the access to that is a start, and they can do quite a lot on their own, but it's inefficient. And so this is where pointing them to the right types of, to the basically the right locations of the data is helpful. This is where the skills are helpful.
This is also where giving an agent like an MCP to like an internal metadata repository, which you would have had even pre-AI, just because like a company like ours would have a whole bunch of different data sources. So even for like users, it's a lot easier if you're able to kind of navigate that easily.
And so giving an agent access to that then allows them to be able to discover the data that they need.
So that's kind of the data part. The context staleness, I think, is a really like timely question. You're right, like if you're using, if you're relying more on like static files and markdown in GitHub, there's not a great workflow there yet. We are experimenting with things like.
They say.
Things that are that are tracking context adrift, they're basically like trigger processes that compare, like, is the context in one place starting to get misaligned with context in another place? But then, if you contrast that with like the more built out tooling that's coming, that's like more centralized, more top down.
or even like the third party tool that I was describing earlier. In that one, there's much more of an immediate feedback cycle, like where it will show the context that I was using, it will prompt the user to say, hey, does this look right? And if it doesn't, then it triggers like some updating loop. For something that's static based, like markdown files in Git,
I think we're trying to figure out what the solution is for that.

![](data:image/png;base64...) **Tyler Richards** 59:01
Okay, so the centralized context that you have does have a more formalized process for like updating and keeping fresh.

![](data:image/png;base64...) **dmitry** 59:12
It's more formalized, it's not perfect by any stretch though, right? Like, it has to, like, the user has to know, like, basically the user already has to be an expert in order to flag that the context is stale. So, like, I think there's still an information gap there, like, and so the right ways of doing this are more like...

![](data:image/png;base64...) **Tyler Richards** 59:16
Okay.
Hu.

![](data:image/png;base64...) **dmitry** 59:34
I, I don't know, to be honest. If I knew, maybe I'd sell that to some company.

![](data:image/png;base64...) **Tyler Richards** 59:36
Yeah.
And last quick question, does that for any kind of centralized context like that, are there like dedicated owners that are responsible for ensuring that it stays accurate and relevant?
Or is it kind of decentralized?

![](data:image/png;base64...) **dmitry** 59:54
Yeah, it has traditionally been decentralized. We're actually trying to implement that exact thing right now. So traditionally, like, you know, from a data science perspective, you would have people who are like metric owners. We're kind of extending that logic to context ownership. And so these would be the people who have, who are expected to be.
to help maintain the freshness of the context, as well as to approve any changes that people want to propose making to it. And so it kind of reflects their subject matter expertise.

![](data:image/png;base64...) **Tyler Richards** 1:00:25
And sorry, one last, I'll try to keep this very quick. How do they, is there, as you do that, do you have an idea for like what that would actually look like? Like, do they get...
proposed updates on a daily basis or like are they like how do they know what to update and how do they do it?

![](data:image/png;base64...) **dmitry** 1:00:43
No, we don't have an answer to that. I don't think we know like what the right timeline or cadence is. You also don't want us to become people's full-time job.

![](data:image/png;base64...) **Tyler Richards** 1:00:44
Okay.
Got it.
Yeah.
Yeah, that's fair. Okay, great. Thank you for taking the time to chat with us today. This has been super helpful.
We will send out an email on Monday or Tuesday with your compensation. But if you don't see that by Tuesday evening or you have any questions for me in the meantime or anything, feel free to send me an email. My email address is in the invite. But other than that,
I think we have what we need from you. So thank you again for your time. This has been really helpful.

![](data:image/png;base64...) **dmitry** 1:01:26
Things are.

![](data:image/png;base64...) **Tyler Richards** 1:01:28
Have a good one.

![](data:image/png;base64...) **dmitry** 1:01:29
To go.

![](data:image/png;base64...) **Tyler Richards** stopped transcription