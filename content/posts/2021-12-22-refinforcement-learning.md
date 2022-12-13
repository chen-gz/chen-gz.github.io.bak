---
title: Reinforcement Learning
math: true
---
MDPs are meant to be a straightforward framing of the problem of learning from interaction to achieve a goal. The learner and decision maker is called the **agent**. The thing it interacts with, comprising everything outside the agent, is called the **environment**. These interact continually, the agent selecting actions and the environment responding to these actions and presenting new situations to the agent. The environment also gives rise to rewards, special numerical values that the agent seeks to maximize over time through its choice of actions.

![](https://raw.githubusercontent.com/chen-gz/picBed/master/20211222134552.png)

time steps, $t=0,1,2,3, \ldots$ At each time step $t$, the agent receives some representation of the **environment's state, $S_{t} \in \mathcal{S}$**, and on that basis selects an **action, $A_{t} \in \mathcal{A}(s) .{ }$** One time step later, in part as a consequence of its action, the agent receives a **numerical reward, $R_{t+1} \in \mathcal{R} \subset \mathbb{R}$**, and finds itself in a **new state, $S_{t+1} \cdot$** 

That is, for particular values of these random variables, $s^{\prime} \in \mathcal{S}$ and $r \in \mathcal{R}$, there is a probability of those values occurring at time $t$, given particular values of the preceding state and action:

$$
p\left(s^{\prime}, r \mid s, a\right) \doteq \operatorname{Pr}\left\{S_{t}=s^{\prime}, R_{t}=r \mid S_{t-1}=s, A_{t-1}=a\right\}
$$

for all $s^{\prime}, s \in \mathcal{S}, r \in \mathcal{R}$, and $a \in \mathcal{A}(s)$. The function $p$ defines the dynamics of the MDP.

From the four-argument dynamics function, $p$, one can compute anything else one might want to know about the environment, such as the **state-transition probabilities** (which we denote, with a slight abuse of notation, as a three-argument function $p: \mathcal{S} \times \mathcal{S} \times \mathcal{A} \rightarrow[0,1]$,

$$
p\left(s^{\prime} \mid s, a\right) \doteq \operatorname{Pr}\left\{S_{t}=s^{\prime} \mid S_{t-1}=s, A_{t-1}=a\right\}=\sum_{r \in \mathcal{R}} p\left(s^{\prime}, r \mid s, a\right) .
$$

We can also compute the expected rewards for state-action pairs as a two-argument function $r: \mathcal{S} \times \mathcal{A} \rightarrow \mathbb{R}$ :

$$
r(s, a) \doteq \mathbb{E}\left[R_{t} \mid S_{t-1}=s, A_{t-1}=a\right]=\sum_{r \in \mathcal{R}} r \sum_{s^{\prime} \in \mathcal{S}} p\left(s^{\prime}, r \mid s, a\right),
$$

and the expected rewards for state-action-next-state triples as a three-argument function $r: \mathcal{S} \times \mathcal{A} \times \mathcal{S} \rightarrow \mathbb{R}$

$$
r\left(s, a, s^{\prime}\right) \doteq \mathbb{E}\left[R_{t} \mid S_{t-1}=s, A_{t-1}=a, S_{t}=s^{\prime}\right]=\sum_{r \in \mathcal{R}} r \frac{p\left(s^{\prime}, r \mid s, a\right)}{p\left(s^{\prime} \mid s, a\right)} .
$$

### Return and Episodes

In general, we seek to maximize the **expected return**, where the return, denoted $G_{t}$, is defined as some specific function of the reward sequence. In the simplest case the return is the sum of the rewards:

$$
G_{t} \doteq R_{t+1}+R_{t+2}+R_{t+3}+\cdots+R_{T},
$$

where $T$ is a final time step. This approach makes sense in applications in which there
is a natural notion of final time step, that is, when the agent–environment interaction
breaks naturally into subsequences, which we call **episodes**. Each episode ends in a special
state called the **terminal state**, followed by a reset to a standard starting state or to a
sample from a standard distribution of starting states. 

### Policies and Value Functions

Almost all reinforcement learning algorithms involve estimating **value functions** -- functions of states (or of state-action pairs) that estimate *how good* it is for the agent to be in a given state (or how good it is to perform a given action in a given state). 

Formally, a **policy** is a mapping from states to probabilities of selecting each possible action. If the agent is following policy $\pi$ at time $t$, then $\pi(a \mid s)$ is the probability that $A_{t}=a$ if $S_{t}=s .$ Like $p, \pi$ is an ordinary function; the "|" in the middle of $\pi(a \mid s)$ merely reminds us that it defines a probability distribution over $a \in \mathcal{A}(s)$ for each $s \in \mathcal{S}$. Reinforcement learning methods specify how the agent's policy is changed as a result of its experience.

The **value function** of a state $s$ under a **policy $\pi$**, denoted $v_{\pi}(s)$, is the expected return when starting in $s$ and following $\pi$ thereafter. For MDPs, we can define $v_{\pi}$ formally by

$$
v_{\pi}(s) \doteq \mathbb{E}_{\pi}\left[G_{t} \mid S_{t}=s\right]=\mathbb{E}_{\pi}\left[\sum_{k=0}^{\infty} \gamma^{k} R_{t+k+1} \mid S_{t}=s\right], \text { for all } s \in \mathcal{S}
$$

We call the *function $v_{\pi}$ the state-value function for policy $\pi$.*

**Q-function**

Similarly, we define the value of taking action $a$ in state $s$ under a policy $\pi$, denoted $q_{\pi}(s, a)$, as the expected return starting from $s$, taking the action $a$, and thereafter following policy $\pi$ :

$$
q_{\pi}(s, a) \doteq \mathbb{E}_{\pi}\left[G_{t} \mid S_{t}=s, A_{t}=a\right]=\mathbb{E}_{\pi}\left[\sum_{k=0}^{\infty} \gamma^{k} R_{t+k+1} \mid S_{t}=s, A_{t}=a\right] .
$$

We call $q_{\pi}$ the action-value function for policy $\pi$.