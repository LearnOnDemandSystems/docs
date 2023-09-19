---
title: "How do I create multiple user accounts at once?"
isPublished: true
---

# How do I create multiple user accounts at once?

> Please be aware that not all functionality covered in this and the linked articles may be available to you.

If you have several users you want to create and want to save time from doing them individually, you can use the Import Users feature. This will allow creating up to 10,000 users at a time through the use of a CSV (comma-separated values) formatted file. Guidance on this file and the required/optional fields are provided on the Import Users page.  

### Article contents
* [Import multiple users](#import-multiple_users)
* [Field selections](#field_selections)
* [CSV file fields](#CSV_file_fields)
  * [Valid time zone IDs](#valid_time_zone_ids)
  * [Valid country codes](#valid_country_codes)


## Import multiple users

To create multiple users:
1. On the **Admin** menu in the **Users** group, click **Import Users**. 
1. This opens the Import Users page which contains helpful instructions. Read the entire page carefully.
1. Click **user import template** to download the template to build the CSV file for your users. 
1. Once the file is built and the data is verified for accuracy, return to the **Import Users** page (if you have left it) and complete the fields at the top of the page. 

[Return to Article Contents](#article_contents)

## Field selections

These fields will apply to all users that are part of the import. If a subset of the users you wish to import do not match all the same field settings, you have two choices: 1) correct each of them after import or 2) do separate imports for user(s) that have different values. 

The following is a table explaining the fields to be completed: 

| **Field** | **Explanation** |
|:----- |:----- |
| **Organization** | Defaults to your organization; can be changed to other organizations or child organizations you manage. |
| **Time Zone** | Defaults to your time zone; can be changed. |
| **Company** | Optional |
| **Account Executive** | Optional |
| **Roles** | Defaults to Basic User. This is the basic user role in the Skillable TMS and users cannot function correctly without it. Other roles may be added as needed. All included roles will be added to each user imported. |
| **Groups** | Optional |
| **Force Password Change** | Check this box to require the user to change their password when they access their user account for the first time. |
| **Process Notifications** | This option will only show if your organization has an automated notification set up to be sent when a new user account is created. Checking the box will send the notification to your newly created users. |

Once you have set the field values: 
1. Click **Choose File** next to **CSV File**. 
1. In the **Explorer** window, navigate to where you saved your CSV file of users, select it, and click **Open**. 
1. Click **Go** to start the import process. 

[Return to Article Contents](#article_contents)

## CSV file
A CSV file to add users to be imported is available on the Import User page. It contains required and option fields, including the ability to assign a subscription training key to each user.

| **Field** | **Required** |  **Explanation** |
|:----- |:----- |:----- |
| Title | no | User's title, Mr., Mrs., Miss, Dr., etc |
| FirstName | yes | User's first name |
| LastName | yes | User's last name |
| MiddleName | no | User's middle name |
| Email | yes | User's primary email address |
| Password | no | An assigned password,  if not included in the CSV file, the Organization default password will be used. If the Organization default password is not set, a random strong password will be generated for each user |
| Phone | no | User's primary phone number |
| Phone2 | no | User's secondary phone number |
| Address1 | no | User's address line 1 |
| Address2 | no | User's address line 2 |
| City | no | User's city |
| State | no | User's state |
| Zip | no | User's postal code |
| CountryCode | no | User's country code |
| TimeZoneID | no | ID for the user's time zone, see chart below. If not included, the global Default Time Zone will be used. |
| ExternalID | no | ID for the user in organization's platform |
| Trainingkey | no | Subscription training key code to automatically assign a subscription upon user creation |

[Valid time zone IDs](#valid_time_zone_ids)

[Valid country codes](#valid_country_codes)

Once uploaded the system will review the file for errors in the data and provide you with a list of errors it finds including the row and error found.
1. Review the errors.
1. If you want to import the users that do not have errors, check **Ignore these errors and import anyway (records with errors will be skipped)** and click **Import**.
1. If you want to correct the errors before proceeding, click **Try Again**. This will take you back to the Import Users page.
     1. Correct the errors in the CSV file and upload it again.
     1. Click **Go** again.
     
Once the import completes you will be provided with a list of users that have been imported. You can click **Import More** to do another set of users with different data. 

[Return to Article Contents](#article_contents)

### Valid time zone IDs

| **Time Zones** | **Time Zone Id** |
|:----- |:----- |
| (UTC) Coordinated Universal Time | UTC |
| (UTC+00:00) Dublin, Edinburgh, Lisbon, London | GMT Standard Time |
| (UTC+00:00) Monrovia, Reykjavik	| Greenwich Standard Time | 
| (UTC+00:00) Sao Tome | Sao Tome Standard Time | 
| (UTC+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna | W. Europe Standard Time | 
| (UTC+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague | Central Europe Standard Time| 
| (UTC+01:00) Brussels, Copenhagen, Madrid, Paris| Romance Standard Time| 
| (UTC+01:00) Casablanca | Morocco Standard Time| 
| (UTC+01:00) Sarajevo, Skopje, Warsaw, Zagreb | Central European Standard Time| 
| (UTC+01:00) West Central Africa | W. Central Africa Standard Time| 
| (UTC+02:00) Athens, Bucharest | GTB Standard Time| 
| (UTC+02:00) Beirut | Middle East Standard Time| 
| (UTC+02:00) Cairo | Egypt Standard Time| 
| (UTC+02:00) Chisinau | E. Europe Standard Time| 
| (UTC+02:00) Damascus | Syria Standard Time| 
| (UTC+02:00) Gaza, Hebron | West Bank Standard Time| 
| (UTC+02:00) Harare, Pretoria | South Africa Standard Time| 
| (UTC+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius | FLE Standard Time| 
| (UTC+02:00) Jerusalem | Israel Standard Time| 
| (UTC+02:00) Juba | South Sudan Standard Time| 
| (UTC+02:00) Kaliningrad | Kaliningrad Standard Time| 
| (UTC+02:00) Khartoum | Sudan Standard Time| 
| (UTC+02:00) Tripoli | Libya Standard Time| 
| (UTC+02:00) Windhoek | Namibia Standard Time| 
| (UTC+03:00) Amman | Jordan Standard Time| 
| (UTC+03:00) Baghdad | Arabic Standard Time| 
| (UTC+03:00) Istanbul | Turkey Standard Time| 
| (UTC+03:00) Kuwait, Riyadh | Arab Standard Time| 
| (UTC+03:00) Minsk | Belarus Standard Time| 
| (UTC+03:00) Moscow, St. Petersburg | Russian Standard Time| 
| (UTC+03:00) Nairobi | E. Africa Standard Time| 
| (UTC+03:00) Volgograd | Volgograd Standard Time| 
| (UTC+03:30) Tehran | Iran Standard Time| 
| (UTC+04:00) Abu Dhabi, Muscat | Arabian Standard Time| 
| (UTC+04:00) Astrakhan, Ulyanovsk | Astrakhan Standard Time| 
| (UTC+04:00) Baku | Azerbaijan Standard Time| 
| (UTC+04:00) Izhevsk, Samara | Russia Time Zone 3| 
| (UTC+04:00) Port Louis | Mauritius Standard Time| 
| (UTC+04:00) Saratov | Saratov Standard Time| 
| (UTC+04:00) Tbilisi | Georgian Standard Time| 
| (UTC+04:00) Yerevan | Caucasus Standard Time| 
| (UTC+04:30) Kabul | Afghanistan Standard Time| 
| (UTC+05:00) Ashgabat, Tashkent | West Asia Standard Time| 
| (UTC+05:00) Ekaterinburg | Ekaterinburg Standard Time| 
| (UTC+05:00) Islamabad, Karachi | Pakistan Standard Time| 
| (UTC+05:00) Qyzylorda | Qyzylorda Standard Time| 
| (UTC+05:30) Chennai, Kolkata, Mumbai, New Delhi | India Standard Time| 
| (UTC+05:30) Sri Jayawardenepura | Sri Lanka Standard Time| 
| (UTC+05:45) Kathmandu | Nepal Standard Time| 
| (UTC+06:00) Astana | Central Asia Standard Time| 
| (UTC+06:00) Dhaka | Bangladesh Standard Time| 
| (UTC+06:00) Omsk | Omsk Standard Time| 
| (UTC+06:30) Yangon (Rangoon) | Myanmar Standard Time| 
| (UTC+07:00) Bangkok, Hanoi, Jakarta | SE Asia Standard Time| 
| (UTC+07:00) Barnaul, Gorno-Altaysk | Altai Standard Time| 
| (UTC+07:00) Hovd | W. Mongolia Standard Time| 
| (UTC+07:00) Krasnoyarsk | North Asia Standard Time| 
| (UTC+07:00) Novosibirsk | N. Central Asia Standard Time| 
| (UTC+07:00) Tomsk | Tomsk Standard Time| 
| (UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi | China Standard Time| 
| (UTC+08:00) Irkutsk | North Asia East Standard Time| 
| (UTC+08:00) Kuala Lumpur, Singapore | Singapore Standard Time| 
| (UTC+08:00) Perth | W. Australia Standard Time| 
| (UTC+08:00) Taipei | Taipei Standard Time| 
| (UTC+08:00) Ulaanbaatar | Ulaanbaatar Standard Time| 
| (UTC+08:45) Eucla | Aus Central W. Standard Time| 
| (UTC+09:00) Chita | Transbaikal Standard Time| 
| (UTC+09:00) Osaka, Sapporo, Tokyo | Tokyo Standard Time| 
| (UTC+09:00) Pyongyang | North Korea Standard Time| 
| (UTC+09:00) Seoul | Korea Standard Time| 
| (UTC+09:00) Yakutsk | Yakutsk Standard Time| 
| (UTC+09:30) Adelaide | Cen. Australia Standard Time| 
| (UTC+09:30) Darwin | AUS Central Standard Time| 
| (UTC+10:00) Brisbane | E. Australia Standard Time| 
| (UTC+10:00) Canberra, Melbourne, Sydney | AUS Eastern Standard Time| 
| (UTC+10:00) Guam, Port Moresby | West Pacific Standard Time| 
| (UTC+10:00) Hobart | Tasmania Standard Time| 
| (UTC+10:00) Vladivostok | Vladivostok Standard Time| 
| (UTC+10:30) Lord Howe Island | Lord Howe Standard Time| 
| (UTC+11:00) Bougainville Island | Bougainville Standard Time| 
| (UTC+11:00) Chokurdakh | Russia Time Zone 10| 
| (UTC+11:00) Magadan | Magadan Standard Time| 
| (UTC+11:00) Norfolk Island | Norfolk Standard Time| 
| (UTC+11:00) Sakhalin | Sakhalin Standard Time| 
| (UTC+11:00) Solomon Is., New Caledonia | Central Pacific Standard Time| 
| (UTC+12:00) Anadyr, Petropavlovsk-Kamchatsky | Russia Time Zone 11| 
| (UTC+12:00) Auckland, Wellington | New Zealand Standard Time| 
| (UTC+12:00) Coordinated Universal Time+12 | UTC+12| 
| (UTC+12:00) Fiji | Fiji Standard Time| 
| (UTC+12:00) Petropavlovsk-Kamchatsky - Old | Kamchatka Standard Time| 
| (UTC+12:45) Chatham Islands | Chatham Islands Standard Time| 
| (UTC+13:00) Coordinated Universal Time+13 | UTC+13| 
| (UTC+13:00) Nuku'alofa | Tonga Standard Time| 
| (UTC+13:00) Samoa | Samoa Standard Time| 
| (UTC+14:00) Kiritimati Island | Line Islands Standard Time| 
| (UTC-01:00) Azores | Azores Standard Time| 
| (UTC-01:00) Cabo Verde Is. | Cape Verde Standard Time| 
| (UTC-02:00) Coordinated Universal Time-02 |UTC-02| 
| (UTC-02:00) Mid-Atlantic - Old | Mid-Atlantic Standard Time| 
| (UTC-03:00) Araguaina | Tocantins Standard Time| 
| (UTC-03:00) Brasilia | E. South America Standard Time| 
| (UTC-03:00) Cayenne, Fortaleza | SA Eastern Standard Time| 
| (UTC-03:00) City of Buenos Aires | Argentina Standard Time| 
| (UTC-03:00) Greenland | Greenland Standard Time| 
| (UTC-03:00) Montevideo | Montevideo Standard Time| 
| (UTC-03:00) Punta Arenas | Magallanes Standard Time| 
| (UTC-03:00) Saint Pierre and Miquelon | Saint Pierre Standard Time| 
| (UTC-03:00) Salvador | Bahia Standard Time| 
| (UTC-03:30) Newfoundland | Newfoundland Standard Time| 
| (UTC-04:00) Asuncion | Paraguay Standard Time| 
| (UTC-04:00) Atlantic Time (Canada) | Atlantic Standard Time| 
| (UTC-04:00) Caracas | Venezuela Standard Time| 
| (UTC-04:00) Cuiaba | Central Brazilian Standard Time| 
| (UTC-04:00) Georgetown, La Paz, Manaus, San Juan | SA Western Standard Time| 
| (UTC-04:00) Santiago | Pacific SA Standard Time| 
| (UTC-05:00) Bogota, Lima, Quito, Rio Branco | SA Pacific Standard Time| 
| (UTC-05:00) Chetumal | Eastern Standard Time (Mexico)| 
| (UTC-05:00) Eastern Time (US & Canada) | Eastern Standard Time| 
| (UTC-05:00) Haiti | Haiti Standard Time| 
| (UTC-05:00) Havana | Cuba Standard Time| 
| (UTC-05:00) Indiana (East) | US Eastern Standard Time| 
| (UTC-05:00) Turks and Caicos | Turks And Caicos Standard Time| 
| (UTC-06:00) Central America | Central America Standard Time| 
| (UTC-06:00) Central Time (US & Canada) | Central Standard Time| 
| (UTC-06:00) Easter Island | Easter Island Standard Time| 
| (UTC-06:00) Guadalajara, Mexico City, Monterrey | Central Standard Time (Mexico)| 
| (UTC-06:00) Saskatchewan | Canada Central Standard Time| 
| (UTC-07:00) Arizona | US Mountain Standard Time| 
| (UTC-07:00) La Paz, Mazatlan | Mountain Standard Time (Mexico)| 
| (UTC-07:00) Mountain Time (US & Canada) | Mountain Standard Time| 
| (UTC-07:00) Yukon | Yukon Standard Time| 
| (UTC-08:00) Baja California | Pacific Standard Time (Mexico)| 
| (UTC-08:00) Coordinated Universal Time-08 | UTC-08| 
| (UTC-08:00) Pacific Time (US & Canada) | Pacific Standard Time| 
| (UTC-09:00) Alaska | Alaskan Standard Time| 
| (UTC-09:00) Coordinated Universal Time-09 | UTC-09| 
| (UTC-09:30) Marquesas Islands | Marquesas Standard Time| 
| (UTC-10:00) Aleutian Islands | Aleutian Standard Time| 
| (UTC-10:00) Hawaii | Hawaiian Standard Time| 
| (UTC-11:00) Coordinated Universal Time-11 | UTC-11| 
| (UTC-12:00) International Date Line West | Dateline Standard Time| 

[Return to Article Contents](#article_contents)

### Valid country codes

| **Country Code** | **Country** |
|:----- |:----- |
| AF	| Afghanistan| 
| AX	| Åland Islands| 
| AL	| Albania| 
| DZ	| Algeria| 
| AS	| American Samoa| 
| AD	| Andorra| 
| AO	| Angola| 
| AI	| Anguilla| 
| AG	| Antigua and Barbuda| 
| AR	| Argentina| 
| AM	| Armenia| 
| AW	| Aruba| 
| AU	| Australia| 
| AT| Austria| 
| AZ	| Azerbaijan| 
| BS	| Bahamas| 
| BH |Bahrain | 
| BD	| Bangladesh| 
| BB	| Barbados| 
| BY	| Belarus| 
| BE	| Belgium| 
| BZ	| Belize| 
| BJ	| Benin| 
| BM	| Bermuda| 
| BT	| Bhutan| 
| BO	| Bolivia| 
| BQ	| Bonaire, Sint Eustatius and Saba| 
| BA	| Bosnia and Herzegovina| 
| BW	| Botswana| 
| BR	| Brazil| 
| IO	| British Indian Ocean Territory| 
| VG	| British Virgin Islands| 
| BN	| Brunei| 
| BG	| Bulgaria| 
| BF	| Burkina Faso| 
| BI	| Burundi| 
| CV	| Cabo Verde| 
| KH	| Cambodia| 
| CM	| Cameroon| 
| CA	| Canada| 
| KY	| Cayman Islands| 
| CF	| Central African Republic| 
| TD	| Chad| 
| CL	| Chile| 
| CN	| China| 
| CX	| Christmas Island| 
| CC	| Cocos (Keeling) Islands| 
| CO	| Colombia| 
| KM	| Comoros| 
| CG	| Congo| 
| CD	| Congo (DRC)| 
| CK	| Cook Islands| 
| CR	| Costa Rica| 
| CI	| Côte d’Ivoire| 
| HR	| Croatia| 
| CU	| Cuba| 
| CW	| Curaçao| 
| CY	| Cyprus| 
| CZ	| Czech Republic| 
| DK	| Denmark| 
| DJ	| Djibouti| 
| DM	| Dominica| 
| DO	| Dominican Republic| 
| EC	| Ecuador| 
| EG	| Egypt| 
| SV	| El Salvador| 
| GQ	| Equatorial Guinea| 
| ER	| Eritrea| 
| EE	| Estonia| 
| ET	| Ethiopia| 
| FK	| Falkland Islands| 
| FO	| Faroe Islands| 
| FJ	| Fiji| 
| FI	| Finland| 
| FR	| France| 
| GF	| French Guiana| 
| PF	| French Polynesia| 
| GA	| Gabon| 
| GM | Gambia| 
| GE	| Georgia| 
| DE	| Germany| 
| GH	| Ghana| 
| GI	| Gibraltar| 
| GR	| Greece| 
| GL	| Greenland| 
| GD | Grenada| 
| GP	| Guadeloupe| 
| GU	| Guam| 
| GT	| Guatemala| 
| GG	| Guernsey| 
| GN	| Guinea| 
| GW	| Guinea-Bissau| 
| GY	| Guyana| 
| HT	| Haiti| 
| HN	| Honduras| 
| HK	| Hong Kong SAR| 
| HU	| Hungary| 
| IS	| Iceland| 
| IN	| India| 
| ID	| Indonesia| 
| IR	| Iran| 
| IQ	| Iraq| 
| IE	| Ireland| 
| IM	| Isle of Man| 
| IL	| Israel| 
| IT	| Italy| 
| JM	| Jamaica| 
| JP	| Japan| 
| JE	| Jersey| 
| JO	| Jordan| 
| KZ	| Kazakhstan| 
| KE	| Kenya| 
| KI	| Kiribati| 
| KR	| Korea| 
| XK	| Kosovo| 
| KW	| Kuwait| 
| KG	| Kyrgyzstan| 
| LA	| Laos| 
| LV	| Latvia| 
| LB	| Lebanon| 
| LS	| Lesotho| 
| LR	| Liberia| 
| LY	| Libya| 
| LI	| Liechtenstein| 
| LT	| Lithuania| 
| LU	| Luxembourg| 
| MO	| Macao SAR| 
| MK	| Macedonia, FYRO| 
| MG	| Madagascar| 
| MW	| Malawi| 
| MY	| Malaysia| 
| MV	| Maldives| 
| ML	| Mali| 
| MT	| Malta| 
| MH	| Marshall Islands| 
| MQ	| Martinique| 
| MR	| Mauritania| 
| MU	| Mauritius| 
| YT	| Mayotte| 
| MX	| Mexico| 
| FM	| Micronesia| 
| MD	| Moldova| 
| MC	| Monaco| 
| MN	| Mongolia| 
| ME	| Montenegro| 
| MS	| Montserrat| 
| MA	| Morocco| 
| MZ	| Mozambique| 
| MM	| Myanmar| 
| NA	| Namibia| 
| NR	| Nauru| 
| NP	| Nepal| 
| NL	| Netherlands| 
| NC	| New Caledonia| 
| NZ	| New Zealand| 
| NI	| Nicaragua| 
| NE	| Niger| 
| NG	| Nigeria| 
| NU	| Niue| 
| NF	| Norfolk Island| 
| KP	| North Korea| 
| MP	| Northern Mariana Islands| 
| NO	| Norway| 
| OM	| Oman| 
| PK	| Pakistan| 
| PW	| Palau| 
| PS	| Palestinian Authority| 
| PA	| Panama| 
| PG	| Papua New Guinea| 
| PY	| Paraguay| 
| PE	| Peru| 
| PH	| Philippines| 
| PN	| Pitcairn Islands| 
| PL	| Poland| 
| PT	| Portugal| 
| PR	| Puerto Rico| 
| QA	| Qatar| 
| RE	| Réunion| 
| RO	| Romania| 
| RU	| Russia| 
| RW	| Rwanda| 
| BL	| Saint Barthélemy| 
| KN	| Saint Kitts and Nevis| 
| LC	| Saint Lucia| 
| MF	| Saint Martin| 
| PM	| Saint Pierre and Miquelon| 
| VC	| Saint Vincent and the Grenadines| 
| WS	| Samoa| 
| SM	| San Marino| 
| ST	| São Tomé and Príncipe| 
| SA	| Saudi Arabia| 
| SN	| Senegal| 
| RS	| Serbia| 
| SC	| Seychelles| 
| SL	| Sierra Leone| 
| SG	| Singapore| 
| SX	| Sint Maarten| 
| SK	| Slovakia| 
| SI	| Slovenia| 
| SB	| Solomon Islands| 
| SO	| Somalia| 
| ZA	| South Africa| 
| SS	| South Sudan| 
| ES	| Spain| 
| LK	| Sri Lanka| 
| SH	| St Helena, Ascension, Tristan da Cunha| 
| SD	| Sudan| 
| SR	| Suriname| 
| SJ	| Svalbard and Jan Mayen| 
| SZ	| Swaziland| 
| SE	| Sweden| 
| CH	| Switzerland| 
| SY	| Syria| 
| TW	| Taiwan| 
| TJ	| Tajikistan| 
| TZ	| Tanzania| 
| TH	| Thailand| 
| TL	| Timor-Leste| 
| TG	| Togo| 
| TK	| Tokelau| 
| TO	| Tonga| 
| TT	| Trinidad and Tobago| 
| TN	| Tunisia| 
| TR	| Turkey| 
| TM	| Turkmenistan| 
| TC	| Turks and Caicos Islands| 
| TV	| Tuvalu| 
| UM	| U.S. Outlying Islands| 
| VI	| U.S. Virgin Islands| 
| UG	| Uganda| 
| UA	| Ukraine| 
| AE	| United Arab Emirates| 
| GB	| United Kingdom| 
| US	| United States| 
| UY	| Uruguay| 
| UZ	| Uzbekistan| 
| VU	| Vanuatu| 
| VE	| Venezuela| 
| VN	| Vietnam| 
| WF	| Wallis and Futuna| 
| YE	| Yemen| 
| ZM	| Zambia| 
| ZW	| Zimbabwe| 

[Return to Article Contents](#article_contents)

## Related Article
If you receive a  message that usernames or emails have already been used, please read:

- [What do I do if an email address is unavailable when I am creating a user account?](email-address-unavailable.md)
