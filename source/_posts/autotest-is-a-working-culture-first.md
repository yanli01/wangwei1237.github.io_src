---
title: 自动化测试首先是一种工作文化
reward: false
top: false
date: 2020-07-08 12:43:07
categories: 
  - 总结
tags:
  - 测试
  - 自动化测试
  - auto test
  - 敏捷
  - 方法论
---

> 自古以来，人类就有创造自动装置以减轻或代替人劳动的想法。自动化技术的产生和发展经历了漫长的历史过程。古代中国的铜壶滴漏（简称漏壶）、指南车以及17世纪欧洲出现的钟表和风磨控制装置，虽然都是毫无联系的发明，但对自动化技术的形成却起到了先导作用。

## 自动化测试之痛
最近在帮助一个团队梳理团队测试效率的问题，其目标是提升该团队的测试效率。在整个梳理的过程中，我发现一件非常有意思的事情：这个团队基本上没有自动化测试，大部分的测试手段还是手工测试加CR。更为有意思的事情是：团队成员大都对自动化测试比较抵触，认为自动化测试的成本较大，且看不到收益。

回想过去几年的测试工作，我发现，几乎所有的测试团队在面对自动化测试时都会存在类似的问题：**希望自动化测试提升效率，但是执行时却发现自动化测试反而没有提升效率，因此慢慢废弃自动化测试，直至抵触自动化测试，到最后自动化测试变成一种“形而上”般的存在**。我姑且称这种现象为——**自动化测试之痛**。

<!--more-->

自动化测试之痛的问题根源究竟是什么呢？事情真的如有些团队所说：自动化case的成本太大，又没有收益吗？

## 侠客岛的故事
> 自从三十年前开始，每过十年，就会有大批的武林高手被请去侠客岛喝腊八粥，不但这些武林高手从此都一去不复返，而且侠客岛还演变成为了赏善罚恶的行动。
> 
> 为此，江湖中人人自危，每到十年之期，各大门派的掌门就纷纷寻找替身，来躲避侠客岛的赏善罚恶。但是，当这些武林高手到了侠客岛之后才终于揭开了侠客岛的秘密。
> 
> 原来岛上刻有武林秘籍，由于岛主人参不透秘籍，所以才会请武林高手到岛上共同参悟。并且由于岛上的‘断肠蚀骨腐心草’十年一开花，此草若再配以其他佐使之药，熬成热粥，服后于练武之士大有补益，因此才有了每十年邀请一次的惯例。被邀上岛的人也并不是遇害，而是痴迷于武学，都不想回去罢了。
> 
> **<div align="right">——《侠客行》</div>**

有多少时候，我们对自动化测试的认识和江湖人士对侠客岛的认识是类似的呢？
有多少时候，明明是侠客岛盛情所邀，江湖之上却人人躲而避之呢？
有多少时候，明明是对自己大有补益的腊八粥，所有被邀的武林人士却不敢喝下呢？

或许你会反驳，但凡有上岛的武林人士扩散一下事实真相，那整个江湖也不至于如此？
但是，正如本文开篇所述，整个人类社会都是证明自动化的历史，为什么还有那么多的团队在质疑自动化测试呢？
为什么有那么多的测试实践已经证明了自动化测试的成效——例如谷歌的[**Test Mercenaries**](https://mike-bland.com/2012/07/10/test-mercenaries.html)计划，还是有那么多的团队对自动化测试心存质疑呢？

正如Sam NewMan在[**Monolith To Microservices**](https://samnewman.io/books/monolith-to-microservices/)一书中说的那样：[一旦我们陷入系统性抹黑单体的陷阱，我们就会面临很大的麻烦](https://wangwei1237.gitee.io/monolith-to-microservices/docs/The_Monolith.html#ref_denigrating_monolith)。

## 自动化测试的定位
接下来，我从3个方面来阐述自动化测试的定位。

### 测试的4大活动
根据乔梁老师的[《持续集成2.0》](https://item.jd.com/12512514.html)一书中所述，测试领域有4大基本活动，如[图1](#f1)所示。

<span id='f1'>![](f1.png)</span>

图1. 测试的4大基本活动

其中，各活动的基本含义如下：
* **问题认知**：对业务问题本身的理解和认知，包括需求理解，技术设计理解……
* **分析**：测试分析和测试设计，根据对问题的认知，设计测试方案和用例，保证业务质量
* **执行**：执行分析阶段的测试用例，产出测试结论
* **决策**：根据测试结论进行相关决策，包括是否存在风险，是否达到上线标准……

### 敏捷测试4象限
根据测试所支持的对象，测试可以分为：[面向业务的测试和面向研发的测试](https://www.tutorialspoint.com/agile_testing/agile_testing_quadrants.htm)。[Brian Marick](http://www.exampler.com/old-blog/2003/08/22/#agile-testing-project-2)根据这两种测试类型提出了**敏捷测试4象限**的概念，如[图2](#f2)所示。

<span id='f2'>![](f2.png)</span>

图2. 敏捷测试4象限

在[图2](#f2)中：
* **功能验收测试**：从用户的角度来验收功能
* **第三象限的自动化测试**：研发团队对自我软件技术实现的验证

### 自动化测试的4要素
在测试的4大活动中，“执行”环节会存在大量的重复工作，而其中的大部分工作都可以由机器来承担。此时就可以发挥自动化测试的优势，释放人的重复劳动。

而在Brian Marick的敏捷测试4象限中，第2、第3象限的测试类型也可以发挥自动化测试的优势，提升整个测试执行的效率。

对于自动化测试而言，我总结了自动化测试的4要素：自动部署、自动执行、自动校验、自动报告，如[图3](#f3)所示。

<span id='f3'>![](f3.gif)</span>

图3. 自动化测试的4要素

## 自动化测试的误区
接下来，着重来说一下我所见到、听到的一些关于自动化测试的误区。

### 误区1：只看短期效率收益
有的团队希望自动化case来提升测试效率，当然，这是自动化case可以获取的收益之一。这些团队还会针对自动化对效率的提升制定定量的指标，然后每周，每月，每季度（当然，有些人还没有坚持到季度末就不做了）来跟进。

但是，正如Sam Newman在[*Monolith To Microservices*](https://wangwei1237.gitee.io/monolith-to-microservices/docs/How_Will_You_Know_if_the_Transition_Is_Working.html#%E5%AE%9A%E9%87%8F%E6%8C%87%E6%A0%87)一书中所说：
> 有的指标可能很难在短时间内有量的变化。
> 
> 如果在微服务迁移的前几个月就看到cycle time的大幅改善，我会感到惊讶。
> 
> 实际上，我更希望看到cycle time会在迁移的初期变得更糟。
> 
> 因为团队需要不断适应新的工作方式，因此短期内对工作方式的变革通常会对生产效率产生负面影响。

自动化测试也是一个很难在很短的时间内就能看到收益的工具，并且还需要付出一些成本：需要学习自动化测试的配套工具，编写自动化case的框架，调度自动化执行的相关工具……

因此，最开始的一段时间内，自动化测试有可能会降低测试效率。但是，一旦掌握这些技巧，我们就会发现汽车确实比马车跑的快，难道不是吗？

短期收益不明显还有另外一个因素：短期内适合自动化测试的项目分布并不均匀。如[图3](#f3)所示，自动化测试在[测试4大活动](#测试的4大活动)中的执行阶段以及[敏捷测试4象限](#敏捷测试4象限)中的第2、第3象限才能发挥其作用。但是对于周、月维度的项目而言，能有多少项目会让自动化测试有用武之地呢？接下来发生的事情就是对自动化测试的定量指标而言，没有数据上的变化，然后坏的事情就会发生了，团队慢慢就失去了耐心……

### 误区2：只看个人效率收益
在进行自动化测试之前，大多数团队都会选择一些业务来试点，然后根据试点业务的反馈来确定是否要大范围推广。

但是，在实际试点的时候，会出现很多影响因素：例如测试人员前期没有接入测试了解，测试人员没有提前和研发人员确定接口定义，测试人员前期在跟进其他项目……

如上的因素会导致当一个测试项目到来时，测试人员没有足够的时间来消化那些需要在前期所付出的学习成本。在面对一个个紧急的项目和需要付出一定的成本时，这些试点的测试人员会自然而然的继续使用旧有的手工测试的方式来保证项目的快速跟进。

试点项目的测试人员会从自身的利益出发来选择测试方案。然后这些试点的测试人员就会汇报说：自动化测试太浪费时间了，没法提高效率。如果管理者不仔细继续和这些一线的同学深入探讨，那么最终就会根据试点同学的结论得出一个偏离事实的结论：自动化测试确实无法提升效率。

然而，上述的一些试点人员遇到的问题从本质上讲，并不是自动化测试本身的问题，这里涉及到更多的流程、沟通、协作的问题。不是自动化测试不能提升效率，而是当前的环境不允许自动化测试发挥作用。

泥泞的道路上，是马车快呢还是跑车快呢？

在所有人只从自身利益来考虑问题，而忽略其所处的环境时，就会出现这种：马车比跑车快的滑稽结论。

### 误区3：成本核算标准不一致
如前所述，自动化测试是需要学习成本的，不经历风雨怎么见彩虹？自动化测试和手工测试的ROI权衡如[图4](#f4)所示。

<span id='f4'>![](f4.png)</span>

但是在我的观察中，我发现大多数团队在核算手工测试和自动化测试的成本时采用的标准并不一致。他们会忽略：手工测试重复测试的成本，会忽略手工测试重复书写测试报告的成本……但是他们会给自动化测试追加上：上下游环境依赖成本，环境部署成本，接口定义不完备的成本，自动化用例的维护成本太大了……

点一下最简单，成本最低，点点吧。

当夜深人静的时候，你再细想这些话术、你细想……就会发现这些成本和自动化测试什么关系，手工测试不也需要这些成本吗？要是一个项目要测多轮，难不成每次都点点？OH，当然不是了，下一次只点那些上一次失败的用例就好了……OMG……

手工用例就不需要维护成本？不过从我的观察发现，确实不需要。因为有些团队压根就不写手工用例，当然就谈不上成本了。还有的团队即便有手工用例也从来不会维护，下一个同学测试类似的项目的时候，参考一下之前的用例，然后自己重新写用例。

### 误区4：不关注团队收益
在误区2中，试点项目的测试人员只根据自己的个人收益来做测试方案的选择。但是团队中的个人是相互联系的，团队内部的项目也会是连续的，而不是离散的。

某个人测试的某个项目，下一次可能就换其他人来测试了。某个短期来看不会变化的项目，可能数月之后就会修改了。项目每次都修改一点点，可能半年之后就会有上百个修改点了……

如果站在团队的角度考虑，我们团队内每个人编写的自动化用例有时候虽然对个人而言ROI很低，但是对团队的ROI却可能非常大。

如果每一个变更很小的项目都不编写自动化用例，那么当项目做大的时候怎么办？
如果每个项目都是上线后就不修改了，那当这个项目的代码要下线的时候怎么办？

当然，这些对于个人而言是无需关注的事情，因为谁知道接下来的测试还是不是你负责？但是，最终却还是这个团队来负责的，不是吗？当所有这些都没有仔细执行的时候，在遇到大的项目，在遇到团队技术重构的项目时，对于团队而言，一个怪异的现象就发生了：大多数团队都在试图寻找另外的测试方法来弥补自动化用例缺失的遗憾，比如引流测试diff测试等等。

### 误区5：自动化用例是万年不变的
因为自动化用例需要随着业务代码的迭代而迭代，而很多团队又认为这样的成本太大了。因此自动化用例就成了一堆万年不变的功能的测试用例，最终自动化就成了“形而上”般的存在。

业务代码都在不断变化，不断升级，不断迭代，凭什么自动化的用例就得万年不变，自动化的用例就不用维护？实在是想不通这里面的道理。

自动化用例的落后，会导致自动化用例无法成为业务代码的试刀石，当他变成一件附属品时，他所带来的一切就只有成本了。

### 误区6：项目迭代太快了，等稳定了再用自动化测试
这一点是我听到过的所有的谬误中最没有道理的一个了。

从[图4](#f4)中可以看出，越是大的项目，越是迭代次数多的项目，越是变化快的项目，自动化测试的收益越大。大多数团队，此时想到的更多的是快速的变化带来的是更多的自动化用例的维护成本。

但是，即便是创业公司，谁也不会在项目启动的时候就朝着把项目做烂的目标行进吧？

等项目稳定的时候，估计就是这个产品要下线的时候了。

## 自动化测试是一种文化
在考虑自动化测试的时候，需要认真的思考自动化测试的定位和目标，需要认识到自动化测试需要付出一定的成本，自动化测试还需要修改既有的研发流程，需要认识到团队的累计收益……

在考虑自动化测试的时候，还需要意识到，自动化测试一种项目文档化的手段，正所谓“测试即文档”，自动化测试还是团队内部不同测试人员有效沟通的一种手段，自动化测试更是团队积累的一种有效载体……

自我看来，自动化测试首先应该是一种工作文化，而不单纯是一种测试手段。工作文化意味着当出现问题的时候，我们的反应是我们没会使用这个工具，或者我们的使用方法不对，而不是说这个工具是有问题的。
