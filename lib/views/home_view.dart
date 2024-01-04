import 'package:flutter/material.dart';
import 'package:istanbul_events/utils/events.dart';
import 'package:istanbul_events/utils/theme.dart';
import 'package:istanbul_events/widgets/horizontal_event_item.dart';
import 'package:istanbul_events/widgets/icon_item.dart';
import 'package:istanbul_events/widgets/vertical_event_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final String titleText = "Bugün hangi etkinliğe \ngitmeyi düşünüyorsunuz?";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectTheme.darkPrimary,
        actions: [
          IconButton(onPressed: () {
            
          }, icon: IconItem(icon: Icons.notifications_none_outlined, size: 12, color: ProjectTheme.lightBG,))
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(20),
          child: Text(
            titleText,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28,fontWeight: FontWeight.w900,color: ProjectTheme.lightBG),
          ),
          ),
          const Padding(padding: EdgeInsets.all(18),
          child: SearchBar(),),
          horizontalEvents(context),
          verticalEvents(),
        ],
      ),
    );
    
  }


  Widget  horizontalEvents(context) {
        return Container(
          padding: const EdgeInsets.only(top: 10,left: 20),
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            primary: false,
            itemCount: events == null ? 0 : events.length,
            itemBuilder: (context, index) {
              Map event = events.reversed.toList()[index];
              return HorizontalEventItem(event: event);
            },
          ),
        );
  }

  Widget verticalEvents() {
    return Padding(padding: const EdgeInsets.all(20),
    child: ListView.builder(
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: events == null ? 0 : events.length,
      itemBuilder: (context, index) {
        Map event = events[index];
        return VerticalEventItem(event: event);
      },
    ),
    );
  }
}
