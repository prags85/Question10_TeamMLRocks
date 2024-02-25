import 'package:flutter/material.dart';

void main() {
  runApp(VolunteerApp());
}

class VolunteerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Volunteer App',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
       '/LoginPage': (context) =>LoginPage(),
      '/signin': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/my_activities': (context) => MyActivitiesPage(),
        '/profile': (context) => ProfilePage(),
        '/organization_dashboard': (context) => OrganizationDashboardPage(),
        '/calendar_view': (context) => CalendarWidget(),
        '/notifications': (context) => NotificationsPage(),
        '/about': (context) => AboutPage(),
        '/feedback': (context) => FeedbackPage(),
      },
    );
  }
}


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Volunteer App!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/LoginPage');
              },
              child: Text('Log in'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                // Navigate to Sign In page
                Navigator.pushNamed(context, '/signin');
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volunteer Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implement your login logic here
                // You can access the entered values using controllers like: nameController.text, emailController.text, passwordController.text
                // Validate the inputs and authenticate the user
                // If successful, navigate to the volunteer dashboard
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Implement your logic for navigating to the registration page
                // You may use Navigator to push a new route for volunteer registration
              },
              child: Text('Don\'t have an account? Register here'),
            ),
          ],
        ),
      ),
    );
  }
}


class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement sign-in functionality here
                // After successful sign-in, navigate to the home page
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigate to Sign Up page
                Navigator.pushNamed(context, '/LoginPage');
              },
              child: Text('Don\'t have an account? LoginPage'),
            ),
          ],
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/my_activities');
              },
              child: Text('My Activities'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/organization_dashboard');
              },
              child: Text('Organization Dashboard'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calendar_view');
              },
              child: Text('Calendar View'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('About'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/feedback');
              },
              child: Text('Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyActivitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Activities'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Activity 1:  Food Bank Assistance'),
            subtitle: Text('Date: January 1, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 2:Community Clean-up'),
            subtitle: Text('Date: January 2, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 3: Mentoring Programs'),
            subtitle: Text('Date: January 3, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 4: Elderly Care'),
            subtitle: Text('Date: January 4, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 5:Animal Shelter Support'),
            subtitle: Text('Date: January 5, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 6: Educational Programs'),
            subtitle: Text('Date: January 6, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 7: Disaster Relief Assistance'),
            subtitle: Text('Date: January 7, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 8:Hospital Volunteering'),
            subtitle: Text('Date: January 8, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 9: Environmental Conservation '),
            subtitle: Text('Date: January 9, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Activity 10: Homeless Shelter Support'),
            subtitle: Text('Date: January 10, 2024'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
        ],
      ),
    );
  }
}


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_image.jpg'), // Provide path to user's profile image
            ),
            SizedBox(height: 20),
            Text(
              'John Doe', // User's name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'john.doe@example.com', // User's email
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Volunteer Hours:', // Label for volunteer hours
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '100 hours', // Number of volunteer hours
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement edit profile functionality
              },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement logout functionality
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}


class OrganizationDashboardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organization Dashboard'),
      ),
     body: ListView(
        children: [
          ListTile(
            title: Text('Environmental Conservation Crew'),
            subtitle: Text('**Organization:** Green Earth Alliance , Details: Join our team to plant trees, clean water bodies, and promote eco-friendly practices in the community, Location: Shirpur'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Food Drive Volunteers'),
            subtitle: Text('Organization: Community Food Bank ,Detail: Assist in organizing and conducting food drives to collect non-perishable items for families in need, Location: pune '),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Youth Mentorship Program'),
            subtitle: Text('Organization: Future Leaders Foundation,Details: Be a mentor to high school students, offering guidance and support in academic and personal development, Location: Mumbai'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Homeless Shelter Assistance'),
            subtitle: Text('Organization: Shelter Hope,Details: Help in providing meals, clothing, and support services to individuals experiencing homelessness, location:Thane'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Senior Companionship'),
            subtitle: Text('Organization:Golden Years Connection,Details: Spend time with seniors, engage in conversations, and provide companionship to enhance their well-being, Location: Nashik'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Literacy Workshop Facilitator'),
            subtitle: Text('Organization:BookWorms Society,Details: Lead literacy workshops for children, promoting a love for reading and improving their language skills, Location:Bhopal'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Community Health Fair Volunteers'),
            subtitle: Text('Organization: Healthy Community Initiative,Details:Assist in organizing health fairs, providing information, and facilitating health screenings for the community, Location: Bhilwara'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Wildlife Habitat Restoration Crew'),
            subtitle: Text('Organization: Nature Conservation Society,Details:Contribute to the restoration of local wildlife habitats through planting native plants and maintaining ecosystems, Location: Shirpur'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Tech-Savvy Seniors Program'),
            subtitle: Text('Organization: Digital Inclusion Foundation,Details:Teach seniors basic technology skills, including using smartphones and accessing the internet, Location: Mumbai'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
          ListTile(
            title: Text('Arts and Crafts Workshop for Kid'),
            subtitle: Text('Organization: Creative Kids Foundation, Details: Lead art and crafts sessions for children, encouraging creativity and self-expression, Location: Dhule'),
            onTap: () {
              // Navigate to activity details page
              Navigator.pushNamed(context, '/activity_details');
            },
          ),
        ],
      ),
    );
  }
}

class CalendarWidget extends StatefulWidget {
  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected Date: ${_selectedDate.year}-${_selectedDate.month}-${_selectedDate.day}',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text('Select Date'),
            ),
            SizedBox(height: 20),
            Text(
              'Selected Time: ${_selectedTime.hour}:${_selectedTime.minute}',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text('Select Time'),
            ),
          ],
        ),
      ),
    );
  }
}
  
class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Notifications',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildNotificationItem(
                    title: 'New Volunteer Opportunity Available!',
                    description: 'Help out at the local animal shelter this weekend.',
                    time: '2 hours ago',
                    onTap: () {
                      // Implement action when notification is tapped
                    },
                  ),
                  _buildNotificationItem(
                    title: 'Reminder: Volunteer Activity Tomorrow',
                    description: 'You have a cleanup event scheduled at the city park.',
                    time: 'Yesterday',
                    onTap: () {
                      // Implement action when notification is tapped
                    },
                  ),
                  _buildNotificationItem(
                    title: 'Feedback Request',
                    description: 'Please provide feedback on your recent volunteering experience.',
                    time: '3 days ago',
                    onTap: () {
                      // Implement action when notification is tapped
                    },
                  ),
                  // Add more notifications as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationItem({
    required String title,
    required String description,
    required String time,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 4),
            Text(
              time,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            Divider(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'About Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'This app is designed to connect volunteers with local community service opportunities. It provides users with a platform to find, sign up for, and track their volunteer activities easily. The app aims to encourage community involvement and make a positive impact on society.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Developed by: ML',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Version: 1.0.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class FeedbackPage extends StatelessWidget {
  final List<String> feedbacks = [
    'Great app! Easy to use and very helpful.',
    'The user interface could be improved.',
    'Love the features, especially the calendar view.',
    'Needs more volunteer opportunities in my area.',
    'The sign-up process was smooth.',
    'I encountered a bug when trying to submit feedback.',
    'App crashes occasionally, please fix.',
    'Excellent customer support, quick response to queries.',
    'Would like to see more filters for volunteer opportunities.',
    'Overall, a fantastic initiative! Keep up the good work.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Feedback Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: feedbacks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(feedbacks[index]),
                    // You can add more details like timestamp or user name here
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter your feedback',
                labelText: 'Feedback',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement feedback submission functionality
              },
              child: Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}

