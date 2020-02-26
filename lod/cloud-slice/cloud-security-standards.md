<style>
h2{
    text-decoration: underline;
    font-weight: bold;
    font-size:18px;    
}
h3{
    font-weight: bold;
    font-size:16px;    
}
h4{
    font-weight: bold;    
    font-style: italic;
    font-size:14px;        
}
:not(h3) ~ h3 {
  margin-left: 5%;
}
h3 ~ p,ol,ul,blockquote {
  margin-left: 7%;
}
summary{
    font-size:16px;   
}
</style>

# Cloud Security Standards

Labs utilizing the Lab on Demand Cloud Slice feature will be required to go through a cloud security review. A lab that has not gone through one of these reviews will not be launchable from outside of direct access to Lab on Demand (including API, TMS, and authenticated launch links).

Labs that complete a cloud security review will have a status of either **Approved** or **Denied** - labs with an approved status may have an expiration date as well depending on the conditions of their approval. Additionally, each lab will be assigned a risk level between **Low**, **Medium**, and **High**. Below the requirements to qualify for each of these categories is outlined along with the consequences of recieving each risk level.

To evaluate if your policy meets any of the below specifications, review the [Access Control Policy (ACP) documentation and samples](https://github.com/LearnOnDemandSystems/labauthor/tree/master/access-control-policies/).

> [!ALERT] The below definitions of risk level are subject to change at any time.

## High Risk

Labs in this category have high vulnerability (typically to virtual machines).

Labs where the ACPs permit users to create any virtual machines or more than 1-4 SKUs/Sizes of virtual machines without other limitations (such as Name) will be marked as high risk. Life Cycle Actions that fundamentally change the security of a lab scenario may also result in a lab marked as high risk.

### What happens if my lab is marked high risk?

If your lab is marked as high risk the security review status will be set to **Denied**.

### How do I avoid getting my lab marked as high risk?

- Limit your lab (via ACP) to a smaller selection of virtual machines.
- Do not include life cycle actions that fundamentally modify the cloud security settings LOD puts in place by default.

### I know my lab is high risk, but I want to launch it externally anyway.

If your lab is utilizing LODS owned cloud subscription(s), this scenario will not be approved.

If your lab is utilizing your organization's own subscription(s), this will require the approval of your organization's cloud security administrator with the acknowledgement of responsibility if any cloud abuse does occur as LODS security staff have given advanced warning about the risks of the lab.

## Medium Risk

Labs in this category have a medium vulnerability. 

Labs where the ACPs permit users to create virtual machines with one of the following parameters will be marked as medium risk:

- Limited to 1-4 SKUs/Sizes, but no other limitations (such as Name)
- Limits virtual machines by name using an open ended method (such as regex and/or wildcards)
- Block virtual machines entirely but nearly nothing else 

### What happens if my lab is marked medium risk?

If your lab is marked as medium risk, LODS security staff may have additional questions such as where the lab is planned to be consumed. Labs which will be surfaced on freely and publicly available sites are likely to receive a security review status of **Denied**, while other consumption locations may be set to **Approved**.

### How do I avoid getting my lab marked as medium risk?

- Limit your lab (via ACP) to only what users need to do and do not leave it open ended to most resource types on the cloud provider.
- Do not include life cycle actions that fundamentally modify the cloud security settings LOD puts in place by default.

## Low Risk

Labs in this category are considered very secure and have low vulnerability to abuse.

Labs where the ACPs do not permit virtual machines at all, or limit them to fixed number

### What happens if my lab is marked low risk?

If your lab is marked as low risk the security review status will be set to **Approved**.

### How do I get my lab marked as low risk?

- Limit your lab (via ACP) to only what users need to do and do not leave it open ended to most resource types on the cloud provider.
- Block virtual machines entirely, or limit them to set number utilzing conditions such as "Name".
- Do not include life cycle actions that fundamentally modify the cloud security settings LOD puts in place by default.