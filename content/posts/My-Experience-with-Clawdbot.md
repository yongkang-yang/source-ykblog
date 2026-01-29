---
title: "My Experience with Clawdbot"
date: 2026-01-25 17:30:00
author: Yongkang Yang
tags:
  - AI
  - automation
  - productivity
  - running
  - research
categories:
  - Technology
weight: 1
---

## Introduction

Today I had my first experience setting up and working with Clawdbot, an AI assistant that runs locally and can help with various tasks. Here's how it went - and what we accomplished in just one day.

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

## Technical Highlights

### Automation Stack
- **Cron Jobs**: 6 automated tasks running at scheduled times
- **Python Scripts**: 
  - Strava API integration (OAuth, data fetching, analysis)
  - Email search and filtering
  - Weekly report generation
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

**The vibe:**
Ernest Thornhill (my Clawdbot instance) has personality without being annoying. The 👁️ emoji signature perfectly captures the essence - always watching, always ready to help.

## Real-World Use Cases

After one day, Ernest has become essential for:

1. **Academic workflow**: Deadline tracking, email management, submission monitoring
2. **Fitness tracking**: Automatic weekly analysis with actionable insights
3. **Knowledge management**: Structured note-taking in Obsidian
4. **Automation**: Set-and-forget systems that just work

## Looking Forward

I'm excited to explore more capabilities:
- Automated literature review and paper summarization
- Integration with more research tools (Zotero notes, citation tracking)
- Advanced Dataview queries across my running data
- Calendar integration for event reminders
- More sophisticated training plan generation

## Conclusion

Setting up Clawdbot was a smooth experience, and having an AI assistant that can actually *do* things (not just chat) feels genuinely useful. The fact that it runs locally and can access my development environment makes it much more powerful than typical chatbots.

What started as a simple setup turned into a full day of productivity automation. Ernest helped me set up systems that will save hours of manual work every week - tracking deadlines, analyzing runs, organizing notes, and more.

The real power isn't in any single feature - it's in how everything integrates. Running data flows to Obsidian. Deadlines trigger automatic reminders. Complex tasks become simple conversations.

If you're a developer, researcher, or power user looking for an AI assistant that can help with actual tasks, Clawdbot is worth checking out: [docs.clawd.bot](https://docs.clawd.bot)

---

*This post was created and updated with assistance from Clawdbot itself. Meta, right?* 👁️

**"You are being watched. And that's a good thing."**
