import 'package:flutter/material.dart';
import 'package:istanbul_events/utils/theme.dart';


class HorizontalEventItem extends StatelessWidget {
  final Map event;
  const HorizontalEventItem({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        child: SizedBox(
          height: 250,
          width: 140,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "${event["img"]}",
                  height: 160,
                  width: 140,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 7),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${event["name"]}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 15, fontWeight: FontWeight.bold,color: ProjectTheme.lightBG),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 3),
               Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${event["location"]}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 13, fontWeight: FontWeight.bold,color: ProjectTheme.lightBG),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
       
      ),
    );
  }
}
