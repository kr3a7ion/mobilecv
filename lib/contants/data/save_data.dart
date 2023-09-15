//

saveListData(
    {required List theList, required int theIndex, required String theValue}) {
  theList[theIndex] = theValue;

}

saveVarData({required String theVairable, required String theNewValue}) {
  theVairable = theNewValue;
}
