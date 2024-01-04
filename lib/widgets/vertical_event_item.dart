import 'package:flutter/material.dart';
import 'package:istanbul_events/main.dart';
import 'package:istanbul_events/utils/theme.dart';


class VerticalEventItem extends StatelessWidget {
  final Map event;
  const VerticalEventItem({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        child: SizedBox(
          height: 70,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "${event["img"]}",
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width - 130,
                child: ListView(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${event["name"]}",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w700,color: ProjectTheme.lightBG),
                        maxLines: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 13,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${event["location"]}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(fontSize: 13, color:ProjectTheme.lightBG),
                            maxLines: 1,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "${event["price"]}",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 16,color: ProjectTheme.lightBG),
                        maxLines: 1,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
