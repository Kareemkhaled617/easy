import 'package:flutter/material.dart';

import '../resources/MLInboxData.dart';













List<String?> mlScheduleTimeList() {
  List<String?> list = [];
  list.add('8:00 AM - 9:00 AM');
  list.add('9:00 AM - 10:00 AM');
  list.add('10:00 AM - 11:00 AM');
  list.add('11:00 AM - 12:00 AM');
  list.add('1:00 AM - 2:00 AM');
  list.add('2:00 AM - 3:00 AM');
  list.add('3:00 AM - 4:00 AM');
  list.add('4:00 AM - 5:00 AM');
  return list;
}













List<MLInboxData> mlInboxChatDataList() {
  List<MLInboxData> list = [];
  list.add(MLInboxData(id: 0, message: 'i have already taken medicine'));
  list.add(MLInboxData(id: 1, message: 'Hi Kaixa, have you taken your pills yet?'));
  list.add(MLInboxData(id: 1, message: 'sorry but i can\'t find your home number'));
  list.add(MLInboxData(id: 0, message: 'Please knock on dor'));
  list.add(MLInboxData(id: 0, message: 'I am home waiting for you'));
  list.add(MLInboxData(id: 0, message: 'Hi Miranda'));
  list.add(MLInboxData(id: 1, message: 'I am on my way to your home visit'));
  return list;
}

List<MLInboxData> mlBotChatDataList() {
  List<MLInboxData> list = [];
  list.add(MLInboxData(
      id: 1,
      message: 'These are some of the frequantly asked question whencustomers use our services. Please '
          'choose the question you are intrested in'));
  list.add(MLInboxData(id: 0, message: 'yes'));
  list.add(MLInboxData(
      id: 1,
      message: 'Hi Kaixa, Thank you for using Medilab\'s consulting service.'
          'what are you intrested in our comprehensice checkup package?'));
  list.add(MLInboxData(id: 0, message: 'Get Started'));

  return list;
}
