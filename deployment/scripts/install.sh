#!/bin/bash

# EMPIRE-11 One-Line Business Squad Deployment
# Transforms any directory into an AI-powered business operations center

set -e

EMPIRE_VERSION="1.0.0"
REPO_URL="https://raw.githubusercontent.com/TheWayWithin/empire-11/main"

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Squad configurations
SQUAD_TYPE="${1:-core}"

print_header() {
    echo ""
    echo -e "${PURPLE}🏢 EMPIRE-11: AI-Powered Business Operations Suite${NC}"
    echo -e "${PURPLE}=================================================${NC}"
    echo -e "${CYAN}Version: ${EMPIRE_VERSION}${NC}"
    echo -e "${CYAN}Deployment: Business-Local · Professional Operations · Acquisition-Ready${NC}"
    echo ""
}

print_squad_info() {
    case $SQUAD_TYPE in
        "minimal")
            echo -e "${YELLOW}📋 MINIMAL BUSINESS SQUAD (4 agents)${NC}"
            echo "   Perfect for: Solo entrepreneurs, startups, quick business setup"
            echo "   Agents: @chief, @strategy, @execution, @analytics"
            echo "   Missions: Daily coordination, strategic planning, execution tracking"
            ;;
        "core")
            echo -e "${GREEN}🎯 CORE BUSINESS SQUAD (8 agents) - RECOMMENDED${NC}"
            echo "   Perfect for: Growing businesses, professional operations, systematic management"
            echo "   Agents: Core 4 + @marketing, @sales, @customer, @operations"
            echo "   Missions: Complete business operations with customer lifecycle management"
            ;;
        "full")
            echo -e "${BLUE}🚀 FULL C-SUITE SQUAD (12 agents)${NC}"
            echo "   Perfect for: Established businesses, acquisition preparation, enterprise operations"
            echo "   Agents: All 12 specialists including @content, @pr, @finance, @legal"
            echo "   Missions: Complete professional business management and compliance"
            ;;
        *)
            echo -e "${RED}❌ Unknown squad type: $SQUAD_TYPE${NC}"
            echo "Available options: minimal, core, full"
            exit 1
            ;;
    esac
    echo ""
}

check_requirements() {
    echo -e "${CYAN}🔍 Checking business deployment requirements...${NC}"
    
    # Check if we're in a directory (any directory works for business operations)
    if [ ! -d "$(pwd)" ]; then
        echo -e "${RED}❌ Invalid directory. Please navigate to your business workspace.${NC}"
        exit 1
    fi
    
    # Check for required tools
    if ! command -v curl &> /dev/null; then
        echo -e "${RED}❌ curl is required but not installed.${NC}"
        exit 1
    fi
    
    if ! command -v mkdir &> /dev/null; then
        echo -e "${RED}❌ mkdir is required but not installed.${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}✅ Requirements satisfied${NC}"
    echo ""
}

create_directory_structure() {
    echo -e "${CYAN}🏗️ Creating professional business infrastructure...${NC}"
    
    # Core directories for business operations
    mkdir -p .claude/{agents,commands}
    mkdir -p agents
    mkdir -p missions
    mkdir -p business/{strategy,marketing,sales,customer,operations,finance,legal,analytics,content,pr,projects}
    mkdir -p docs
    mkdir -p templates
    
    echo -e "${GREEN}✅ Business directory structure created${NC}"
}

download_file() {
    local url="$1"
    local output="$2"
    local description="$3"
    
    if curl -sSL "$url" -o "$output" 2>/dev/null; then
        echo -e "${GREEN}✅ $description${NC}"
        return 0
    else
        echo -e "${YELLOW}⚠️ Optional: $description (skipped)${NC}"
        return 1
    fi
}

deploy_claude_config() {
    echo -e "${CYAN}⚙️ Configuring Claude Code integration...${NC}"
    
    # Create Claude Code configuration based on squad type
    case $SQUAD_TYPE in
        "minimal")
            cat > .claude/config.json << 'EOF'
{
  "name": "EMPIRE-11-MINIMAL",
  "description": "AI-Powered Business Operations - Minimal Squad (6 agents)",
  "agents": [
    {
      "name": "chief",
      "description": "Business mission commander - Pure coordination and strategic oversight",
      "path": ".claude/agents/chief.md"
    },
    {
      "name": "strategy", 
      "description": "Strategic advisor (SAGE) - Strategic planning and acquisition readiness",
      "path": ".claude/agents/strategy.md"
    },
    {
      "name": "execution",
      "description": "Daily execution partner (ALEX) - Productivity optimization and task coordination", 
      "path": ".claude/agents/execution.md"
    },
    {
      "name": "analytics",
      "description": "Business intelligence (KAI) - Data analysis and performance tracking",
      "path": ".claude/agents/analytics.md"
    },
    {
      "name": "coordinator",
      "description": "Mission orchestration - /coord command for systematic business operations",
      "path": ".claude/agents/coordinator.md"
    },
    {
      "name": "meeting-facilitator",
      "description": "Conversational planning - /meeting command for strategic discussions",
      "path": ".claude/agents/meeting-facilitator.md"
    }
  ]
}
EOF
            ;;
        "core")
            cat > .claude/config.json << 'EOF'
{
  "name": "EMPIRE-11-CORE", 
  "description": "AI-Powered Business Operations - Core Squad (10 agents)",
  "agents": [
    {
      "name": "chief",
      "description": "Business mission commander - Pure coordination and strategic oversight",
      "path": ".claude/agents/chief.md"
    },
    {
      "name": "strategy",
      "description": "Strategic advisor (SAGE) - Strategic planning and acquisition readiness", 
      "path": ".claude/agents/strategy.md"
    },
    {
      "name": "execution",
      "description": "Daily execution partner (ALEX) - Productivity optimization and task coordination",
      "path": ".claude/agents/execution.md"
    },
    {
      "name": "analytics", 
      "description": "Business intelligence (KAI) - Data analysis and performance tracking",
      "path": ".claude/agents/analytics.md"
    },
    {
      "name": "marketing",
      "description": "Marketing strategist (ASTRA) - Brand development and customer acquisition",
      "path": ".claude/agents/marketing.md"
    },
    {
      "name": "sales",
      "description": "Revenue operations (NOVA) - Sales strategy and pipeline management", 
      "path": ".claude/agents/sales.md"
    },
    {
      "name": "customer",
      "description": "Customer success (LUNA) - Customer retention and satisfaction optimization",
      "path": ".claude/agents/customer.md"
    },
    {
      "name": "operations",
      "description": "Operations manager (PHOENIX) - Process optimization and operational efficiency",
      "path": ".claude/agents/operations.md"
    },
    {
      "name": "coordinator",
      "description": "Mission orchestration - /coord command for systematic business operations",
      "path": ".claude/agents/coordinator.md"
    },
    {
      "name": "meeting-facilitator",
      "description": "Conversational planning - /meeting command for strategic discussions",
      "path": ".claude/agents/meeting-facilitator.md"
    }
  ]
}
EOF
            ;;
        "full")
            cat > .claude/config.json << 'EOF'
{
  "name": "EMPIRE-11-FULL",
  "description": "AI-Powered Business Operations - Full C-Suite Squad (14 agents)", 
  "agents": [
    {
      "name": "chief",
      "description": "Business mission commander - Pure coordination and strategic oversight",
      "path": ".claude/agents/chief.md"
    },
    {
      "name": "strategy",
      "description": "Strategic advisor (SAGE) - Strategic planning and acquisition readiness",
      "path": ".claude/agents/strategy.md"
    },
    {
      "name": "execution", 
      "description": "Daily execution partner (ALEX) - Productivity optimization and task coordination",
      "path": ".claude/agents/execution.md"
    },
    {
      "name": "analytics",
      "description": "Business intelligence (KAI) - Data analysis and performance tracking",
      "path": ".claude/agents/analytics.md"
    },
    {
      "name": "marketing",
      "description": "Marketing strategist (ASTRA) - Brand development and customer acquisition",
      "path": ".claude/agents/marketing.md"
    },
    {
      "name": "sales",
      "description": "Revenue operations (NOVA) - Sales strategy and pipeline management",
      "path": ".claude/agents/sales.md"
    },
    {
      "name": "customer",
      "description": "Customer success (LUNA) - Customer retention and satisfaction optimization", 
      "path": ".claude/agents/customer.md"
    },
    {
      "name": "operations",
      "description": "Operations manager (PHOENIX) - Process optimization and operational efficiency",
      "path": ".claude/agents/operations.md"
    },
    {
      "name": "content",
      "description": "Content director (BOB) - Content strategy and thought leadership development",
      "path": ".claude/agents/content.md"
    },
    {
      "name": "pr",
      "description": "Public relations (ECHO) - PR strategy and reputation management", 
      "path": ".claude/agents/pr.md"
    },
    {
      "name": "finance",
      "description": "Financial operations (ZARA) - Financial planning and budget management",
      "path": ".claude/agents/finance.md"
    },
    {
      "name": "legal",
      "description": "Legal & risk management (REX) - Legal compliance and risk assessment",
      "path": ".claude/agents/legal.md"
    },
    {
      "name": "coordinator",
      "description": "Mission orchestration - /coord command for systematic business operations",
      "path": ".claude/agents/coordinator.md"
    },
    {
      "name": "meeting-facilitator",
      "description": "Conversational planning - /meeting command for strategic discussions",
      "path": ".claude/agents/meeting-facilitator.md"
    }
  ]
}
EOF
            ;;
    esac
    
    echo -e "${GREEN}✅ Claude Code configuration created${NC}"
}

deploy_agents() {
    echo -e "${CYAN}🤖 Deploying business agents...${NC}"
    
    # Always deploy core agents
    CORE_AGENTS=("chief" "strategy" "execution" "analytics")
    EXTENDED_AGENTS=("marketing" "sales" "customer" "operations") 
    FULL_AGENTS=("content" "pr" "finance" "legal")
    COMMAND_AGENTS=("coordinator" "meeting-facilitator")
    
    # Deploy based on squad type
    case $SQUAD_TYPE in
        "minimal")
            AGENTS_TO_DEPLOY=("${CORE_AGENTS[@]}" "${COMMAND_AGENTS[@]}")
            ;;
        "core")
            AGENTS_TO_DEPLOY=("${CORE_AGENTS[@]}" "${EXTENDED_AGENTS[@]}" "${COMMAND_AGENTS[@]}")
            ;;
        "full")
            AGENTS_TO_DEPLOY=("${CORE_AGENTS[@]}" "${EXTENDED_AGENTS[@]}" "${FULL_AGENTS[@]}" "${COMMAND_AGENTS[@]}")
            ;;
    esac
    
    # Deploy to correct Claude Code directory
    for agent in "${AGENTS_TO_DEPLOY[@]}"; do
        download_file "$REPO_URL/agents/${agent}.md" ".claude/agents/${agent}.md" "Agent: @${agent}"
        # Also deploy to legacy agents/ for backward compatibility
        download_file "$REPO_URL/agents/${agent}.md" "agents/${agent}.md" "Agent: @${agent} (legacy)"
    done
    
    echo ""
}

deploy_missions() {
    echo -e "${CYAN}🎯 Deploying business missions...${NC}"
    
    # Core missions for all squad types
    CORE_MISSIONS=("daily-standup" "weekly-planning" "quarterly-review")
    EXTENDED_MISSIONS=("campaign-launch" "business-opportunity-assessment" "issue-management")
    FULL_MISSIONS=("product-development" "growth-planning")
    
    # Deploy based on squad type  
    case $SQUAD_TYPE in
        "minimal")
            MISSIONS_TO_DEPLOY=("${CORE_MISSIONS[@]}")
            ;;
        "core")
            MISSIONS_TO_DEPLOY=("${CORE_MISSIONS[@]}" "${EXTENDED_MISSIONS[@]}")
            ;;
        "full")
            MISSIONS_TO_DEPLOY=("${CORE_MISSIONS[@]}" "${EXTENDED_MISSIONS[@]}" "${FULL_MISSIONS[@]}")
            ;;
    esac
    
    for mission in "${MISSIONS_TO_DEPLOY[@]}"; do
        download_file "$REPO_URL/missions/${mission}.md" "missions/${mission}.md" "Mission: ${mission}"
    done
    
    # Always include mission library
    download_file "$REPO_URL/missions/library.md" "missions/library.md" "Mission Library"
    
    echo ""
}

deploy_documentation() {
    echo -e "${CYAN}📚 Deploying business documentation...${NC}"
    
    # Essential documentation for all deployments
    download_file "$REPO_URL/QUICK-START.md" "QUICK-START.md" "Quick Start Guide"
    download_file "$REPO_URL/USER-GUIDE.md" "USER-GUIDE.md" "User Guide" 
    download_file "$REPO_URL/MISSION-LIBRARY.md" "MISSION-LIBRARY.md" "Mission Library Guide"
    
    # Extended documentation for core and full
    if [ "$SQUAD_TYPE" != "minimal" ]; then
        download_file "$REPO_URL/INSTALLATION.md" "INSTALLATION.md" "Installation Guide"
        download_file "$REPO_URL/INTEGRATION-GUIDE.md" "INTEGRATION-GUIDE.md" "Integration Guide"
    fi
    
    # Full documentation for full squad
    if [ "$SQUAD_TYPE" = "full" ]; then
        download_file "$REPO_URL/API-REFERENCE.md" "API-REFERENCE.md" "API Reference"
        download_file "$REPO_URL/TROUBLESHOOTING.md" "TROUBLESHOOTING.md" "Troubleshooting Guide"
        download_file "$REPO_URL/CONTRIBUTING.md" "CONTRIBUTING.md" "Contributing Guide"
    fi
    
    echo ""
}

create_readme() {
    echo -e "${CYAN}📝 Creating business operations README...${NC}"
    
    cat > README.md << EOF
# EMPIRE-11 Business Operations Center 🏢

**AI-Powered Business Management Deployed Locally**

This directory has been transformed into a professional business operations center using EMPIRE-11 ${SQUAD_TYPE} squad deployment.

## 🚀 IMMEDIATE NEXT STEPS

### 1. Load Your Business Squad
In Claude Code, your business agents are ready:
EOF

    case $SQUAD_TYPE in
        "minimal")
            cat >> README.md << 'EOF'
- **@chief** - Business mission commander
- **@strategy** - Strategic advisor (SAGE)
- **@execution** - Daily execution partner (ALEX) 
- **@analytics** - Business intelligence (KAI)
EOF
            ;;
        "core")
            cat >> README.md << 'EOF'
- **@chief** - Business mission commander
- **@strategy** - Strategic advisor (SAGE)
- **@execution** - Daily execution partner (ALEX)
- **@analytics** - Business intelligence (KAI)
- **@marketing** - Marketing strategist (ASTRA)
- **@sales** - Revenue operations (NOVA)
- **@customer** - Customer success (LUNA)
- **@operations** - Operations manager (PHOENIX)
EOF
            ;;
        "full")
            cat >> README.md << 'EOF'
- **@chief** - Business mission commander
- **@strategy** - Strategic advisor (SAGE)
- **@execution** - Daily execution partner (ALEX)
- **@analytics** - Business intelligence (KAI)
- **@marketing** - Marketing strategist (ASTRA)
- **@sales** - Revenue operations (NOVA)
- **@customer** - Customer success (LUNA)
- **@operations** - Operations manager (PHOENIX)
- **@content** - Content director (BOB)
- **@pr** - Public relations (ECHO)
- **@finance** - Financial operations (ZARA)
- **@legal** - Legal & risk management (REX)
EOF
            ;;
    esac

    cat >> README.md << 'EOF'

### 2. Execute Your First Business Mission
```
@chief DAILY_STANDUP
```
Result: 15-minute structured business coordination

### 3. Scale Your Operations
Execute missions like `WEEKLY_PLANNING`, `CAMPAIGN_LAUNCH`, or `QUARTERLY_REVIEW` for systematic business management.

## 📁 BUSINESS INFRASTRUCTURE

- **agents/** - Your AI business team
- **missions/** - Business operation workflows  
- **business/** - Professional business document organization
- **docs/** - Business operations documentation

## 🎯 AVAILABLE MISSIONS

Check `missions/library.md` for complete mission workflows and `MISSION-LIBRARY.md` for detailed guidance.

## 📚 DOCUMENTATION

- **QUICK-START.md** - 15-minute deployment guide
- **USER-GUIDE.md** - Complete business operations manual
- **MISSION-LIBRARY.md** - All mission workflows

---

**🏢 Your business is now systematically managed with AI-powered C-suite coordination.**

*Deployed with EMPIRE-11 v1.0.0*
EOF

    echo -e "${GREEN}✅ Business README created${NC}"
    echo ""
}

print_success() {
    echo -e "${GREEN}🎉 EMPIRE-11 BUSINESS SQUAD DEPLOYED SUCCESSFULLY!${NC}"
    echo ""
    echo -e "${PURPLE}📊 DEPLOYMENT SUMMARY:${NC}"
    
    case $SQUAD_TYPE in
        "minimal")
            echo -e "${YELLOW}   • 6 Business Agents deployed (+ /coord + /meeting)${NC}"
            echo -e "${YELLOW}   • 3 Core business missions${NC}"
            ;;
        "core")
            echo -e "${GREEN}   • 10 Business Agents deployed (+ /coord + /meeting)${NC}"
            echo -e "${GREEN}   • 6 Business missions${NC}"
            ;;
        "full")
            echo -e "${BLUE}   • 14 Business Agents deployed (Full C-Suite + Commands)${NC}"
            echo -e "${BLUE}   • 8 Complete business missions${NC}"
            ;;
    esac
    
    echo -e "${CYAN}   • Professional business infrastructure created${NC}"
    echo -e "${CYAN}   • Claude Code integration configured${NC}"
    echo -e "${CYAN}   • Documentation and guides included${NC}"
    echo ""
    echo -e "${PURPLE}🚀 IMMEDIATE NEXT STEPS:${NC}"
    echo -e "${WHITE}1. Open Claude Code in this directory${NC}"
    echo -e "${WHITE}2. Execute systematic business operations: /coord daily_standup${NC}"
    echo -e "${WHITE}3. Strategic planning discussions: /meeting @strategy${NC}"
    echo -e "${WHITE}4. Interactive mission selection: /coord${NC}"
    echo ""
    echo -e "${GREEN}✨ Your business is now systematically managed with AI-powered coordination!${NC}"
    echo -e "${CYAN}💡 Commands: /coord for missions, /meeting for strategic discussions${NC}"
    echo ""
}

# Main deployment flow
main() {
    print_header
    print_squad_info
    check_requirements
    create_directory_structure
    deploy_claude_config
    deploy_agents
    deploy_missions
    deploy_documentation
    create_readme
    print_success
}

# Execute main function
main "$@"