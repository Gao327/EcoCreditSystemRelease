# 🌱 EcoCredit - Environmental Rewards Platform

> **Transform your daily steps into environmental impact with EcoCredit - the sustainable rewards platform that makes every step count!**
> **Project Proposal:** https://docs.google.com/document/d/1RCi-FSM9fapChwiBsHO7_-ipFFZc7dsbOk6kEZoFtHs/edit?usp=sharing

## 🎯 What is EcoCredit?

EcoCredit is a comprehensive environmental rewards platform that converts your daily physical activity into credits that can be redeemed for real rewards from partner stores. Think of it as "Ant Forest meets modern rewards" - every step you take contributes to both your health and environmental sustainability.

### **🌟 Key Features:**

- **📱 Cross-Platform**: Web app + Mobile app (iOS/Android)
- **🌱 Step Tracking**: Convert 100 steps = 1 credit
- **🎁 Rewards System**: 16 rewards from 6 partner stores (placeholder)
- **🏆 Achievements**: Unlock badges and track progress
- **🎫 Vouchers**: Generate and redeem digital vouchers
- **🔐 Authentication**: Guest login + Google OAuth
- **⚡ Real-time Sync**: Both apps share the same data

## 🚀 Quick Start

### **Prerequisites:**
- Java 17 or higher
- Node.js 18 or higher (for mobile app)

### **One-Command Setup:**
```bash
# Start everything (Backend + Web App + Mobile App)
./start-ecocredit.sh
```

### **Access Your Apps:**
- **🌐 Web Application**: http://localhost:8081/app-with-auth.html
- **📱 Mobile Application**: Scan QR code with Expo Go app
- **🔧 Backend API**: http://localhost:8080/api/health



### **Credit Conversion:**
- **100 steps = 1 credit**
- **1 credit = $1 value**
- **Rewards range**: 5-50 credits
- **Daily limit**: 1000 steps = 10 credits

## 🏆 Achievement System

### **Step-Based Achievements:**
- **🌱 First Steps**: 1,000 steps
- **🚶‍♂️ Walker**: 5,000 steps
- **🏃‍♂️ Runner**: 10,000 steps
- **🏃‍♀️ Marathon**: 20,000 steps

### **Credit-Based Achievements:**
- **💰 First Credit**: Earn 1 credit
- **💎 Credit Collector**: Earn 50 credits
- **👑 Credit King**: Earn 100 credits
- **🌟 Eco Warrior**: Earn 500 credits

### **Activity-Based Achievements:**
- **🎁 First Reward**: Redeem first reward
- **🔄 Regular User**: 7 consecutive days
- **📈 Consistent**: 30 consecutive days
- **🏆 Champion**: 100 total redemptions

## 🛠️ Configuration

### **Environment Variables:**
```bash
# Backend configuration
SPRING_PROFILES_ACTIVE=dev
SERVER_PORT=8080
DATABASE_URL=jdbc:h2:mem:ecocredit
```

### **Customization:**
- **Brand Colors**: Edit theme colors in config
- **Reward Partners**: Add/modify in configuration
- **Achievement Rules**: Configure in settings
- **Credit Conversion**: Adjust ratio in config

## 🐛 Troubleshooting

### **Common Issues:**

#### **Backend Won't Start:**
```bash
# Check Java version
java -version

# Restart backend
./restart-backend.sh
```

#### **Mobile App Issues:**
```bash
# Clear Expo cache
./clear-mobile-cache.sh

# Reinstall dependencies
./reinstall-mobile-deps.sh
```

#### **Port Conflicts:**
```bash
# Kill all services
./stop-all.sh

# Restart everything
./start-ecocredit.sh
```

### **Health Checks:**
```bash
# Backend health
curl http://localhost:8080/api/health

# Web app status
curl http://localhost:8081

# Mobile app status
curl http://localhost:8082
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

- **📧 Email**: gao2351624311@gmail.com
- **🐛 Issues**: [GitHub Issues](https://github.com/gao327/ecocreditsystemrelease/issues)


## 🙏 Acknowledgments

- **Spring Boot**: Backend framework
- **React Native**: Mobile app framework
- **Expo**: Development platform
- **H2 Database**: In-memory database
- **Material Design**: UI components

---

**🌱 Make every step count with EcoCredit!**

*Built with ❤️ for a sustainable future*
