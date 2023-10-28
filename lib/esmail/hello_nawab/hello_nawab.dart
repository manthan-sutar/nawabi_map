import 'package:fl_projects/eng.esmail/hello_nawab/widgets&files/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HellowNawabScreen extends StatefulWidget {
  const HellowNawabScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";

  @override
  State<HellowNawabScreen> createState() => _HellowNawabScreenState();
}

class _HellowNawabScreenState extends State<HellowNawabScreen> {
  @override
  Widget build(BuildContext context) {
    int currentPage = 1;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              ProfileTopSection(),
              SizedBox(height: 15),
              HorizontalSubjectsWidgets(),
              SizedBox(height: 25),
              UniversitiesAndInstitutesWidgets(),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 60,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[800],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(
                  bottomNav.length,
                  (index) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        bottomNav[index]['icon'],
                        size: 30,
                        color: currentPage == bottomNav[index]['demo']
                            ? Colors.white
                            : Colors.grey,
                      ),
                      Text(
                        bottomNav[index]['title'],
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 8,
                              color: currentPage == bottomNav[index]['demo']
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UniversitiesAndInstitutesWidgets extends StatelessWidget {
  const UniversitiesAndInstitutesWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Universities',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  UniversitiesItemWidget(
                    color: Colors.yellow[300],
                    universityName: 'Goa University',
                  ),
                  const SizedBox(width: 20),
                  UniversitiesItemWidget(
                    color: Colors.yellow[300],
                    universityName: 'Mumbai University',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            'Institutes',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  const InstitutesItemWidget(
                    color: Color.fromARGB(255, 253, 108, 68),
                    insitituteName: 'Aspira UI UX Design Institute',
                  ),
                  const SizedBox(width: 20),
                  InstitutesItemWidget(
                    color: Colors.yellow[300],
                    insitituteName: 'Designers - UI/UX Design Academy',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HorizontalThreeBottomContainers extends StatelessWidget {
  const HorizontalThreeBottomContainers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 0,
          ),
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              Icon(
                Icons.star_border_outlined,
                size: 13,
                color: Colors.yellow[300],
              ),
              const SizedBox(width: 3),
              Text(
                '4.8',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 11,
                      color: Colors.yellow[300],
                      fontWeight: FontWeight.w500,
                    ),
              )
            ],
          ),
        ),
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(
            horizontal: 13,
            vertical: 0,
          ),
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              '280 Hours',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 11,
                    color: Colors.yellow[300],
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 0,
            ),
            height: 20,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                'Map',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 11,
                      color: Colors.yellow[300],
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ))
      ],
    );
  }
}

class HorizontalPriceWithIconWidget extends StatelessWidget {
  const HorizontalPriceWithIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'UX/UI Design',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
            ),
            const SizedBox(height: 5),
            Text(
              '1200\$',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                    color: Colors.black,
                  ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(right: 15),
          child: SvgPicture.asset(
            'assets/images/building.svg',
            height: 100,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

class UniversitiesItemWidget extends StatelessWidget {
  const UniversitiesItemWidget({
    super.key,
    this.color,
    required this.universityName,
  });
  final Color? color;
  final String universityName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            universityName,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
          ),
          const SizedBox(height: 5),
          const HorizontalPriceWithIconWidget(),
          const SizedBox(height: 5),
          const HorizontalThreeBottomContainers(),
        ],
      ),
    );
  }
}

class InstitutesItemWidget extends StatelessWidget {
  const InstitutesItemWidget({
    super.key,
    required this.color,
    required this.insitituteName,
  });
  final Color? color;
  final String insitituteName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 200),
            child: Text(
              insitituteName,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1000\$',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Colors.black,
                    ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: SvgPicture.asset(
                  'assets/images/graduation.svg',
                  height: 90,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          HoriontalInstituteThreeWidgets(),
        ],
      ),
    );
  }
}

class HoriontalInstituteThreeWidgets extends StatelessWidget {
  const HoriontalInstituteThreeWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 0,
          ),
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              Icon(
                Icons.star_border_outlined,
                size: 11,
                color: Colors.yellow[300],
              ),
              const SizedBox(width: 3),
              Text(
                '4.8',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 11,
                      color: Colors.yellow[300],
                      fontWeight: FontWeight.w500,
                    ),
              )
            ],
          ),
        ),
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(
            horizontal: 13,
            vertical: 0,
          ),
          margin: const EdgeInsets.only(right: 4),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              '280 Hours',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 11,
                    color: Colors.yellow[300],
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 0,
            ),
            height: 20,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                'Map',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 11,
                      color: Colors.yellow[300],
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ))
      ],
    );
  }
}

class HorizontalSubjectsWidgets extends StatelessWidget {
  const HorizontalSubjectsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Wrap(
        runSpacing: 10,
        children: [
          ...List.generate(
            list.length,
            (index) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.transparent,
                border: Border.all(color: Colors.white70, width: 1.5),
              ),
              child: Text(
                list[index],
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileTopSection extends StatelessWidget {
  const ProfileTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 55,
                height: 55,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Text(
                'Hello, Nawab',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 22, color: Colors.purple[200]),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
