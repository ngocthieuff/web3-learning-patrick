# How do blockchains work?

### What is Hash?

A unique fixed length string, meant to identify a piece of data.
They are created by placing said data into a "hash function".

### Genesis block:

The first block in a blockchain.

### Nonce:

**nonce** - a **n**umber that can be used only **once**; a proof that you’ve indeed solved the problem by doing some work.

Let’s assume you are in grade-1. Your teacher has asked the students, in your class, to solve this problem:
<br/>
25+? = 28
<br/>
There is a chocolate to be given away to the 1st student to solve the problem. You are salivating at the thought of the chocolate, and the grey cells are starting to fire.
<br/>
You immediately get to work. Having learnt basic arithmetic, you start with a brute-force method, like this:
<br/>
25+1= 28? No…
<br/>
25+2=28? No…
<br/>
25+3=28? Yes…
<br/>
You raise your hand, give a shout and say “yes”. I’ve solved it…
<br/>
Unfortunately, some other kid has solved it before you, and walks away with the chocolate.
<br/>
The teacher also realises, that the problem was too easy for the kids. For the next chocolate, she increases the difficulty level. This time your class is asked to solve:
<br/>
345+?=379
<br/>
Now, coming back to blockchain:
<br/>
miners are like the students, competing with each other to solve a problem to earn their chocolate (block rewards paid in bitcoins)
<br/>
“3” is the nonce - a number that can be used only once; a proof that you’ve indeed solved the problem by doing some work. In the case of the school , you did the work by cranking up your brain<br/>

“28” is the difficulty level, which ensures the teacher has <br/>
a control over the number of chocolates distributed.
<br/>
Too easy = too many chocolates to be given away
<br/>
Too difficult = children will lose interest
<br/>
Blockchain uses the difficulty level to control the generation of 1 block/~ 10 minutes

### Reference:
- [Blockchain Demo](https://andersbrownworth.com/blockchain/)
- [Learn Blockchain, Solidity, and Full Stack Web3 Development with JavaScript – 32-Hour Course](https://www.youtube.com/watch?v=gyMwXuJrbJQ)
- [What is nonce in terms of blockchain technology?](https://www.quora.com/What-is-nonce-in-terms-of-blockchain-technology)