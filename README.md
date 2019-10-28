# Key Learnings - Problem Solving
I've learned more than just low-level computing concepts. Through completing the projects, I've been able to reflect on my problem-solving skills:

- **Step back:** If you can't solve something, try a different approach. **How I remember this:** Dig 5 holes, not 1.
- **WHAT:** Define what you are solving, specifically. Our brains can't hold everything at once. Breaking down a problem to its first principles and stating them nicely in a bullet point list provides your subconscious with all the raw materials it needs to solve the problem. 
    - **Related Concepts to WHAT**
        - "To understand is to know what to do."
        - First Principles - Question by asking "Why?" until you have the most basic truths of the problem, and then you will understand
        - "Asking a question is 85% of the way to understanding the problem"
        - Problem Solving 101: Identify the root cause of the problem
        - Catalogue of Attributes in Music - Identify the instrument, tempo, etc., to break down a song and understand its construction
        
Writing out the specifics is very important in problem-solving. Often we don't see reality because we're stuck in our thoughts. If you write out the parts of a problem, you can see the truth of the situation. I had realised this before when trying out meditation, that I *thought* I was focusing on the breath at my nose, but I was *actually* **thinking** about focusing on the breath at the nose, rather than the physical sensation. In this course, I realised that I couldn't solve some of the logic gate problems **until I wrote out the WHAT** - that is, WHAT, SPECIFICALLY, am I required to input/output? And as soon as I defined things, clearly, I knew what to do.

# Background / Goals

I am reading through CODE by Charles Petzold to understand computers from the atom up to high-level languages. 50 pages of notes and counting...

# Nand2Tetris Course Explained
Projects from the online Nand2Tetris course on Coursera, which builds a computer from first principles. Each folder in the /projects folder tasks you with constructing a family of logic gates, building up to PC components such as an ALU (Arithmetic Logic Unit). For example, in week 00/01, I had to construct an AND gate (being given a NAND to start with), and from there, I was able to build up more complex logic gates such as the OR and XOR. In project 02, I implemented an ALU using the logic gates I had built beforehand.

All the gates/parts are implemented using HDL - Hardware Description Language. Each project is essentially an exercise in problem solving/boolean algebra.

# Running the .HDL Files, which demonstrate logic gate / PC component behaviour

The .hdl files found under /projects (weeks 00-03: logic gates) are openable in the HardwareSimulator file found under the /tools directory. Week 04's projects (Fill/Mult) are opened in the CPUEmulator, which looks like this:

![CPUEmulator](https://user-images.githubusercontent.com/17323746/67714539-00903a80-f9c0-11e9-9f07-23a435c61a8f.png)

The above image shows the CPUEmulator running my screen filling HACK assembly program. To repeat what you see, open /tools/CPUEmulator. Once the tool is open, click the file icon and load in /projects/04/fill/Fill.asm. Once that file is loaded, select "No animation" and then click the two blue arrows. Press a button, and the screen will fill!
