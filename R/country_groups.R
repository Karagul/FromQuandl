#' Identifies the IMF groups
#'
#' @param countries A vector or a list of countries.
#'
#' @return A list.
#'
#'
country_groups <- function(countries) {

  # advanced_economies
  if (countries == "ae") {

    c("Australia", "Austria", "Belgium", "Canada", "Cyprus", "Czech Republic",
      "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hong Kong SAR",
      "Iceland", "Ireland", "Israel", "Italy", "Japan", "Korea", "Latvia", "Lithuania",
      "Luxembourg", "Macao SAR", "Malta", "Netherlands", "New Zealand", "Norway",
      "Portugal", "Puerto Rico", "San Marino", "Singapore", "Slovak Republic",
      "Slovenia", "Spain", "Sweden", "Switzerland", "Taiwan Province of China",
      "United Kingdom", "United States")

  # other_advanced_economies
  } else if (countries == "oae") {

    c("Australia", "Czech Republic", "Denmark", "Hong Kong SAR", "Iceland",
      "Israel", "Korea", "Macao SAR", "New Zealand", "Norway", "Puerto Rico",
      "San Marino", "Singapore", "Sweden", "Switzerland", "Taiwan Province of China")

  # euro_area
  } else if (countries == "euro") {

    c("Austria", "Belgium", "Cyprus", "Estonia", "Finland", "France", "Germany",
      "Greece", "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta",
      "Netherlands", "Portugal", "Slovak Republic", "Slovenia", "Spain")

  # european_union
  } else if (countries == "eu") {

    c("Austria", "Belgium", "Bulgaria", "Croatia", "Cyprus", "Czech Republic",
      "Denmark", "Estonia", "Finland", "France", "Germany", "Greece", "Hungary",
      "Ireland", "Italy", "Latvia", "Lithuania", "Luxembourg", "Malta", "Netherlands",
      "Poland", "Portugal", "Romania", "Slovak Republic", "Slovenia", "Spain", "Sweden",
      "United Kingdom")

  # emerging_and_developing_economies
  } else if (countries == "ede") {

    c("Afghanistan", "Albania", "Algeria", "Angola", "Antigua and Barbuda",
      "Argentina", "Armenia", "Azerbaijan", "The Bahamas", "Bahrain", "Bangladesh",
      "Barbados", "Belarus", "Belize", "Benin", "Bhutan", "Bolivia", "Bosnia and Herzegovina",
      "Botswana", "Brazil", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi",
      "Cabo Verde", "Cambodia", "Cameroon", "Central African Republic", "Chad",
      "Chile", "China", "Colombia", "Comoros", "Democratic Republic of the Congo",
      "Republic of Congo", "Costa Rica", "Cote dIvoire", "Croatia", "Djibouti",
      "Dominica", "Dominican Republic", "Ecuador", "Egypt", "El Salvador",
      "Equatorial Guinea", "Eritrea", "Ethiopia", "Fiji", "Gabon", "The Gambia",
      "Georgia", "Ghana", "Grenada", "Guatemala", "Guinea", "Guinea-Bissau",
      "Guyana", "Haiti", "Honduras", "Hungary", "India", "Indonesia", "Iran",
      "Iraq", "Jamaica", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Kosovo",
      "Kuwait", "Kyrgyz Republic", "Lao P.D.R.", "Lebanon", "Lesotho", "Liberia",
      "Libya", "FYR Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives",
      "Mali", "Marshall Islands", "Mauritania", "Mauritius", "Mexico", "Micronesia",
      "Moldova", "Mongolia", "Montenegro", "Morocco", "Mozambique", "Myanmar",
      "Namibia", "Nauru", "Nepal", "Nicaragua", "Niger", "Nigeria", "Oman",
      "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru",
      "Philippines", "Poland", "Qatar", "Romania", "Russia", "Rwanda", "Samoa",
      "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles",
      "Sierra Leone", "Solomon Islands", "Somalia", "South Africa", "South Sudan",
      "Sri Lanka", "St. Kitts and Nevis", "St. Lucia", "St. Vincent and the Grenadines",
      "Sudan", "Suriname", "Swaziland", "Syria", "Tajikistan", "Tanzania", "Thailand",
      "Timor-Leste", "Togo", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey",
      "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates",
      "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Yemen",
      "Zambia", "Zimbabwe")

  # g7
  } else if (countries == "g7") {

    c("Canada", "France", "Germany", "Italy", "Japan", "United Kingdom", "United States")

  # commonwealth_independent_states
  } else if (countries == "cis") {

    c("Armenia", "Azerbaijan", "Belarus", "Georgia", "Kazakhstan", "Kyrgyz Republic",
      "Moldova", "Russia", "Tajikistan", "Turkmenistan", "Ukraine", "Uzbekistan")

  # emerging_and_developing_asia
  } else if (countries == "dea") {

    c("Bangladesh", "Bhutan", "Brunei Darussalam", "Cambodia", "China", "Fiji",
      "India", "Indonesia", "Kiribati", "Lao P.D.R.", "Malaysia", "Maldives",
      "Marshall Islands", "Micronesia", "Mongolia", "Myanmar", "Nauru", "Nepal",
      "Palau", "Papua New Guinea", "Philippines", "Samoa", "Solomon Islands",
      "Sri Lanka", "Thailand", "Timor-Leste", "Tonga", "Tuvalu", "Vanuatu", "Vietnam")

  # asean_5
  } else if (countries == "asean_5") {

    c("Indonesia", "Malaysia", "Philippines", "Thailand", "Vietnam")

  # emerging_and_developing_europe
  } else if (countries == "edeuro") {

    c("Albania", "Bosnia and Herzegovina", "Bulgaria", "Croatia", "Hungary",
      "Kosovo", "FYR Macedonia", "Montenegro", "Poland", "Romania", "Serbia",
      "Turkey")

  # latin_america_and_caribbean
  } else if (countries == "latam") {

    c("Antigua and Barbuda", "Argentina", "The Bahamas", "Barbados", "Belize",
      "Bolivia", "Brazil", "Chile", "Colombia", "Costa Rica", "Dominica",
      "Dominican Republic", "Ecuador", "El Salvador", "Grenada", "Guatemala",
      "Guyana", "Haiti", "Honduras", "Jamaica", "Mexico", "Nicaragua", "Panama",
      "Paraguay", "Peru", "St. Kitts and Nevis", "St. Lucia", "St. Vincent and the Grenadines",
      "Suriname", "Trinidad and Tobago", "Uruguay", "Venezuela")

  # middle_east
  } else if (countries == "me") {

    c("Afghanistan", "Algeria", "Bahrain", "Djibouti", "Egypt", "Iran", "Iraq",
      "Jordan", "Kuwait", "Lebanon", "Libya", "Mauritania", "Morocco", "Oman",
      "Pakistan", "Qatar", "Saudi Arabia", "Somalia", "Sudan", "Syria", "Tunisia",
      "United Arab Emirates", "Yemen")

  # sub_saharan_africa
  } else if (countries == "ssa") {

    c("Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cabo Verde",
      "Cameroon", "Central African Republic", "Chad", "Comoros", "Democratic Republic of the Congo",
      "Republic of Congo", "Cote d'Ivoire", "Equatorial Guinea", "Eritrea",
      "Ethiopia", "Gabon", "The Gambia", "Ghana", "Guinea", "Guinea-Bissau",
      "Kenya", "Lesotho", "Liberia", "Madagascar", "Malawi", "Mali", "Mauritius",
      "Mozambique", "Namibia", "Niger", "Nigeria", "Rwanda", "Sao Tome and Principe",
      "Senegal", "Seychelles", "Sierra Leone", "South Africa", "South Sudan",
      "Swaziland", "Tanzania", "Togo", "Uganda", "Zambia", "Zimbabwe")

  }

}



