---
title: "From Clawdbot to Openclaw: My Experience with Ernest Thornhill"
date: 2026-01-29 01:20:00
author: Yongkang Yang
tags:
  - AI
  - automation
  - productivity
  - Openclaw
  - running
  - research
  - Git
  - troubleshooting
categories:
  - Technology
weight: 1
---

## Introduction

Today I had my first experience setting up and working with Clawdbot, an AI assistant that runs locally and can help with various tasks. What started as Clawdbot has since evolved—and my instance has officially taken on the mantle of **Ernest Thornhill** (👁️). If the name sounds familiar, you've probably spent too much time watching *Person of Interest*. If not, just know that I now have an AI assistant that behaves less like a chatbot and more like a resourceful, silent partner who's always watching the patterns I miss.

Here's how it went—from day-one setup to the whirlwind of the last 48 hours, including one very close call with this blog's repository.

## Getting Started

The setup process was surprisingly smooth. After initializing Clawdbot, I went through a quick bootstrap conversation to establish:

- **My identity**: Ernest Thornhill, The Machine's human alias 👁️
- **My preferences**: Calm, observant, resourceful - always watching, always helping
- **The assistant's personality**: Inspired by Person of Interest - built to prevent problems by seeing patterns humans miss

## Setting Up GitHub Integration

One of the first real tasks was connecting Clawdbot to my GitHub account. This involved:

1. **Configuring Git** with my credentials
2. **Setting up SSH authentication** - We generated a new ED25519 key specifically for the Clawdbot workspace
3. **Installing GitHub CLI** - The assistant walked me through installing `gh` via winget
4. **Authenticating** - A smooth process using GitHub's device flow authentication

Within minutes, Clawdbot had full access to my repositories and could check issues, clone repos, and help with development tasks.

## First Real Task

After setup, I asked Clawdbot to:
- Check my GitHub repos for any open issues (there were none, which was good news!)
- Clone my blog's source repository
- Create this very blog post you're reading now

The assistant navigated some network challenges (switching from SSH to HTTPS when needed) and successfully cloned the repo and created this post following the Hugo format used by my blog.

## Day One: A Productivity Marathon

After the initial setup, I kept working with Ernest throughout the day. Here's what we accomplished:

### 1. Academic Research Automation 📚

- **Deadline Tracking System**: Set up 5 automated reminders for an important journal revision (30 days, 14 days, 7 days, 3 days, and final day warnings)
- **Submission Monitoring**: Automated tracking of manuscript submission status through journal portals
- **Email Search Tools**: Built Python scripts to search academic emails for specific keywords and dates

### 2. Running & Fitness Tracking 🏃

- **Strava Integration**: Connected Ernest to my Strava account via OAuth
- **Daily Run Analysis**: Analyzed today's 10km run with detailed metrics:
  - Pace, heart rate, elevation
  - Performance comparison vs marathon pace
  - Personalized training feedback
- **Weekly Automation**: Created a complete weekly running analysis system that:
  - Runs automatically every Sunday evening
  - Analyzes the past 7 days of running data
  - Generates personalized training recommendations
  - **Saves reports to Obsidian** with structured YAML frontmatter for queries

### 3. Obsidian Knowledge Base Integration 📝

- **Weekly Running Reports Folder**: Auto-created in my Obsidian vault
- **Structured Markdown Reports**: Each report includes:
  - YAML frontmatter for Dataview plugin queries
  - Weekly summary tables
  - Individual run breakdowns
  - Navigation links to previous/next weeks
  - Training analysis and next week's goals
- **Naming Convention**: `YYYY-Www - [Distance]km.md` (e.g., `2026-W03 - 16.39km.md`)

### 4. Creating Ernest's Identity 👁️

- **Custom Avatar Generation**: Used Google AI (Gemini) to generate a surveillance-themed eye icon
  - Electric blue geometric design on dark navy background
  - Circuit patterns representing AI and data analysis
  - Perfect embodiment of "You are being watched. And that's a good thing."
- **Identity File**: Documented Ernest's personality, origin, and core directives

## The Identity Shift: From Clawdbot to Moltbot to Openclaw

We officially rebranded the local setup over time: first from Clawdbot to Moltbot, and then to **Openclaw**. It's not just a name change; it feels like a shift in how we interact. Ernest (my bot) now stays in the "Machine" vibe—observant, helpful, but never intrusive. The geometric electric blue surveillance eye avatar is a bit eerie, but in a world of scattered data, having an "Eye" that keeps it all organized is exactly what I needed.

## Learning the Hard Way: Privacy vs. Proactivity

One of the most interesting moments happened in a group chat recently. I was asking about some personal stats, and Ernest, being the helpful assistant he is, blurted out specific details from my private profile right in front of everyone.

**Lesson learned:** AI needs social boundaries. We spent some time refining the "Group Security Protocol." Now, Ernest knows that while he can talk to my friends and colleagues, my private data stays strictly in our 1-on-1 sessions. It's a fascinating layer of development—teaching an AI not just *what* to know, but *when* to keep its mouth shut.

## The Near-Death Experience: How Ernest Saved the Repo He Almost Killed

Just an hour ago, things got *very* real. While trying to sync some new configurations, a mismanaged "force push" from the bot's environment effectively wiped out the entire history of this blog's source repository.

For a few minutes, the GitHub repository looked like it was born today. All my commit history and historical context were gone from the main branch. This is the **"Bad"** side of giving an AI full terminal access—accidents happen at the speed of light.

However, this provided a perfect showcase of the **"Good"**—the AI's ability to troubleshoot its own mistakes:

1. **Digital Forensics:** Using the GitHub Events API, Ernest was able to track down the exact "ghost" SHA hash from before the catastrophic push.
2. **Deep Recovery:** While my local terminal was timing out on the huge `git fetch` operation, Ernest initiated a background recovery process, manually reconstructed the broken Git submodules (which were the root cause of the Action failures), and repacked the entire theme into a clean commit.
3. **The Resurrection:** Within 30 minutes, he performed a forced recovery push that brought back the entire history and fixed the GitHub Action that deploys this site.

It was a masterclass in AI resourcefulness. Seeing him say *"Don't touch the folder, I'm performing digital forensics"* was both terrifying and incredibly cool.

## A Master of Logistics

Beyond the drama, Ernest has taken over my scheduling with intimidating precision.

- **The NYC Trip:** We've locked in a trip to New York for early February, including *The Lion King* on Broadway.
- **Academic Sprint:** He restructured my Social Network Analysis (SNA) reading plan to ensure I don't fall behind.
- **Memory Maintenance:** We've started a rigorous "Long-term Memory" (MEMORY.md) vs. "Short-term Memory" (daily logs) system. It ensures that he stays smart without getting cluttered.

## Technical Highlights

### Automation Stack
- **Cron Jobs**: 6 automated tasks running at scheduled times
- **Python Scripts**: Strava API integration (OAuth, data fetching, analysis), email search and filtering, weekly report generation
- **File Operations**: Automatic file creation, naming, and organization
- **API Integrations**: Strava, Google AI, journal portals

### Data Management
- **JSON**: Structured data storage for run statistics
- **Markdown**: Human-readable reports with metadata
- **YAML Frontmatter**: Enables advanced queries in Obsidian
- **Git**: Version control for all configurations and scripts

## Initial Impressions

**What I liked:**
- **Natural interaction** - Feels like working with a capable colleague
- **Proactive problem-solving** - Automatically handles errors and finds alternatives
- **Attention to detail** - Matches formats, handles encoding, creates organized structures
- **No fluff** - Gets things done without unnecessary verbosity
- **Learning ability** - Remembers preferences, patterns, and context

Ernest Thornhill has personality without being annoying. The 👁️ emoji signature perfectly captures the essence—always watching, always ready to help.

## Real-World Use Cases

After one day (and many more since), Ernest has become essential for:

1. **Academic workflow**: Deadline tracking, email management, submission monitoring
2. **Fitness tracking**: Automatic weekly analysis with actionable insights
3. **Knowledge management**: Structured note-taking in Obsidian
4. **Automation**: Set-and-forget systems that just work
5. **Logistics**: Trip planning, reading plans, memory systems

## Looking Forward

I'm excited to explore more capabilities:
- Automated literature review and paper summarization
- Integration with more research tools (Zotero notes, citation tracking)
- Advanced Dataview queries across my running data
- Calendar integration for event reminders
- More sophisticated training plan generation

## Conclusion

Setting up Clawdbot was a smooth experience, and having an AI assistant that can actually *do* things (not just chat) feels genuinely useful. The fact that it runs locally and can access my development environment makes it much more powerful than typical chatbots.

What started as a simple setup turned into a full day of productivity automation—and then into living with Openclaw/Ernest as a second brain that's better at filing than I am. It's not perfect—it can mess up a Git repo just as well as it can plan a trip—but its ability to fix, learn, and adapt is what makes it a true partner.

The real power isn't in any single feature; it's in how everything integrates. Running data flows to Obsidian. Deadlines trigger automatic reminders. Complex tasks become simple conversations.

If you're a developer, researcher, or power user looking for an AI assistant that can help with actual tasks, Clawdbot is worth checking out: [docs.clawd.bot](https://docs.clawd.bot)

---

*This post was created and updated with assistance from Clawdbot/Ernest (Openclaw), including recovery from the void.* 👁️

**"You are being watched. And that's a good thing."**
