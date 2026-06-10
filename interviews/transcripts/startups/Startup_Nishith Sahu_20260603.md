**hNishith Sahu - Frontier-20260603\_120041-Meeting Transcript**

June 3, 2026, 4:00PM

1h 1m 6s

![](data:image/png;base64...) **Tyler Richards** started transcription

![](data:image/png;base64...) **Tyler Richards** 0:15
Okay, and completely up to you if you want video on or off. It doesn't matter to us. We can either way is fine.

![](data:image/png;base64...) **Nishith Sahu** 0:21
Okay, let me just turn it off then, yeah.

![](data:image/png;base64...) **Tyler Richards** 0:22
Um...
Yeah, so.
Just to give you a brief introduction to us and what we're doing here today, so we are Keystone, a strategy technology and economics firm. We are working on a study to try to understand how companies are using AI to shape their operating models and to create business value.
So we're particularly interested in how AI is actually embedded into workflows, into organizational structures, and into enabling platforms, and what the actual business results are that followed from that.

![](data:image/png;base64...) **Nishith Sahu** 0:55
Yeah.

![](data:image/png;base64...) **Tyler Richards** 1:01
So just as a reminder, everything you share will be completely anonymized, so your identity and your company will be kept confidential.

![](data:image/png;base64...) **Nishith Sahu** 1:08
Thank you.

![](data:image/png;base64...) **Tyler Richards** 1:10
Do you have any questions for me before I jump into mine?

![](data:image/png;base64...) **Nishith Sahu** 1:14
No, please proceed.

![](data:image/png;base64...) **Tyler Richards** 1:15
Okay, great. So just to kick things off, could you briefly describe your role and how it relates to some of the AI-enabled workflows or initiatives within your company?

![](data:image/png;base64...) **Nishith Sahu** 1:25
Sure. So I am the head of CRM platform at Musk. And Musk is a global shipping giant. Almost 15% of the global trade that involves the physical movement of goods happens through Musk. And as part of the global head of the CRM platform, I look into the sales service as well as marketing.
digital platforms, which supports 21,000 internal employees, and the self-service portal, which is used by 1 million users. Now, as part of global shipments, we do get a heavy amount of customer service queries.
either as part of the booking journey or prior to the booking journey. And we have extensively used generative AI to, with human in the loop, to auto resolve some of these cases.

![](data:image/png;base64...) **Tyler Richards** 2:20
Okay, got it.
So...
Related to that.
Is there?
A particular workflow, I know you had mentioned some of the customer service queries that you get. Is there a particular workflow that you have visibility into where you feel like AI has had a...
pretty dramatic impact, not just on the outcomes, but on the way that that workflow looks. Like where roles have changed, where there may be some sort of...
potential like agentic orchestration, where there are automated steps in the process as opposed, kind of as opposed to just individuals using something like generative AI tools to improve their efficiency within that process. Like is there a specific workflow that we can kind of talk through just to make things concrete?
Brass.

![](data:image/png;base64...) **Nishith Sahu** 3:18
Yes, absolutely. So there are two examples I can share. Firstly, in terms of the generative AI, going back to the earlier example that I had mentioned, so Mask receives around 30 million email cases every year. And these cases
could be anywhere around the pre-booking stage. For example, customers would be checking to provide a particular code, or it could be based on the vessel schedule. The expected time of departure, as an example, is the space availability in the vessel. Or it could be during the booking stage. For example, they could be expecting us to book. They could be sending an email with the details.
Of the shipment which they want, and they would want it to be booked, or else they could be asking us to make changes to the booking, or it could be combining multiple bookings, or it could be splitting one shipment into multiple shipments, or it could be post-booking as well. For example, they could be raising a ticket based on invoicing.
query or they could be asking where the shipment is exactly in its entire journey. So it could be any of these fairly complex logistical customer queries that customers could reach out to us and we receive around 30 million of these cases throughout the year. And these are supported essentially.
by 2500 agents who entirely focus on solving these email channel cases. And these are located in six different global centers serving around 130 different countries where our customers are located. Now, the solving of the resolution of these customer cases requires
the CX agents to actually go and check multiple different data sources, multiple different shipment related systems, as well as commercial systems as well. For example, they might have to go to an order management system to understand what is the booking number. They would have to see whether the booking has been correctly done or if they have to edit that particular booking.
that happens in the order management system. If they would like to understand where the shipment is physically, they will have to go to a shipment related system. So there are almost like 15 plus different systems where the CX agents would have to go in order to understand what the resolution should be and then come back.
after that information is obtained to compose the necessary resolution and send it to the customer. So the entire case resolution on an average takes around 7 minutes. Of course, there are some very complex cases which would take much higher, but on an average it takes around 7 minutes. And when we applied the agentic workflow,
It was based on the Azure tech stack with GPT40LLM, and we were able to reduce that down to just one minute with human in the loop.

![](data:image/png;base64...) **Tyler Richards** 6:20
Got it. Okay, so can you walk me through like what actually happens in that workflow? Like from the initial trigger, which I'm assuming is just an email comes in, to like actual resolution and what the output is?

![](data:image/png;base64...) **Nishith Sahu** 6:33
Yes. So the typical architecture that we have built comprises of four layers. It is the first is the presentation layer, which is where our Salesforce Service Cloud is built. That is where the incoming email comes in. It would create a case. We would be having the booking number, the
the customer details and so on. Then next comes the LLM orchestration layer and the entire LLM orchestration layer is built on the Azure tech stack. So it would be, we would be using the API management, Azure API management to make the separate specific API queries depending on the nature of the case.
Then we use LangChain, which actually does the entire workflow, sequencing the different steps. And then there is Cosmos DB, which is used for...
actually identifying or auditing the trail of the different systems which are being changed. And then there is the API vault as well as your API vault, which uses the security details, the credential details of assessing all of these different underlying APIs. After the orchestration layer, we have the data layer where we have the zero data lake.

![](data:image/png;base64...) **Tyler Richards** 7:29
Yes.

![](data:image/png;base64...) **Nishith Sahu** 7:50
which unifies the data from various different applications, from CRM, order management, historical orders are placed over there, as well as quotes and the contracts as well. And then there are the business applications and the shipment applications as well, which...
We use an event-based API to call up all of these applications. And the 4th layer is the reasoning layer, where we use the GPT-40. So we use the Azure OpenAI Services so that it is all the communications, all the interactions that we have with the LLM is quite confidential, and all the confidential, the PII information is all masked before we make the interactions with.
the LLM. So that's the overall architecture. Now, the sequence of, the broad sequence of steps, how it would be happening, would be an incoming email comes in, it creates a case, automatically we would be triggering a case classification, and this is a native ML-based.
module that has been created to identify or classify the case correctly. Because when we onboarded agentic service, we have not enabled it for all different types of cases. We have, let's say, 250 types of cases. Right now we have got around 50 types of cases which is being served. So that first classification happens with the localized ML logic.
And once that ML has been identifies the type of case for which the LLM has already been created, that's when we make the first call with the LLM to understand what is the case intent. And based on the intent, there are those workflow steps which would be defined in our LangChain.
to actually go and trigger a particular system to fetch the necessary information. For example, if it is a shipment related case, it knows to go to the shipment tool and capture the particular status of the shipment, get that information, and then it would send that information back.
to LLM to generate a response. And when that response is generated, it is also grounded with the specific template, because there are different types of templates, response templates that we use to respond back to the customers. So the response generation happens in the LLM, and then that gets sent back to the CX agent who would.
see the response appear in the Service Cloud case management. And if it is absolutely fine, on a click of a button, that email gets sent out to the customer. And if they would like to make certain changes, they can make those changes and send that email back to the customer. After that email has been sent up, then there is another round of orchestration that also happens. For example, if there is certain orders that has to be changed,
or the case has to be closed, all those follow-up cases actions would also be taken automatically through our workflows.

![](data:image/png;base64...) **Tyler Richards** 10:55
Okay, and in this, so...
The.
Human in the loop comes in when the response is sent to the CX agent, right? Is there any...
Is there anything that might escalate?
this to a CX agent or some other human throughout that kind of multi-step process that you had mentioned from the email coming in to the LLM actually generating the response or is that just fully automated to that point?

![](data:image/png;base64...) **Nishith Sahu** 11:26
Yeah, we have practically kept it quite automated. As I was mentioning, it is still human in the loop. So the LLM will do what it can, and it would compose that message. And it is entirely up to the CX agent to see if that is good enough. If not, then they would be able to go and make the necessary changes.
So far, for the particular type of cases that we have already onboarded, we have 80% of acceptance rate. So 20% of those responses that gets generated invariably requires a human to come in and make those necessary adjustments.

![](data:image/png;base64...) **Tyler Richards** 12:04
And then what happens if humans make those adjustments? Like, is there a way to capture what was, okay, so how does that, so how does that kind of learning loop work?

![](data:image/png;base64...) **Nishith Sahu** 12:10
Yes, yes.
Yeah.
Yeah, yeah, so the learning loop, the way we do is we continue to capture what the LLM had generated response, and then the final response that the human had sent. And that gets used to again retrain that model. We also try to see if there is a cosmetic change or there are major changes. We do a...
a text-based matching to understand what is the extent of change. And then that gets further classified, whether it is a high, medium, low kind of a change. If it is a high extent of change, that is where we also get our tech engineers to actually review why it is such a big delta changes. And some of those could lead to certain process variations that could be required.
which the LLM was not aware of. And those are some specific nuances that has not been defined in our orchestration steps. So those could lead to such kind of changes, which ultimately have to be improved in our LLM orchestration layer.

![](data:image/png;base64...) **Tyler Richards** 13:19
Okay, so how does that, so how does the retraining actually happen? Like, just kind of walk me through it. So, DX agent gets the response, decides that there's something wrong with it that needs to be changed. I assume that it feeds that, it gives a feedback to the LLM, but then what happens to that information? Like, how is it then?
Eventually used to retrain the agent.

![](data:image/png;base64...) **Nishith Sahu** 13:45
Yeah, so we typically use retraining around once in 14 days. That's the typical frequency. And until that point of time, we would keep it in batches in order to see what are those delta changes that has happened.

![](data:image/png;base64...) **Tyler Richards** 13:55
Mm.

![](data:image/png;base64...) **Nishith Sahu** 14:04
then they would extract, the tech team would be extracting all of those instances where the response has been manually provided by the CX agents and they would do the comparison. There are certain specific comparison, text comparison tools which is being used to again.
grade this extent of changes and then that would be shared with with the for the ones which where there has been an heavy amount of change that has to be again manually looked at along with the tech that our process leads would and and process leads would be in a way representing.
the CX community, agents community, and they would be able to exactly tell where things have gone wrong. As an example, let's say there is a contract that has been sent to a customer, and the customer has come back mentioning that this contract has certain particular terms, which is incorrect.
the LLM could just go and probably just make that change, attempt to make that change in the contract, and that's how the response would be generated. We acknowledge the error, and let's say the payment days has to be changed from 30 days to 45 days. But the CX agent would exactly.
would know that that is not a correct way to make that change. And there could be some specific nuances in the contract that would require us to continue it to be just 30 days and not change it to 45 days. So that's a big change that has happened. And that is where that logic has to be fed back into the orchestration layer, that here are the specific.
guardrails that needs to be followed and or has to be compared before we can make such a change or we cannot make that change. And based on that, the responses has to be adapted.

![](data:image/png;base64...) **Tyler Richards** 15:59
Okay.
So...
Throughout this process, I know you mentioned, you know, the four different layers that you have, orchestration coming in at second.
How many?
Different isolated agents have you built throughout this workflow and are engaged in it? It like...
Not necessarily for an individual email, but throughout the full process. Like if the orchestrator orchestration layer could activate several different agents, like how many different agents are there in this workflow?

![](data:image/png;base64...) **Nishith Sahu** 16:40
Yeah, right now it is designed as a one agent monolith, Tyler, but then we are we are we are thinking about having multiple agents for different types of cases or undertaking various different types of orchestrations, but right now we are we are almost in the 1 1/2 year mark of this transformation.

![](data:image/png;base64...) **Tyler Richards** 16:45
Okay.

![](data:image/png;base64...) **Nishith Sahu** 17:01
So, at this point, it is 1 monolith agent.

![](data:image/png;base64...) **Tyler Richards** 17:06
Okay. And I know that you talked about the...
Data layer and unifying different applications, so...

![](data:image/png;base64...) **Nishith Sahu** 17:14
Mhm.

![](data:image/png;base64...) **Tyler Richards** 17:18
What are the main pieces, like what are the main kinds of either context or data that this system needs access to in order to operate effectively?

![](data:image/png;base64...) **Nishith Sahu** 17:30
Yeah, so if we talk about the different data sets that we need, so first is definitely the customer master information, so that we can exactly understand who is the supplier, who is the contractual party, who is the buyer, are there any, there are multiple different parties.
parties who gets involved in the shipments. So all of that information is there in our CRM. So we get that information. Then there are a lot of historic service related information that we also get. So practically from Salesforce, we get our sales information, our service related information. Then there is CPQ.
CPQ, which is which sits outside of Salesforce. There are certain quotes related cases which also gets generated. So that is yet another data set. Contracting information is another one. Then order order history is the 5th big.
data set that we get. So these are all the commercial data sets that we get. Now, in addition to it, there are also shipment-related data that we get. For example,
Some of these are live shipment information, so that obviously we'll have to call up the specific tools using API and get those live information. But then there are other relatively more static information like vessel schedules, vessel departure dates. So those in shipment specific.
information also gets unified in the data lake. In addition to that, there are for live tracking of information, or let's say, is the capacity available in the vessel, for example. So those would require us to directly trigger to those appropriate shipment applications and get those live information.

![](data:image/png;base64...) **Tyler Richards** 19:27
Okay, and is there, I know you, so these are the data sources that it uses. You mentioned that you're retraining it every two weeks. Is there any kind of like centralized context, whether it's static or dynamic, that you kind of point the LLMs to? Or is it just, does all that kind of live in there?
In their training.

![](data:image/png;base64...) **Nishith Sahu** 19:50
I mean, we use our Azure data lake which has all of this information and that we use it for retraining.

![](data:image/png;base64...) **Tyler Richards** 19:59
OK.

![](data:image/png;base64...) **Nishith Sahu** 19:59
There is no separate retraining that we do.

![](data:image/png;base64...) **Tyler Richards** 20:05
And for each.
data source that you use or each type of data or information that this workflow needs access to.
How do you decide?

![](data:image/png;base64...) **Nishith Sahu** 20:32
Yeah.
Yeah, so there are various different constraints that we use in order to determine this. So one straightforward way is if a case is created or if a query is created for an order which has been created in the last 24 hours.
then it has to go and hit the order management system, because the data lake would not have already captured that particular order. But if it is more than 24 hours has passed before that order has been created, then it would go and search it in the Azure data lake.
This is also something that we do in order to manage the workload that some of these underlying applications, which are quite legacy, can adhere to. There are certain API call rates that these underlying systems have a threshold for. Beyond that, if we exceed,
And then there is quite likely those systems would not be able to adhere to those workloads and it would crash. And that can have a domino effect as well. So there are those API rate limits that also, that is part of our business logic in order to make those determination, whether we should make a query directly to the application.
or whether we should try to look for such information if it is historic, available in the data lakes.

![](data:image/png;base64...) **Tyler Richards** 22:00
Okay.
Um...
And if say.
Like one of these upstream services or data points that the system needs access to or like an API or something that the agent depends on breaks. Like what does the agent do?

![](data:image/png;base64...) **Nishith Sahu** 22:23
Yeah, then they would have to get back to their normal operating process of manually going to those different systems and deriving those informations, which was the as is state. Now, if that system is completely collapsed, then it is a completely a sub-zero issue and then our attempt would be to get that particular system up.
or they would have to just inform the customer that based on the limited information which they might be having, they would use that information to send it back to the customer and would be requesting them for more time before they can, or obviously the response time would get accordingly impacted. So our fail-safe option is if the system breaks,
then the agent goes back to their manual way of operating.

![](data:image/png;base64...) **Tyler Richards** 23:13
Okay, and it just flags that agent.

![](data:image/png;base64...) **Nishith Sahu** 23:16
Yes.

![](data:image/png;base64...) **Tyler Richards** 23:16
Like I was unable to, yeah, okay.

![](data:image/png;base64...) **Nishith Sahu** 23:18
Yeah.

![](data:image/png;base64...) **Tyler Richards** 23:20
And I know you mentioned both.
the decrease in amount of time for this workflow and the...

![](data:image/png;base64...) **Nishith Sahu** 23:27
Mmh.

![](data:image/png;base64...) **Tyler Richards** 23:31
acceptance rate for responses.
Are those the core ways that you measure whether this workflow is working well? Are there any other metrics that you use for this?

![](data:image/png;base64...) **Nishith Sahu** 23:43
The key one is definitely the CSAT. Typically, we have a very high CSAT of 90% before we had gone into the agentic service. And one of our key success measures was that should not degrade. And what we also track is what is the CSAT.
of those cases which has been solved using anything surface. And right now it is at 92%. So that's a very key barometer for us. And completely it is customer facing. The second is obviously the average resolution time or average handling time to be precise. And we would like to keep it as one minute or even reduce it.
But right now, one minute is good enough for us. The third is, what is the coverage of cases? Right now, we are at 20% of our case coverage. That is 6 million cases a year is being handled through Agentic Service. And we have got a roadmap to increase it all the way up to 80%.
And these are the success measures and ultimately from a business outcome perspective, ultimately all of this would lead to cost savings.

![](data:image/png;base64...) **Tyler Richards** 24:52
So you mentioned only 20% of your cases are covered right now. How do you decide which cases are and are not covered by this?

![](data:image/png;base64...) **Nishith Sahu** 25:00
Yeah, so we go through an entire prioritization exercise in order to decide what should be the sequence of the cases that needs to be onboarded. Obviously, we would want to pick those types of cases which have got a fair amount of, I would say, a share or the volume, so that...
Once we automate it, it can be activated for a large section of those cases. The second mechanism that we use is, what is the language of case that we are using? So, Mask operate in 130 different countries, so we try to, and there are various different localized languages for which we get the cases as well.
So we first pick up the English cases of a particular type, case type. We get it to an 80% mark and acceptance level. And then we localize it to other languages like Chinese. It could be Spanish, French, German, Portuguese. So there is a particular sequence that we follow in order to localize these languages as well. So that
But whatever these particular micro segments of cases that we pick, we bring it to 80%, and then we pick another batch, another variations of cases, and again, bring it up all the way to 80%, and that's how the cycle repeats.

![](data:image/png;base64...) **Tyler Richards** 26:25
Okay, so the first, you mentioned not just like language, but type of case. So does that mean that...

![](data:image/png;base64...) **Nishith Sahu** 26:31
Mhm.

![](data:image/png;base64...) **Tyler Richards** 26:33
say 100% of cases that come in in English.
do go into this workflow and hit the orchestration layer, but then once they're classified, some of them are then.
pushed out of this workflow directly to the agent.

![](data:image/png;base64...) **Nishith Sahu** 26:49
Yeah, yes, yes. So, yeah, so we have got 250 different types of cases. So only 20%, which we have already onboarded, those would trigger the LLC. The rest would continue to follow the.

![](data:image/png;base64...) **Tyler Richards** 26:51
Okay.

![](data:image/png;base64...) **Nishith Sahu** 27:07
Standard process, the manual process.

![](data:image/png;base64...) **Tyler Richards** 27:11
Okay.

![](data:image/png;base64...) **Nishith Sahu** 27:13
And we have CICD models, so every week there are newer case types which gets onboarded. Accordingly, we tweak this logic to include the corresponding type of cases into the LLM logic.

![](data:image/png;base64...) **Tyler Richards** 27:30
Okay.
I do real quick, really quickly want to go back to the learning component of this, and then we can move on to talk about some other things. So I know that you said...
Bi-weekly, there is the retraining which requires the tech team to manually review all of the
potential changes.
Is that like, how did they feed that back into retraining? Is it...
And I guess, like, what form is that tech team getting the...
information in to compare it? Like, are they seeing what the initial response was and then what the ultimate response was? Are they getting actual descriptions from the CX agents saying like, this is what was wrong with it? And like, how are they feeding that back into the retraining?

![](data:image/png;base64...) **Nishith Sahu** 28:34
Yeah, so it would be in the form of what the LLM had created and ultimately what is the text that was ultimately submitted. And then there is another tabular form which provides the changes, the delta between these as well.
And then we classify whether what is the extent of this change, high, medium, low. Excuse me. So for the ones which are high, that's when we loop in the process experts as well. Because as tech team or the product team, we would not have that extent of knowledge as to why as the example that I had mentioned.
mentioned in terms of the contractual changes. So, and that is where the SOPs would have to be then accordingly revised in order to include those missing steps. For the ones which are low and medium, for the ones which are low, that would be more like, okay, that would be some software changes in which the sentences have to be reconstructed or maybe the CX agent.

![](data:image/png;base64...) **Tyler Richards** 29:35
Yeah.

![](data:image/png;base64...) **Nishith Sahu** 29:37
was not correct even to make those changes. So it can go either ways. In terms of medium extent of changes, that is where there could be certain natural language changes in terms of how the sentence sequencing has to be done or certain logistics, let's say acronyms, which has not been correctly interpreted.
that has to be changed. So some of those semantics have to be changed. So those are actually handled more at our tech level, but the higher intent, higher extent of changes, those could lead to certain SOP changes. And if it is an SOP change, then it would lead to.
our Langchain-based sequencing of those different steps have to be accordingly updated. So practically, it would trigger a workflow rule that needs to be augmented.

![](data:image/png;base64...) **Tyler Richards** 30:31
Okay, got it. That makes sense.
All right.
See if there's anything else I want to ask about this one before we move on.
Actually, yeah, so...
Did you kind of design this new agentic version of the workflow up front, or did it sort of emerge through kind of trial and error over time, or just like kind of sequential like automation of different steps?

![](data:image/png;base64...) **Nishith Sahu** 31:14
I mean, it was always a homegrown product for us. And if we have to go back 1 1/2 years when we had started, there were definitely certain experiments that we had to do. We need to understand specifically is the LLM able to identify the different.
intents from a case correctly. When I say intents, I'll give you one example. So let's say the shipment is expected to arrive at a particular destination and the customer says, my shipment is expected to arrive, let's say, in the port of Los Angeles.
And I would want the shipment to be picked up after five days instead of just two days. So that practically means once the shipment has arrived at the port, it needs to be retained for instead of two days, five more days, which could include, which could have a commercial implication.
of it as well. So it is a lot more nuanced case. And these types of cases, we would have to learn from the trial and error. Initially, when we would have done all of these orchestration, the LLM would mark the intent as it is just a shipment arrival query.
But it is not a shipment arrival query. It is a shipment arrival query plus what we call it as a detention and demurrage, which will lead to a commercial implication of this. So these nuances have to be obviously done, tried and tested, and then we would be able to suitably provide the response.
Did I answer that correctly, Tyler, or you were trying to...

![](data:image/png;base64...) **Tyler Richards** 33:00
Yeah, yeah, yeah, yeah. I was just trying to get a sense of whether this was kind of fully intentionally designed up front versus more of an emergent workflow. And it sounds like for the most part you had the design in mind up front, but obviously throughout the process you've learned things, things have changed.

![](data:image/png;base64...) **Nishith Sahu** 33:00
Ask me something else.
Yeah.
Yes.
Yes, exactly. I mean, the four layers, that architectural layer was pretty much up front that we had designed. Most of those additional changes happens in the LLM orchestration layer, where we begin to understand that, yeah, there are different process steps that has to be automated, and then we might...
realize that okay there are newer data sources that we would need and that would have an impact on the data layer.

![](data:image/png;base64...) **Tyler Richards** 33:44
Right, OK.
And is this?
Does this workflow have some sort of like dedicated data repository or is it mostly just connecting to other data sources?

![](data:image/png;base64...) **Nishith Sahu** 34:04
No, we have created a data lake which is specific to this. There are other data lakes as well, but the data, the Azure data lake that I just talked about, it is, yeah, yeah, so this is specifically feeding to this because there is a high amount of latency. I mean, when I say it needs to have a low latency, a quick response,

![](data:image/png;base64...) **Tyler Richards** 34:13
Yeah, okay, yeah, right, right, yeah.
You.

![](data:image/png;base64...) **Nishith Sahu** 34:24
So, we would rather want it to be fairly dedicated for this.

![](data:image/png;base64...) **Tyler Richards** 34:28
Got it, okay. And...
How does this, and I apologize if this is just a lack of domain knowledge on my part.
How does this?
Work cross-functionally, so...
If one of these cases came in and it meant that some action needed to be taken by another team, or it meant some change to like process or current status for another team, is that all handled by the actual CX agent?

![](data:image/png;base64...) **Nishith Sahu** 34:54
Mhm.

![](data:image/png;base64...) **Tyler Richards** 35:05
Or is that something automated through this workflow?

![](data:image/png;base64...) **Nishith Sahu** 35:10
Yeah, so there are those nuances wherein internal tickets have to be raised. We can create a, we can extend that contracting situation as well. So let's say there is a request to change the payment dates from 30 days to 45 days. Now that would require.
a re-engagement possibly with the sales operations team or the contractual team to make that final determination. So A sub-ticket has to be created for that particular, for those particular teams who would then have their own separate SLAs and then they can get back. So.
Those are those additional luances where we have not completely automated yet. We are strictly focusing on those types of cases with the CX agents is self-sufficient to complete it and would not require a dependency with other internal teams. The moment it gets to other internal teams.
What we do right now is...
we would create a sub-ticket for those other internal teams as part of our orchestration. Or the case, it would not close the case, but it would put the case on hold. But at the same time, it will automate some steps. So we will still be able to save some time. But we have still not expanded the agent to do the validation, what is expected from a sales operations team.
Or deal test team at this point.

![](data:image/png;base64...) **Tyler Richards** 36:40
But is is.

![](data:image/png;base64...) **Nishith Sahu** 36:40
So the persona at this point is still very limited to the CX agent.

![](data:image/png;base64...) **Tyler Richards** 36:47
But is it automatically creating those tickets or is that still on the human agent to do that?

![](data:image/png;base64...) **Nishith Sahu** 36:53
No, it will create the tickets. In most of, yeah, it will, in most cases it would. There could be certain nuances where it may not be able to understand, but we typically put it as part of our closure workflows.

![](data:image/png;base64...) **Tyler Richards** 36:55
You will, okay.
And is that something that the human agent would need to like review and sign off on? Or is that ticket just automatically created and sent to the relevant team without any sort of kind of guardrail in the process?

![](data:image/png;base64...) **Nishith Sahu** 37:22
It would, so as part of the testing, we do test all of this. So it would, it would have successfully passed, then it would go ahead and create automatically the ticket, and it will give certain alerts to the agent that this ticket has been created. If the agent believes that no, it is incorrectly created, they can go and close that sub ticket.
but it would just go ahead and create the ticket.
Subdicate.

![](data:image/png;base64...) **Tyler Richards** 37:49
Okay, got it.
All right, so just in general.
Like this pattern.
This kind of architecture that you see in this workflow, is that a pattern that you've seen across other workflows or other functions within your company? Or...
Is this kind of...
The architecture here kind of unique to this particular workflow.

![](data:image/png;base64...) **Nishith Sahu** 38:25
So the four layers which I mentioned.
I think that's pretty much similar, but let's say if there are other type of agent tech or LLM Jen AI workflows that we are doing, let's say if there is voice, so then there could be some additional architectural layers as well, because...
then we are talking about a telephony layer that would come in. It is not just the presentation layer, which I just mentioned is Salesforce. Now that presentation layer itself would be quite different, where there could be a Cisco telephony that would come in, and then that would do the interaction. So the modalities could be different.
different and hence the kind of architecture layers over there could also be nuanced according to those workflows.

![](data:image/png;base64...) **Tyler Richards** 39:25
Okay.
So, taking a step back, and...
Like, how do you decide when you're looking to try to automate processes or adopt new technologies? Like, how do you decide whether to buy a solution, to build it internally, to maybe adapt something you already have, or to work with a potential partner?

![](data:image/png;base64...) **Nishith Sahu** 39:50
Yeah, so Mask traditionally places a lot of, I would say, a stringent criteria in terms of positive ROI, in terms of any tech investments that we are doing. And that's also one of the reasons why there is traditionally we have been very focused in terms of building
a lot of these very specific logic and build it in-house so that there is no dependence with other third party players like Salesforce. Of course, we are not in the business of building LLMs, so we would have to use an LLM which is already from a third party.

![](data:image/png;base64...) **Tyler Richards** 40:42
Ex.

![](data:image/png;base64...) **Nishith Sahu** 40:42
Agent 360 and so on. So we do a thorough, I would say, number one, a fit gap assessment in terms of what, let's say, an alternative solution in the market can offer us at what cost and what it would cost us to build it in-house. With the amount of, with the scale at which we operate, what we have generally seen.
When we build the tech stack internally, it works out to be a lot more economical for us.

![](data:image/png;base64...) **Tyler Richards** 41:10
Got it. Okay.

![](data:image/png;base64...) **Nishith Sahu** 41:10
With a higher amount of efficiency, as well.

![](data:image/png;base64...) **Tyler Richards** 41:16
And...
Who usually owns decisions about AI tools or systems and like deployments? Is it the IT? Is it the lines of business product operations?

![](data:image/png;base64...) **Nishith Sahu** 41:30
The ultimate ownership of the tech stack would be with IT, but let's say the transformation business case that we put, that ultimately is an executive leadership team's decision, and that would have representation from the commercial teams, finance, as well as tech.

![](data:image/png;base64...) **Tyler Richards** 41:50
OK.

![](data:image/png;base64...) **Nishith Sahu** 41:51
So the tech stack, ultimate tech stack composition is a decision of the IT, for example, build versus buy. But whether we would be doing an agentic service as a transformation initiative, that would be a collective decision with the business.

![](data:image/png;base64...) **Tyler Richards** 42:10
Okay.
And do you monitor token spend? And like, how do you think about that across, like, but the workflow that we talked about and then more generally across usage within your team?

![](data:image/png;base64...) **Nishith Sahu** 42:22
Yes, yes. So across Mask, there would be, like across Mask, we would be using GPT-40, and there would be a certain volume of tokens that at an enterprise level we would negotiate, and then agentic service would be getting certain part.
Of that, so agentic service is not the only use case which is using this as an example, but the way we try to limit the token usage is, you would recollect at the beginning I was mentioning, there is a natively build ML logic to classify these cases, and one of the main reasons why we had built it.
because we did not want all our 30 million cases to go and hit the LLM and then try to figure out only 10 or 20 percent of them. We have built that automation layer. So we would like to do that check early on so that we limit the number of tokens that we are using only for those onboarded type of cases.
and where we have got a high amount of acceptance rate. So we do not launch a particular version unless we are able to get 60% of our acceptance in a test environment. And only once we are able to get to that 60% Mark, that is more than half of our incoming cases are being accepted.
That's when we start to scale it across the different countries, and then we take it all the way to 80% mark. So those are those internal guardrails that we use, so that our burn rate of the tokens is quite limited.

![](data:image/png;base64...) **Tyler Richards** 44:00
Okay, got it. I should have asked this earlier. I've noticed you mentioned GPT-40 a few times. Why do you use that specific model?

![](data:image/png;base64...) **Nishith Sahu** 44:11
So I think it is again the cost versus value of 4.0, and there are talks of further upgrading it to the recent models. But 4.0 was specifically tweaked for Azure OpenAI Services and specifically for service-based cases as well.
So we use that particular model from the get-go when we started this.

![](data:image/png;base64...) **Tyler Richards** 44:39
Okay.
Interesting.
All right, so just want to shift gears again a little bit and talk about kind of hiring and talent. So...
What do you look for when you're hiring people at your company? Like, is...
The usage of AI within your company and the kind of advancement of AI technologies changed what you're looking for in new hires.

![](data:image/png;base64...) **Nishith Sahu** 45:16
So, there is certainly we will we look for external talent which have which have high amount of LLM proficiency, which is quite expensive, but at the same time hard to find as well. So, a lot of our senior leaders have come in.
with the prior LLM expertise. And then we are also reskilling our internal tech talent as well in order to be more conversant with ML and start learning them hands-on, being put on these initiatives as well. So it's a mix, I would say.
So some amount is from external hiring, others, majority is reskilling.

![](data:image/png;base64...) **Tyler Richards** 46:03
Okay, and does this does this apply?
kind of across the board regardless of function or is it more focused on your actual technology teams?

![](data:image/png;base64...) **Nishith Sahu** 46:16
So in technology teams, this is pretty much the, because we don't have so much of funding to be able to go and hire a lot of ML engineers specific to a certain tech stack that we are looking for. So we try to hire at least certain numbers, but then we try to cross-skill.

![](data:image/png;base64...) **Tyler Richards** 46:27
Right.

![](data:image/png;base64...) **Nishith Sahu** 46:37
Our existing tech talent into this.

![](data:image/png;base64...) **Tyler Richards** 46:41
Okay, and then what, so what about the rest? What about other functions though? Are you, has AI changed how you're thinking about hiring or training for people who are not technical in their roles?

![](data:image/png;base64...) **Nishith Sahu** 46:55
Yeah, so there are a lot of enterprise level, I would say, scaling activities that is taking place. So that be it from a business side, on the CX side, as well as on the sales side, commercial functions.
there is a rollout of Copilot as an example. So we are trying to infuse AI in most of our standard activities of the business. So the AI fluency for that, there are a lot of curriculum, native curriculums which has been built.
and some are more tweaked into for the sales enablement when they will be using co-pilot, what are the type of prompts that they could be using, when they should be using it. So those have been curriculum have been designed so that they can quickly focus on how they can use these tools to their advantage.

![](data:image/png;base64...) **Tyler Richards** 47:44
Yeah.
Okay, so it's mostly on the training side as opposed to the hiring side that you're thinking about this. Got it. And have you incorporated any sort of AI usage or...

![](data:image/png;base64...) **Nishith Sahu** 47:57
Yes.
Yeah.

![](data:image/png;base64...) **Tyler Richards** 48:10
outcomes, AI outcomes into your performance management for those non-technical roles.

![](data:image/png;base64...) **Nishith Sahu** 48:21
So if we look into the CX agents, obviously one of the key barriers was the displacement fear that was there. What if we are going to participate in this particular
agentic service and just provide our feedback, which is further going to train them, is my job at risk? So obviously we had to dispel that fear by shifting, by positioning it more like an efficiency gain, which has to be up leveled into higher business value added activities. For example, a CX agents,
are expected to use the agentic service tool to save time, which then gets repurposed to do cross-selling activities, which was not the case earlier.
So there are these types of specific, I would say, newer goals which are being put into these existing roles. And they are no more a pure play organization that only provides customer service.
but they would start having responsibilities of generating revenue for the company as well.

![](data:image/png;base64...) **Tyler Richards** 49:41
Okay, that's interesting. So is that is suspectively a different way of
enabling existing revenue streams. Have you seen any actual new, like has AI enabled any fully new revenue streams or any sort of like business model shift for you?

![](data:image/png;base64...) **Nishith Sahu** 49:52
Yes.
Oh, yes.
Huge, so the way we positioned the agentic service was...
I mean, the trigger point for this was the disruption is definitely going to happen when we're talking about 85% reduction in the average handling time. At some stage, we would be confronted with the question as to what are we going to do with 85% of our staff if that much of time is being saved. So we started with another AI-based initiative that was very focused in
providing cross-selling abilities or recommendations to us CX agents who can then use the engagement touch points with our customers and start cross-selling some of our other logistics products. And that has generated close to three-digit mark million.
Close to 100 million last year itself.

![](data:image/png;base64...) **Tyler Richards** 50:59
And so, how does that?
What does that look like for, so I realize obviously they have more time to devote to some of these cross-selling activities.

![](data:image/png;base64...) **Nishith Sahu** 51:11
Mmh.

![](data:image/png;base64...) **Tyler Richards** 51:17
To what extent is AI kind of actually not just giving them more time to do this, but also improving their ability to do it when they are spending time on it? Like, is it providing insights for them in the same way that it's kind of providing responses? Like, so how does that work?

![](data:image/png;base64...) **Nishith Sahu** 51:29
Yeah.
Yes.
Yeah, yeah, yeah. So the cross-selling is completely traditional AIML-based recommendation engine. It is not based on generative AI. When we talk about generative AI, it is only focused on providing responses. And we have not married the two as well.

![](data:image/png;base64...) **Tyler Richards** 51:35
Practice.

![](data:image/png;base64...) **Nishith Sahu** 51:53
So it is not that when they are creating a response, the traditional AI ML will also provide a recommendation to cross-sell. So there are two completely different, I would say, use cases at this point. At some stage, they could merge. But right now, if a case comes in asking for a particular resolution, the agentic service gets invoked and provides a recommendation to just close the case. That's it.
When we talk about cross-selling activities, it is a completely different business use case that we are trying to focus. So we look at the orders which has been booked, which only has, let's say, an ocean transportation that has been booked. And obviously then there is an opportunity to cross-sell.
to also include the trucking service along with the ocean transportation. And then there are business, different business rules to interpret when, which are those, I would say, opportunities which have a high propensity to cross-sell. And there is a completely different ML algorithm that we have built.
There is a different module in the case management that we have built. Actually, these are all leads that gets generated with the CX agents would then spend time to go through those higher propensity leads which has been routed to them. And then they will make outbound calls to close those leads into a potential sale.
and that thereby they would start generating sales for us.

![](data:image/png;base64...) **Tyler Richards** 53:24
Got it. Okay.
But so this is the way this works is effectively they're just getting a list of like recommended cross-selling opportunities, right? And then they kind of, yeah, okay, got it.

![](data:image/png;base64...) **Nishith Sahu** 53:36
Leads, yes, yes, yes, and it is not related with the resolution.
Case resolution.

![](data:image/png;base64...) **Tyler Richards** 53:45
Got it. So that's actually a good segue then. So what thinking about...
the workflow that we discussed earlier, and any other.
Use cases where AI is.
already embedded in some of the work that you're doing. Where is the next biggest priority for your company? What's on the horizon in terms of automation, agentic capabilities?

![](data:image/png;base64...) **Nishith Sahu** 54:19
Yes. So certainly we would like to hit the North Star for the agentic service at least. And where we are at 20% of the case coverage right now, we would like to take it all the way to 80%. And that's probably going to keep us well occupied all the way till end of next year. Or maybe
more as well. We'll see. So that's the number one priority. The second, what we are now looking at is how we can use agentic service to or agentic workflows to fast track the opportunity journey as well. So say for example, can we...
give certain natural language prompts in order to create a particular opportunity for a customer, and give certain prompts in terms of saying, okay, add these types of products, and then the product line configuration gets automatically created. Those are still in the very early stage of.
conception, that is something that we will have to explore. The second use case is, I talked about.
the cross-selling to our customers. Now, agents only have that much amount of time that they can devote to cross-selling. Right now, probably just 10% of those leads are something that the agents have time to cross-sell. There is still 90% of those leads, the volume of leads.
that we are not able to address. Can we use agentic voice or AI voice to be able to reach out to our customers and try to close or at least try to understand if those customers are interested to make that cross-sell purchase?
and then possibly hand it off to an agent to close the deal. So that's the second revenue generating use case that has been conceived.

![](data:image/png;base64...) **Tyler Richards** 56:16
Okay.
So just last question here for in the last three minutes we have.
So what has generally driven your approach to AI so far? Like, how have you decided what to prioritize and how have you...
made decisions on sequencing AI solutions to date.

![](data:image/png;base64...) **Nishith Sahu** 56:42
Yeah, so we typically go by an ROI-based approach and try to maximize the ROI. And that's where we try to, even in the agentic service that I mentioned,
We saved close to 3.5 million of cost associated with this. So any particular use case that comes in, we try to evaluate what is the commercial impact, either in the form of revenue upside or in the form of cost saving. And then what is the...
effort and the expense that is going to be incurred in order to build that. And that helps us to make those determination to ultimately prioritize.

![](data:image/png;base64...) **Tyler Richards** 57:30
And when you're thinking about ROI.
Are you?
Strictly focused on capabilities available today, like what, you know, if you were, if you were...
evaluating a solution? Are you thinking, this is what we could build today, this is the ROI? Or are you taking into account, say, maybe the potential longer term value of automating a certain process where technologies might continually grow and like the or potential other upsides of like

![](data:image/png;base64...) **Nishith Sahu** 58:01
Yeah.

![](data:image/png;base64...) **Tyler Richards** 58:05
upskilling through kind of experience.

![](data:image/png;base64...) **Nishith Sahu** 58:11
Yeah, so there are certain calculated bets that we have to do here. For example, the pace of LLM smart, I mean, development is so fast that what I was just mentioning, how much time it is going to take us to do the LLM automation for the rest of the 80% cases.
Now, whether it can be completed in the next one year or it is going to take a longer horizon, that is a very big question mark. So we don't know that yet. But we are not also staying standing still in order to expect that the LLM models would be so sophisticated that
they would not be dependent on any of the SOPs and they can self-learn completely by themselves. So we are still taking a cautious path in terms of as long as there are certain commercial page 0 measures that we are able to hit and we are able to showcase that yes, there is a positive ROI.
irrespective of the pace of the LLM development, we are still continuing. It could mean that a lot of the development that we have made now could be attacked and could be automatically done later on natively by the LLMs. But that is not stopping our progress. The second piece, what we are also trying to look at is in our
In the best of...
automating. We also come across very alternative ways towards solving a problem. For example, there could be, instead of trying to address 80% of our cases, that could be, and solving them retrospectively, there could be a completely different approach of
try to change our processes where in these cases are not even created in the 1st place. So proactive resolution comes in as well. So for that, if when we stumble across such scenarios, we try to again look for alternative mechanisms towards solving it.

![](data:image/png;base64...) **Tyler Richards** 1:00:11
Okay. All right, so I see we're at time now. Thank you for taking the time to speak with us. This has been really helpful.
We send out, yeah, of course. So we send out payments usually Monday or Tuesday for the previous week. So you should get an email on Monday or Tuesday at the email address that you used to sign up for this with the gift card. If you

![](data:image/png;base64...) **Nishith Sahu** 1:00:20
Thank you very much.
Mm-hmm.
Sounds good. Thank you very much.

![](data:image/png;base64...) **Tyler Richards** 1:00:58
Thank you again. Hope you have a good day.

![](data:image/png;base64...) **Nishith Sahu** 1:01:01
You too, bye.

![](data:image/png;base64...) **Tyler Richards** stopped transcription