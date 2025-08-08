# 🚀 EMPIRE-11 DEPLOYMENT GUIDE

**One-Line Business Squad Deployment for Any Directory**

Transform any directory into a professional business operations center with AI-powered C-suite coordination. EMPIRE-11 provides three deployment configurations to match your business stage and needs.

## 📊 DEPLOYMENT CONFIGURATIONS

### 🟢 MINIMAL SQUAD (4 agents)
**Perfect for**: Solo entrepreneurs, startups, quick business setup

**Business Agents**:
- `@chief` - Business mission commander
- `@strategy` - Strategic advisor (SAGE)
- `@execution` - Daily execution partner (ALEX)
- `@analytics` - Business intelligence (KAI)

**Business Missions**:
- DAILY_STANDUP (15-minute coordination)
- WEEKLY_PLANNING (strategic alignment)
- QUARTERLY_REVIEW (comprehensive assessment)

**Deployment Time**: 2 minutes  
**Best For**: Getting started with systematic business operations

```bash
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s minimal
```

### 🔵 CORE SQUAD (8 agents) - RECOMMENDED
**Perfect for**: Growing businesses, professional operations, systematic management

**Business Agents**:
- **Foundation**: @chief, @strategy, @execution, @analytics
- **Revenue**: @marketing, @sales, @customer
- **Operations**: @operations

**Business Missions**:
- All Minimal missions PLUS:
- CAMPAIGN_LAUNCH (marketing coordination)
- BUSINESS_OPPORTUNITY_ASSESSMENT (opportunity evaluation)
- ISSUE_MANAGEMENT (crisis response)

**Deployment Time**: 3 minutes  
**Best For**: Established businesses ready for professional coordination

```bash
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s core
```

### 🟣 FULL C-SUITE SQUAD (12 agents)
**Perfect for**: Acquisition-ready businesses, enterprise operations, complete professionalization

**Business Agents**:
- **Foundation**: @chief, @strategy, @execution, @analytics
- **Revenue**: @marketing, @sales, @customer
- **Operations**: @operations, @content, @pr
- **Governance**: @finance, @legal

**Business Missions**:
- All Core missions PLUS:
- PRODUCT_DEVELOPMENT (product coordination)
- GROWTH_PLANNING (strategic expansion)

**Deployment Time**: 5 minutes  
**Best For**: Businesses preparing for acquisition or requiring complete C-suite coordination

```bash
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s full
```

## 🎯 DEPLOYMENT PROCESS

### Step 1: Create Your Business Project Structure
```bash
# Create a new business project directory
mkdir my-business-project && cd my-business-project

# Set up ideation documents (for new business concepts)
mkdir ideation
# Add your business seed documents:
# - vision.md (business vision and mission)
# - strategy.md (strategic framework)
# - market-research.md (market analysis)
# - brand-guidelines.md (brand identity)
# - competitors.md (competitive analysis)
# - resources.md (available resources)

# Set up legacy business materials (for existing businesses)
mkdir legacy-business
# Copy existing business folders:
# - legacy-business/financials/ (previous financial documents)
# - legacy-business/contracts/ (legal agreements)
# - legacy-business/marketing-materials/ (historical campaigns)
# - legacy-business/operational-docs/ (SOPs and processes)
# - legacy-business/customer-data/ (customer analytics)
```

### Step 2: Execute One-Line Deployment
```bash
# Choose your squad size (minimal, core, or full)
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s [SQUAD_TYPE]
```

### Step 3: Initialize Business Foundation
```bash
# Open Claude Code in your business directory
# Initialize strategic foundation and tracking systems
@chief BUSINESS-SETUP

# Begin daily operational coordination
@chief DAILY_STANDUP
```

## 🏗️ WHAT GETS DEPLOYED

### Directory Structure Created
```
your-business-project/
├── ideation/                # NEW: Business seed documents
│   ├── vision.md           # Business vision and mission
│   ├── strategy.md         # Strategic framework
│   ├── market-research.md  # Market analysis
│   └── [other seed docs]
├── legacy-business/         # NEW: Existing business materials
│   ├── financials/         # Previous financial documents
│   ├── contracts/          # Legal agreements
│   ├── marketing-materials/# Historical campaigns
│   └── [other legacy folders]
├── .claude/
│   ├── config.json         # Claude Code integration
│   └── agents/             # Your business squad
├── missions/               # Business workflow library
├── business/               # Professional document organization
│   ├── strategy/
│   ├── marketing/
│   ├── sales/
│   └── [other areas based on squad size]
├── templates/              # Business templates
├── progress.md             # NEW: Milestone tracking
├── project-plan.md         # NEW: Strategic roadmap
└── README.md              # Business operations guide
```

### Claude Code Configuration
Automatically configures Claude Code with your business squad:
- Agent definitions with personalities and specializations
- Mission workflows for systematic business coordination
- Professional business document organization
- Zero-configuration startup

### Business Infrastructure
Professional business document structure:
- Area-based organization (Strategy, Marketing, Sales, etc.)
- [Area]-[Type]-[Topic] naming conventions
- Acquisition-ready documentation standards
- Professional templates and examples

## 🔧 ADVANCED DEPLOYMENT OPTIONS

### Custom Squad Configuration
```bash
# Deploy to specific directory
cd /custom/path && curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s core

# Verify deployment
ls -la .claude/config.json agents/ missions/
```

### Multi-Business Setup
```bash
# Business A
mkdir business-a && cd business-a
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s core

# Business B  
mkdir ../business-b && cd ../business-b
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s full
```

### Development vs Production
```bash
# Development/Testing
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s minimal

# Production Operations
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s full
```

## 🚀 POST-DEPLOYMENT WORKFLOW

### Immediate Operations (15 minutes)
1. **Add Seed Documents** to ideation/ folder (vision, strategy, market research)
2. **Copy Legacy Materials** to legacy-business/ folder (if applicable)
3. **Open Claude Code** in your business directory
4. **Initialize Business Foundation**: `@chief BUSINESS-SETUP`
5. **Begin Daily Coordination**: `@chief DAILY_STANDUP`

### First Week Setup (30 minutes)
1. **Complete WEEKLY_PLANNING** mission for strategic alignment
2. **Load Revenue Squad** (@marketing @sales @customer) if using core/full
3. **Execute CAMPAIGN_LAUNCH** for first systematic marketing coordination
4. **Document Business Strategy** using generated templates

### Full Professional Operations (Ongoing)
1. **Daily**: DAILY_STANDUP missions (15 minutes)
2. **Weekly**: WEEKLY_PLANNING missions (60 minutes)
3. **Monthly**: BUSINESS_OPPORTUNITY_ASSESSMENT as needed
4. **Quarterly**: QUARTERLY_REVIEW missions (4-6 hours)

## 🔄 UPGRADING SQUADS

### From Minimal to Core
```bash
# In your existing business directory
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s core
```

### From Core to Full
```bash
# In your existing business directory  
curl -sSL https://raw.githubusercontent.com/TheWayWithin/empire-11/main/deployment/scripts/install.sh | bash -s full
```

**Note**: Upgrading preserves existing business documents and adds new agents/missions without disruption.

## 🛠️ TROUBLESHOOTING

### Common Issues

**Permission Denied**
```bash
# Ensure curl has proper permissions
curl --version
# If issues, try: sudo curl -sSL ... (not recommended)
```

**Directory Already Exists**
```bash
# EMPIRE-11 merges safely with existing directories
# Existing files are preserved, new infrastructure added
```

**Claude Code Not Recognizing Agents**
```bash
# Verify .claude/config.json exists
cat .claude/config.json

# Restart Claude Code and re-open directory
```

### Support Resources
- **Documentation**: Check README.md, USER-GUIDE.md in your directory
- **Mission Library**: Review missions/library.md for all workflows
- **Community**: GitHub Discussions for deployment support

## 📊 DEPLOYMENT COMPARISON

| Feature | Minimal | Core | Full |
|---------|---------|------|------|
| **Agents** | 4 | 8 | 12 |
| **Missions** | 3 | 6 | 8 |
| **Deploy Time** | 2 min | 3 min | 5 min |
| **Use Case** | Startup | Growing | Enterprise |
| **Coordination** | Basic | Professional | C-Suite |
| **Acquisition Ready** | No | Partial | Yes |

---

**🏢 Transform any directory into a professional business operations center in under 5 minutes.**

Choose your squad size and deploy immediately with zero learning curve.