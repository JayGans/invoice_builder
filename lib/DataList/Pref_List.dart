import 'package:flutter/material.dart';
import 'package:invoice_builder/model/pref_data.dart';


class Pref_List {
  static List<Pref_Data> getMovies() {
    return [
      Pref_Data(
          pid_id: '1',
          name: 'Online payment collections',
          desc: 'Collect payments using UPI, Wallets, Net Banking, Credit and Debit cards',
          status: true

      ),
      Pref_Data(
          pid_id: '2',
          name: 'Create bills or invoices',
          desc: 'Create GST bills or invoices and send it to customers via email & SMS',
          status: false

      ),
      Pref_Data(
          pid_id: '3',
          name: 'Organize your customer data',
          desc: 'Keep you all of your customer contact information organized and up to date',
          status: false

      ),
      Pref_Data(
          pid_id: '4',
          name: 'Send payment links',
          desc: 'Send simple payment links to your customers and collect payments online',
          status: false

      ),
      Pref_Data(
          pid_id: '5',
          name: 'Send bulk invoices',
          desc: 'Send bills or invoices to your customer base via email and SMS',
          status: false

      ),
      Pref_Data(
          pid_id: '6',
          name: 'Recurring billing or subscriptions',
          desc: 'Automatically send bills to customers monthly, quarterly, yearly or any other frequency',
          status: false

      )

    ];
  }
}