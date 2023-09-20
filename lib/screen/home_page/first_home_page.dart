import 'package:car_trading_app/provider/provider_brands/provider_brands.dart';
import 'package:car_trading_app/provider/provider_first_page.dart';
import 'package:car_trading_app/provider/control_provider_brands/provider_brands.dart';
import 'package:car_trading_app/screen/home_page/brand_page.dart';
import 'package:car_trading_app/screen/home_page/component/dialog_select_date_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class FirstHomePage extends StatefulWidget {
  const FirstHomePage({
    super.key,
  });

  @override
  State<FirstHomePage> createState() => _FirstHomePageState();
}

class _FirstHomePageState extends State<FirstHomePage> {
  final keyForm = GlobalKey<FormState>();
  final cSearch = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProviderFirstPage>().getControl();
    });
    super.initState();
  }


  Future<void> onTapConfirm(BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return DialogSelectDateTime();
        });
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
        child: Form(
          key: keyForm,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Consumer<ProviderFirstPage>(
                builder: (_, p, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Select Cars',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.notification_add_outlined,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: cSearch,
                        onChanged: (val) {
                          p.search = val;
                        },
                        style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.1),
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.1),
                            ),
                          ),
                          hintText: 'Find Car',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChangeNotifierProvider<ProviderBrands>(
                                            create: (BuildContext context) => ProviderBrands(),
                                            child: BrandPage(
                                              selected: p.filterSelect,
                                              callbackBrand: (val) {
                                                p.filterSelect = val;
                                              },
                                            ),
                                          )));
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    offset: Offset(0, 1),
                                    spreadRadius: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Text(
                                'Brands',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapConfirm(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 2,
                                    offset: Offset(0, 1),
                                    spreadRadius: 1,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Text(
                                'Services',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ...p.firstPageModel
                          .map((e) => Container(
                                padding: EdgeInsets.all(16),
                                margin: EdgeInsets.all(10),
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
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.blueGrey.shade50,
                                      ),
                                      child: Image.asset(e.image),
                                      height: 100,
                                      width: 100,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.brand,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          e.model,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/star1.jpg',
                                          height: 30,
                                          width: 80,
                                        ),
                                        Text(
                                          '${NumberFormat("##,###").format(e.price)} ฿',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.deepPurple,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
