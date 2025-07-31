# 🌱 EcoCredit - Environmental Rewards Platform

> **Transform your daily steps into environmental impact with EcoCredit - the sustainable rewards platform that makes every step count!**

## 🎯 What is EcoCredit?

EcoCredit is a comprehensive environmental rewards platform that converts your daily physical activity into credits that can be redeemed for real rewards from partner stores. Think of it as "Ant Forest meets modern rewards" - every step you take contributes to both your health and environmental sustainability.

### **🌟 Key Features:**

- **📱 Cross-Platform**: Web app + Mobile app (iOS/Android)
- **🌱 Step Tracking**: Convert 100 steps = 1 credit
- **🎁 Rewards System**: 16 rewards from 6 partner stores
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

## 📱 Mobile App Features

### **🏠 Home Screen**
- **EcoCredit Balance**: View your available credits
- **Daily Steps**: Track your step count
- **Progress Bar**: Visual step-to-credit conversion
- **Quick Actions**: Browse rewards and view profile
- **Offline Mode**: Indicator when backend is disconnected

### **🎁 Rewards Screen**
- **Credit Balance**: Display available credits
- **Reward Categories**: Filter by store type
- **Redeem Rewards**: Convert credits to vouchers
- **Haptic Feedback**: Tactile confirmation for actions

### **📊 Statistics Screen**
- **Today's Summary**: Steps, calories, distance, credits
- **Lifetime Stats**: Total credits earned and spent
- **Weekly Progress**: Visual step tracking
- **Recent Achievements**: Unlocked badges
- **Performance Insights**: Activity trends

### **👤 Profile Screen**
- **User Information**: Guest status, login options
- **Credit Summary**: Available, earned, and spent credits
- **Activity Stats**: Achievements, redemptions, vouchers
- **Recent Achievements**: Latest unlocked badges
- **Active Vouchers**: Current valid vouchers

## 🌐 Web App Features

### **🎨 Modern Interface**
- **Responsive Design**: Works on desktop, tablet, and mobile
- **EcoCredit Branding**: Consistent green theme (#2E7D32)
- **Real-time Updates**: Live data synchronization
- **Professional UI**: Clean, intuitive interface

### **🔐 Authentication**
- **Guest Login**: Quick access without registration
- **Google Sign-In**: Secure OAuth integration
- **Session Management**: Persistent login state
- **Profile Management**: User preferences and settings

### **📈 Dashboard**
- **Step Tracking**: Real-time step counter
- **Credit Conversion**: Automatic 100:1 ratio
- **Reward Catalog**: Browse available rewards
- **Achievement Progress**: Track unlockable badges

## 🎁 Rewards System

### **Partner Stores (6 Categories):**
1. **🌿 Eco-Friendly Products**
   - Bamboo toothbrushes
   - Reusable water bottles
   - Organic skincare

2. **☕ Coffee & Beverages**
   - Starbucks vouchers
   - Local coffee shops
   - Tea subscriptions

3. **📚 Books & Education**
   - Environmental books
   - Online courses
   - Digital subscriptions

4. **🎨 Arts & Crafts**
   - Sustainable art supplies
   - DIY kits
   - Creative workshops

5. **🏃‍♂️ Fitness & Wellness**
   - Gym memberships
   - Yoga classes
   - Health supplements

6. **🎪 Entertainment**
   - Movie tickets
   - Event passes
   - Streaming subscriptions

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

- **📧 Email**: support@ecocredit.com
- **🐛 Issues**: [GitHub Issues](https://github.com/your-username/ecocredit/issues)
- **📖 Documentation**: [Wiki](https://github.com/your-username/ecocredit/wiki)

## 🙏 Acknowledgments

- **Spring Boot**: Backend framework
- **React Native**: Mobile app framework
- **Expo**: Development platform
- **H2 Database**: In-memory database
- **Material Design**: UI components

---

**🌱 Make every step count with EcoCredit!**

*Built with ❤️ for a sustainable future*
