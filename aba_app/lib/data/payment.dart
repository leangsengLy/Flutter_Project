import 'package:aba_app/models/payment.dart';
import 'package:aba_app/models/payment_detail.dart';
import 'package:flutter/material.dart';

const dataList = [
  Payment(
    label: "Choose from Favorite",
    detail: "Pay bills from your favorites list",
    icon: Icons.bookmark,
    color: Colors.black,
    paymentDetails: [],
  ),
  Payment(
    icon: Icons.phone_in_talk_outlined,
    color: Color.fromARGB(255, 60, 166, 252),
    label: "Mobile Top-up",
    detail: "Supported operators",
    paymentDetails: [
      PaymentDetail(
        srcImage: "assets/images/payment/util/4.jpg",
        label: "Electrictie Du Cambodge - EDC",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/6.png",
        label: "GAEA Waste Management",
      ),
    ],
  ),
  Payment(
    icon: Icons.settings,
    color: Color.fromARGB(255, 7, 107, 189),
    label: "Utilities",
    detail: "Pay for electricity, water and waste bills",
    paymentDetails: [
      PaymentDetail(
        srcImage: "assets/images/payment/util/1.jpg",
        label: "Battambang Water Utility",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/2.png",
        label: "Cinitri Cambodia",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/4.jpg",
        label: "Electrictie Du Cambodge - EDC",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/6.png",
        label: "GAEA Waste Management",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/7.jpg",
        label: "Kampot- Green",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/1.jpg",
        label: "Kompong Cham Water Supply",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/8.jpg",
        label: "Kompongchomlong Water Supply",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/1.jpg",
        label: "Krong Stueng Saen Water Utility",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/9.jpg",
        label: "Medical Waste Management",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/1.jpg",
        label: "Phnom Penh Water Supply- PPWSA",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/10.jpg",
        label: "Private Electricity",
      ),
    ],
  ),
  Payment(
    icon: Icons.apartment,
    color: Color.fromARGB(255, 224, 90, 0),
    label: "Government Services",
    detail: "Pay for taxes or publis services",
    paymentDetails: [],
  ),
  Payment(
    icon: Icons.wifi,
    color: Color.fromARGB(255, 0, 168, 36),
    label: "Internet & TV",
    detail: "Pay your internet and TV bills",
    paymentDetails: [
      PaymentDetail(
        srcImage: "assets/images/payment/tv/1.png",
        label: "Smart",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/tv/3.png",
        label: "Metfone",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/tv/2.png",
        label: "Cellcard",
      ),
    ],
  ),
  Payment(
    icon: Icons.home,
    color: Color.fromARGB(255, 152, 0, 190),
    label: "Real Estate",
    detail: "Pay for property",
    paymentDetails: [
      PaymentDetail(
        srcImage: "assets/images/payment/util/8.jpg",
        label: "Kompongchomlong Water Supply",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/1.jpg",
        label: "Krong Stueng Saen Water Utility",
      ),
    ],
  ),
  Payment(
    icon: Icons.rice_bowl_rounded,
    color: Color.fromARGB(255, 247, 119, 0),
    label: "Insurance",
    detail: "Pay for insurence premiums",
    paymentDetails: [],
  ),
  Payment(
    icon: Icons.attach_money,
    color: Color.fromARGB(255, 0, 117, 196),
    label: "Finance & Investent",
    detail: "Payment for 3rd party financial services",
    paymentDetails: [],
  ),
  Payment(
    icon: Icons.local_shipping,
    color: Color.fromARGB(255, 0, 73, 168),
    label: "Trading & Distribution",
    detail: "Pay trading partners or distributors",
    paymentDetails: [],
  ),
  Payment(
    icon: Icons.school,
    color: Color.fromARGB(255, 0, 168, 36),
    label: "Education",
    detail: "Pay for school fees",
    paymentDetails: [],
  ),
  Payment(
    icon: Icons.sports_esports,
    color: Color.fromARGB(255, 0, 138, 218),
    label: "Entertainment",
    detail: "Shop for credit for games and apps",
    paymentDetails: [
      PaymentDetail(
        srcImage: "assets/images/payment/util/2.png",
        label: "Cinitri Cambodia",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/4.jpg",
        label: "Electrictie Du Cambodge - EDC",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/6.png",
        label: "GAEA Waste Management",
      ),
    ],
  ),
  Payment(
    icon: Icons.credit_card,
    color: Color.fromARGB(255, 0, 73, 168),
    label: "Membership & Subscription",
    detail: "Pay for your subscription",
    paymentDetails: [
      PaymentDetail(
        srcImage: "assets/images/payment/util/6.png",
        label: "GAEA Waste Management",
      ),
    ],
  ),
  Payment(
    icon: Icons.travel_explore_sharp,
    color: Color.fromARGB(255, 156, 0, 204),
    label: "Travel & Tours",
    detail: "Pay to travel service-providers",
    paymentDetails: [],
  ),
  Payment(
    icon: Icons.heat_pump_rounded,
    color: Color.fromARGB(255, 211, 73, 85),
    label: "Charity & Donation",
    detail: "Donate to charitable organizations",
    paymentDetails: [
      PaymentDetail(
        srcImage: "assets/images/payment/util/8.jpg",
        label: "Kompongchomlong Water Supply",
      ),
      PaymentDetail(
        srcImage: "assets/images/payment/util/1.jpg",
        label: "Krong Stueng Saen Water Utility",
      ),
    ],
  ),
];
