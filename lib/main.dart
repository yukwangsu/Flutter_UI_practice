import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
                //전체 화면의 왼쪽, 오른쪽에 Padding을 추가한다.
                padding: const EdgeInsets.symmetric(horizontal: 20),
                //Column에 모든걸 넣는다.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //children에 Column에 들어갈 요소들이 들어간다.
                  children: [
                    //위에 빈 공간을 만든다.
                    const SizedBox(
                      height: 60,
                    ),
                    //이름과 문구를 담고있는 Row.
                    Row(
                      //이름과 문구를 오른쪽으로 붙인다.
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, pangsu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              'Welcome back',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$5,194,482',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(
                          text: 'Transfer',
                          bgcolor: Color(0xfff1b33b),
                          textColor: Colors.black,
                        ),
                        Button(
                          text: 'Request',
                          bgcolor: Color(0xff1f2123),
                          textColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      //Row이므로 crossAxisAlignment는 수직방향(아래의 경우 바닥에 붙는다.)
                      crossAxisAlignment: CrossAxisAlignment.end,
                      //Row이므로 mainAxisAlignment는 수평방향(아래의 경우 가운데 공간이 생긴다.)
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CurrencyCard(
                      name: 'Euro',
                      code: "EUR",
                      amount: '6,428',
                      icon: Icons.euro_rounded,
                      isInverted: false,
                      order: 1,
                    ),
                    const CurrencyCard(
                      name: 'Bitcoin',
                      code: "BTC",
                      amount: '9,785',
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                      order: 2,
                    ),
                    const CurrencyCard(
                      name: 'Dollar',
                      code: "USD",
                      amount: '428',
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                      order: 3,
                    ),
                  ],
                )),
          )),
    );
  }
}
