class PaymentDetail {
  const PaymentDetail({
    required this.srcImage,
    required this.label,
    this.detail,
  });
  final String srcImage;
  final String label;
  final String? detail;
}
