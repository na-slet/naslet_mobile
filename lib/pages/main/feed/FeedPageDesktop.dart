import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../ui/Cards.dart';
import '../../../utils/ScreenSize.dart';
import '../../../utils/Assets.dart';

class FeedPageDesktop extends StatelessWidget {
  const FeedPageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthBetweenCards = MediaQuery.of(context).size.width * 0.04;
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: FractionallySizedBox(
        widthFactor: widthFactorFeedPageDesktop(context),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: 25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        S.current.feedPageTittleText,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: PrimaryCard(
                              onTap: () {},
                              imgPath: A.assetsCardImgExample,
                              title: 'Слет «Файер»',
                              date: '14-17 февраля 2023',
                              ageLimit: 'от 15 до 18 лет',
                              location: 'Москва, ЦО',
                              description:
                                  'Туристский слёт\nсамое любимое, интересное и\nмассовое  мероприятие,\nкоторое пользуется большой\nпопулярностью у детей и\nвзрослых.',
                            ),
                          ),
                          SizedBox(
                            width: widthBetweenCards,
                          ),
                          Flexible(
                            child: PrimaryCard(
                              onTap: () {},
                              imgPath: A.assetsCardImgExample,
                              title: 'Слет «Файер»',
                              date: '14-17 февраля 2023',
                              ageLimit: 'от 15 до 18 лет',
                              location: 'Москва, ЦО',
                              description:
                              'Туристский слёт\nсамое любимое, интересное и\nмассовое  мероприятие,\nкоторое пользуется большой\nпопулярностью у детей и\nвзрослых.',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: PrimaryCard(
                              onTap: () {},
                              imgPath: A.assetsCardImgExample,
                              title: 'Слет «Файер»',
                              date: '14-17 февраля 2023',
                              ageLimit: 'от 15 до 18 лет',
                              location: 'Москва, ЦО',
                              description:
                              'Туристский слёт\nсамое любимое, интересное и\nмассовое  мероприятие,\nкоторое пользуется большой\nпопулярностью у детей и\nвзрослых.',
                            ),
                          ),
                          SizedBox(
                            width: widthBetweenCards,
                          ),
                          Flexible(
                            child: PrimaryCard(
                              onTap: () {},
                              imgPath: A.assetsCardImgExample,
                              title: 'Слет «Файер»',
                              date: '14-17 февраля 2023',
                              ageLimit: 'от 15 до 18 лет',
                              location: 'Москва, ЦО',
                              description:
                              'Туристский слёт\nсамое любимое, интересное и\nмассовое  мероприятие,\nкоторое пользуется большой\nпопулярностью у детей и\nвзрослых.',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: PrimaryCard(
                              onTap: () {},
                              imgPath: A.assetsCardImgExample,
                              title: 'Слет «Файер»',
                              date: '14-17 февраля 2023',
                              ageLimit: 'от 15 до 18 лет',
                              location: 'Москва, ЦО',
                              description:
                              'Туристский слёт\nсамое любимое, интересное и\nмассовое  мероприятие,\nкоторое пользуется большой\nпопулярностью у детей и\nвзрослых.',
                            ),
                          ),
                          SizedBox(
                            width: widthBetweenCards,
                          ),
                          Flexible(
                            child: PrimaryCard(
                              onTap: () {},
                              imgPath: A.assetsCardImgExample,
                              title: 'Слет «Файер»',
                              date: '14-17 февраля 2023',
                              ageLimit: 'от 15 до 18 лет',
                              location: 'Москва, ЦО',
                              description:
                              'Туристский слёт\nсамое любимое, интересное и\nмассовое  мероприятие,\nкоторое пользуется большой\nпопулярностью у детей и\nвзрослых.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
