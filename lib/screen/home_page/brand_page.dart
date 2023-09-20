import 'package:car_trading_app/provider/provider_brands/provider_brands.dart';
import 'package:car_trading_app/provider/provider_first_page.dart';
import 'package:car_trading_app/provider/control_provider_brands/provider_brands.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BrandPage extends StatefulWidget {
  final String? selected;
  final Function(String) callbackBrand;

  const BrandPage({super.key, required this.callbackBrand, this.selected});

  @override
  State<BrandPage> createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProviderBrands>().getBrand();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Back'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Consumer<ProviderBrands>(
            builder: (_, p, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Brands',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                        itemCount: p.brandsModel.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          var item = p.brandsModel[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              widget.callbackBrand.call(item.brand);
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    offset: Offset(0, 1),
                                    spreadRadius: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                    color: widget.selected == null
                                        ? Colors.white
                                        : widget.selected!.toLowerCase() == item.brand.toLowerCase()
                                            ? Colors.green
                                            : Colors.white,
                                    width: 5),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset(
                                    item.imagebrand,
                                    height: 80,
                                    width: 80,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    item.brand,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
