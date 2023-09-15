

saveData({required Map theMap, required String theKey, required String theValue}) {
  theMap.update(theKey, (value) => theValue);
}
