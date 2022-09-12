import 'package:crypto_wallet/utils/formatter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double bitcoinValue = 6557.00;
  double litecoinValue = 245.00;
  double ethereumValue = 7996.00;
  double totalValue = 0;
  bool isVisible = true;
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    totalValue = bitcoinValue + litecoinValue + ethereumValue;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Cripto",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(224, 43, 87, 1)),
                      ),
                      IconButton(
                        onPressed: () {
                          isVisible = !isVisible;
                          setState(() {});
                        },
                        icon: Icon(
                          isVisible
                              ? Icons.remove_red_eye
                              : Icons.visibility_off,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    isVisible == true
                        ? Formatter.currencyFormatter(totalValue)
                        : "****",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Valor total de moedas",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(117, 118, 128, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Divider(
              thickness: 1,
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromRGBO(247, 147, 26, 1),
                        radius: 25,
                        child: Image(
                          image: AssetImage("assets/icons/bitcoin.png"),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "BTC",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Bitcoin",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            isVisible
                                ? Formatter.currencyFormatter(bitcoinValue)
                                : "****",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            isVisible ? "0.65 BTC" : "****",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(width: 18),
                      Column(
                        children: const [
                          Icon(Icons.arrow_forward_ios_rounded, size: 18),
                          SizedBox(height: 18),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color.fromRGBO(98, 126, 234, 1),
                        radius: 25,
                        child: Image(
                          image: AssetImage("assets/icons/ethereum.png"),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "ETH",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Ethereum",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            isVisible
                                ? Formatter.currencyFormatter(ethereumValue)
                                : "****",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            isVisible ? "0.94 ETH" : "****",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(width: 18),
                      Column(
                        children: const [
                          Icon(Icons.arrow_forward_ios_rounded, size: 18),
                          SizedBox(height: 18),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Image(
                          image: AssetImage("assets/icons/litecoin.png"),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "LTC",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Litecoin",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            isVisible
                                ? Formatter.currencyFormatter(litecoinValue)
                                : "****",
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            isVisible ? "0.82 LTC" : "****",
                            style: const TextStyle(
                                fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(width: 18),
                      Column(
                        children: const [
                          Icon(Icons.arrow_forward_ios_rounded, size: 18),
                          SizedBox(height: 18),
                        ],
                      ),
                      // image icon
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        currentIndex: selectedIndex,
        selectedItemColor: const Color.fromRGBO(224, 43, 87, 1),
        items: const [
          BottomNavigationBarItem(
            label: "Portfólio",
            icon: ImageIcon(
              AssetImage("assets/icons/warren-icon.png"),
            ),
          ),
          BottomNavigationBarItem(
            label: "Movimentações",
            icon: ImageIcon(
              AssetImage("assets/icons/movement-icon.png"),
            ),
          ),
        ],
      ),
    );
  }
}
