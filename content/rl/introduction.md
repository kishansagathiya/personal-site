---
title: "Introduction to Reinforcement Learning"
date: 2020-08-23T00:05:13+05:30
draft: false
---

Reinforcement learning is an important type of Machine Learning where an agent learn how to behave in a environment by performing actions and seeing the results.

The idea behind Reinforcement Learning is that an agent will learn from the environment by interacting with it and receiving rewards for performing actions.

Learning from interaction with the environment comes from our natural experiences. Imagine you’re a child in a living room. You see a fireplace, and you approach it.

![](/images/rl/1.png)

It’s warm, it’s positive, you feel good (Positive Reward +1). You understand that fire is a positive thing.

![](/images/rl/2.png)

But then you try to touch the fire. Ouch! It burns your hand (Negative reward -1). You’ve just understood that fire is positive when you are a sufficient distance away, because it produces warmth. But get too close to it and you will be burned.

That’s how humans learn, through interaction. Reinforcement Learning is just a computational approach of learning from action.

# The Reinforcement Learning Process

![](/images/rl/3.png)

Let’s imagine an agent learning to play Super Mario Bros as a working example. The Reinforcement Learning (RL) process can be modeled as a loop that works like this:

- Our Agent receives state **S0** from the **Environment** (In our case we receive the first frame of our game (state) from Super Mario Bros (environment))
- Based on that **state S0**, agent takes an **action A0** (our agent will move right)
- Environment transitions to a **new state S1** (new frame)
- Environment gives some **reward R1** to the agent (not dead: +1)

The goal of the agent is to maximize the expected cumulative reward.

# The central idea of the Reward Hypothesis
Why is the goal of the agent to maximize the expected cumulative reward?

Well, Reinforcement Learning is based on the idea of the reward hypothesis. All goals can be described by the maximization of the expected cumulative reward.

That’s why in Reinforcement Learning, to have the best behavior, we need to maximize the expected cumulative reward.

The cumulative reward at each time step t can be written as:

![](/images/rl/4.png)

Which is equivalent to:

![](/images/rl/5.png)

```go
// User contains information about users.
type User struct {
	gorm.Model
	Name              string `gorm:"not null"`
	Email             string
	GithubUser        string `gorm:"unique;not null"`
	IsRecruiter       bool   `gorm:"not null"`
	IsMaintainer      bool   `gorm:"not null"`
	IsCandidate       bool   `gorm:"not null"`
	IsProfileComplete bool   `gorm:"not null"`
	Profile           string
}

```
<!-- {{< rawhtml >}}
<iframe width="560" height="315" src="https://www.youtube.com/embed/zj2r948rUkQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
{{< /rawhtml >}} -->