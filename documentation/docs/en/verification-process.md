# Verification Process

Citizen Science data is often criticised as having questionable data quality.<br />
To remove uncertainty from our data, and generate unambiguous data to train the OpenLitterAI, we put our crowdsourced data through a verification process.<br />
When a new user submits data to OpenLitterMap, they are not yet trusted- and their data currently needs to be manually verified before we display their images publicly. We can show the GPS point, but we cannot show the image until it is approved. This is partly due to prevent malicious users, and partly to prevent the display of sensitive material such as mapped images of children cleaning beaches.<br />
<br />
There are 2 columns to monitor verification, which could be combined into 1 column.<br />

### Unverified (stage 0)

 - Verification (default 0)
 - Verified (default 0)

### Stage 1 - Crowdsourced level of verification
To achieve stage 1 level of verification, users can vote True or False on each others images. Every time a True or False vote is cast, the verification column changes by +/- 0.1 until it reaches 1.0. When the image reaches verification 1.0 we assume the crowd has verified the image and verified 1 is achieved. We don't use this anymore as 100% of our data has achieved stage 2 level of verification.

### Stage 2 - Admin / Trusted user level of verification
There are 2 ways to achieve stage 2. Either an admin inspects the image with our admin tool, verifies it as correct or updates the tags. Or, trusted users achieve stage 2 automatically. Anyone familiar with OLM who has been submitting tags correctly for a while doesn't need to have their images verified and achieves stage 2 automatically.

### Stage 3 - not in production yet
With stage 3, we are getting into AI territory. At this stage, the image has bounding boxes and they have been verified by a small team of admins or the crowd.

### Stage 4 - not in production yet
At this stage, the tags + bounding boxes have 100% confidence as verified by a superadmin. This data will be used to train the OpenLitterAI.<br />
<br />
PS. All of this is subject to change following your input and advice.<br />
<br />
Thanks!<br />