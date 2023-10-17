class HoroscopeModel {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetail;
  final String _horoscopeSmallPicture;
  final String _horoscopeBigPicture;
  get horoscopeName => _horoscopeName;

  get horoscopeDate => _horoscopeDate;

  get horoscopeDetail => _horoscopeDetail;

  get horoscopeSmallPic => _horoscopeSmallPicture;

  get horoscopeBigPic => _horoscopeBigPicture;

  HoroscopeModel(
      this._horoscopeName,
      this._horoscopeDate,
      this._horoscopeDetail,
      this._horoscopeSmallPicture,
      this._horoscopeBigPicture);

  @override
  String toString() {
    return "$_horoscopeName -- $_horoscopeSmallPicture";
  }
}
