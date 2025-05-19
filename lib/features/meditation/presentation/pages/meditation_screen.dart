import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/widgets/feeling_button.dart';
import 'package:mental_health_app/features/meditation/presentation/widgets/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DefaultColors.white,
        elevation: 0,
        leading: Image.asset('assets/menu_burger.png'),
        actions: [
          CircleAvatar(backgroundImage: AssetImage('assets/profile.png')),
          SizedBox(width: 16),
        ],
      ),
      backgroundColor: DefaultColors.white,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back, Dimas!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 32),
              Text(
                'How Are You Feeling Today?',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeelingButton(
                    label: 'Happy',
                    image: 'assets/happy.png',
                    color: DefaultColors.pink,
                  ),
                  FeelingButton(
                    label: 'Calm',
                    image: 'assets/calm.png',
                    color: DefaultColors.purple,
                  ),
                  FeelingButton(
                    label: 'Relax',
                    image: 'assets/relax.png',
                    color: DefaultColors.orange,
                  ),
                  FeelingButton(
                    label: 'Focus',
                    image: 'assets/focus.png',
                    color: DefaultColors.lightteal,
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Today\'s Task',
              style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 16,),
              TaskCard(
                title: 'Morning',
                description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                color: DefaultColors.task1,
              ),
              SizedBox(height: 16,),
              TaskCard(
                title: 'Noon',
                description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                color: DefaultColors.task2,
              ),
              SizedBox(height: 16,),
              TaskCard(
                title: 'Evening',
                description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                color: DefaultColors.task3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
