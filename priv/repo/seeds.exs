# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Streetfood.Repo.insert!(%Streetfood.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# Initialize Permit table
[no_permit_status] = Streetfood.Permit.__info__(:attributes)[:no_permit_status]

Streetfood.Repo.insert!(%Streetfood.Permit{
  id: no_permit_status,
  status: "NO_PERMIT_STATUS"
})

Streetfood.Repo.insert!(%Streetfood.Permit{status: "APPROVED"})
Streetfood.Repo.insert!(%Streetfood.Permit{status: "EXPIRED"})
Streetfood.Repo.insert!(%Streetfood.Permit{status: "ISSUED"})
Streetfood.Repo.insert!(%Streetfood.Permit{status: "REQUESTED"})
Streetfood.Repo.insert!(%Streetfood.Permit{status: "SUSPENDED"})

# Initialize Facility Type table
[no_facility_type_specified] =
  Streetfood.Facility_Type.__info__(:attributes)[:no_facility_type_specified]

Streetfood.Repo.insert!(%Streetfood.Facility_Type{
  id: no_facility_type_specified,
  name: "No Facility Type Recorded"
})

Streetfood.Repo.insert!(%Streetfood.Facility_Type{name: "Push Cart"})
Streetfood.Repo.insert!(%Streetfood.Facility_Type{name: "Truck"})

# Initialize Business table
Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "The Chai Cart",
  location_description: "NEW MONTGOMERY ST: AMBROSE BIERCE ST to MISSION ST (77 - 99)",
  address: "79 NEW MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Santana",
  location_description: "2101 CARROLL AVE",
  address: "5436012"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Santana",
  location_description: "1700 JERROLD AVE",
  address: "5262009"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Santana",
  location_description: "2142 JERROLD AVE",
  address: "5230011"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "DAVIS ST: DAVIS CT \ JACKSON ST to BROADWAY (500 - 699)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Ziaurehman Amini",
  location_description: "DRUMM ST: MARKET ST to CALIFORNIA ST (1 - 6)",
  address: "1 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Ziaurehman Amini",
  location_description: "MARKET ST: DRUMM ST intersection",
  address: "5 THE EMBARCADERO"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Pipo's Grill",
  location_description: "FOLSOM ST: 14TH ST to 15TH ST (1800 - 1899)",
  address: "1800 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Fruteria Serrano",
  location_description: "4650 MISSION ST",
  address: "6955044"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Athena SF Gyro",
  location_description: "MARKET ST: 11TH ST intersection",
  address: "10 SOUTH VAN NESS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Athena SF Gyro",
  location_description: "08TH ST: BRANNAN ST to TOWNSEND ST (600 - 699)",
  address: "699 08TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SF Street Food",
  location_description: "SUTTER ST: CLAUDE LN to GRANT AVE (216 - 299)",
  address: "290 SUTTER ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SF Street Food",
  location_description: "MISSION ST: ANNIE ST to 03RD ST (663 - 699)",
  address: "667 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Chilifruit",
  location_description: "24TH ST: MISSION ST to OSAGE ALY (3300 - 3322)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Halal Cart of San Francisco",
  location_description:
    "MARKET ST: FREMONT ST \ FRONT ST to 01ST ST \ BUSH ST (400 - 498) -- NORTH --",
  address: "1 FRONT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Halal Cart of San Francisco",
  location_description: "MARKET ST: 01ST ST \ BUSH ST to 02ND ST (501 - 599) -- SOUTH --",
  address: "555 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Taqueria Lolita",
  location_description: "EVANS AVE: QUINT ST to RANKIN ST (1700 - 1799)",
  address: "750 PHELPS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Taqueria Lolita",
  location_description: "RANKIN ST: DAVIDSON AVE to EVANS AVE (200 - 299)",
  address: "1700 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Reecees Soulicious",
  location_description: "BAY SHORE BLVD: BAY SHORE BLVD to OAKDALE AVE (185 - 299) -- EAST --",
  address: "201 BAY SHORE BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Reecees Soulicious",
  location_description: "03RD ST: NEWCOMB AVE to OAKDALE AVE (4701 - 4799) -- EAST --",
  address: "4705 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Swell Cream & Coffee",
  location_description: "TARAVAL ST: 36TH AVE to SUNSET BLVD (2600 - 2649)",
  address: "2401 36TH AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Swell Cream & Coffee",
  location_description: "TARAVAL ST: 34TH AVE to 35TH AVE (2400 - 2499)",
  address: "2450 TARAVAL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Yummy Hot Dogs",
  location_description:
    "MARKET ST: MASON ST \ TURK ST to 06TH ST \ GOLDEN GATE AVE \ TAYLOR ST (950 - 998) -- NORTH --",
  address: "954 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Yummy Hot Dogs",
  location_description:
    "MARKET ST: MASON ST \ TURK ST to 06TH ST \ GOLDEN GATE AVE \ TAYLOR ST (943 - 999) -- SOUTH --",
  address: "945 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Scotch Bonnet",
  location_description: "01ST ST: STEVENSON ST to JESSIE ST (21 - 56)",
  address: "50 01ST ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Scotch Bonnet",
  location_description: "MONTGOMERY ST: POST ST to SUTTER ST (1 - 99)",
  address: "25 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Scotch Bonnet",
  location_description: "SANSOME ST: BUSH ST to PINE ST (100 - 199)",
  address: "115 SANSOME ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Scotch Bonnet",
  location_description: "CALIFORNIA ST: SANSOME ST to LEIDESDORFF ST (400 - 448)",
  address: "430 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Casey's Pizza, LLC",
  location_description: "FELL ST: GOUGH ST to OCTAVIA ST (300 - 399)",
  address: "368 FELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Casey's Pizza, LLC",
  location_description: "MISSION ST: NEW MONTGOMERY ST to ANNIE ST (635 - 664)",
  address: "654 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Casey's Pizza, LLC",
  location_description: "POST ST: MONTGOMERY ST to LICK PL (1 - 40)",
  address: "1 POST ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Casey's Pizza, LLC",
  location_description: "SPEAR ST: MISSION ST to HOWARD ST (100 - 199)",
  address: "100 SPEAR ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Casey's Pizza, LLC",
  location_description: "SANSOME ST: PINE ST to CALIFORNIA ST (200 - 299)",
  address: "231 SANSOME ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "TOLAND ST: KIRKWOOD AVE to MCKINNON AVE (600 - 799)",
  address: "600 TOLAND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "MARIN ST: KANSAS ST to HWY 101 N ON RAMP (2500 - 2599)",
  address: "2525 MARIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "JERROLD AVE: UPTON ST to NAPOLEON ST (2201 - 2299)",
  address: "2270 JERROLD AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "ILLINOIS ST: 20TH ST to 22ND ST (900 - 1099)",
  address: "1000 ILLINOIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "MINNESOTA ST: 20TH ST to 22ND ST (800 - 999)",
  address: "900 MINNESOTA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "ALABAMA ST: 16TH ST to 17TH ST (300 - 399)",
  address: "380 ALABAMA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "29TH ST: DOLORES ST to CHURCH ST (200 - 299)",
  address: "210 29TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "LE CONTE AVE: 03RD ST to KEITH ST (1039 - 1099)",
  address: "1098 LE CONTE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "POTRERO AVE: 24TH ST to 25TH ST (1200 - 1299)",
  address: "1200 POTRERO AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "23RD ST: HARRISON ST to TREAT AVE (3000 - 3053)",
  address: "3000 23RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "ILLINOIS ST: MARIPOSA ST \ TERRY A FRANCOIS BLVD to 18TH ST (600 - 699)",
  address: "600 ILLINOIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "26TH ST: TREAT AVE \ TREAT WAY to LUCKY ST (3133 - 3164)",
  address: "3150 26TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "YORK ST: 18TH ST to 19TH ST (600 - 699)",
  address: "620 YORK ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "TREAT AVE: MISTRAL ST to END: 650-699 BLOCK (630 - 699)",
  address: "630 TREAT AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "16TH ST: OWENS ST to 07TH ST \ MISSISSIPPI ST (700 - 899)",
  address: "Assessors Block 8727/Lot005"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description:
    "CESAR CHAVEZ ST: KANSAS ST to BAY SHORE BLVD \ VERMONT ST (2501 - 2625) -- SOUTH --",
  address: "2501 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "HARRISON ST: 17TH ST to MARIPOSA ST (2050 - 2149)",
  address: "2130 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "BERRY ST: 05TH ST to 06TH ST (300 - 399)",
  address: "301 BERRY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "YORK ST: MARIPOSA ST to 18TH ST (500 - 599)",
  address: "501 YORK ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "299 ILLINOIS ST",
  address: "3850001A"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "16TH ST: 03RD ST to 04TH ST (500 - 599)",
  address: "500 16TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "YORK ST: 19TH ST to 20TH ST (700 - 799)",
  address: "720 YORK ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "FOLSOM ST: 16TH ST to ENTERPRISE ST (2000 - 2035)",
  address: "2000 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "ALABAMA ST: MARIPOSA ST to 18TH ST (500 - 599)",
  address: "501 ALABAMA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "03RD ST: 22ND ST to 23RD ST (2501 - 2699) -- EAST --",
  address: "2565 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "26TH ST: SHOTWELL ST to VIRGIL ST (3251 - 3273)",
  address: "3251 26TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "NAPOLEON ST: EVANS AVE \ TOLAND ST to JERROLD AVE (25 - 299)",
  address: "180 NAPOLEON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "03RD ST: 24TH ST to 25TH ST (2800 - 2898) -- WEST --",
  address: "2800 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "HARRISON ST: 19TH ST to MISTRAL ST (2301 - 2360)",
  address: "2301 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "HARRISON ST: MARIPOSA ST to 18TH ST (2150 - 2198)",
  address: "2150 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "16TH ST: MISSOURI ST to CONNECTICUT ST (1000 - 1099)",
  address: "1006 16TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "NAPOLEON ST: SELBY ST to EVANS AVE \ TOLAND ST (1 - 98)",
  address: "Assessors Block 4347a/Lot004"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "16TH ST: FLORIDA ST to ALABAMA ST (2500 - 2599)",
  address: "2500 16TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "23RD ST: HARRISON ST to TREAT AVE (3000 - 3053)",
  address: "3050 23RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "17TH ST: TREAT AVE to FOLSOM ST (3025 - 3099)",
  address: "3030 17TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "MISSION CREEK: 05TH ST to 06TH ST (0 - 0)",
  address: "Assessors Block 3810/Lot008"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "MISSION CREEK: 03RD ST to 04TH ST (0 - 0)",
  address: "Assessors Block 8711/Lot023"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "CESAR CHAVEZ ST: EVANS AVE to KANSAS ST (2100 - 2550)",
  address: "2400 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "CESAR CHAVEZ ST: EVANS AVE to KANSAS ST (2100 - 2550)",
  address: "2300 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "WISCONSIN ST: 16TH ST to 17TH ST (100 - 199)",
  address: "166 WISCONSIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "POTRERO AVE: ALAMEDA ST to 15TH ST (100 - 199)",
  address: "100 POTRERO AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "EVANS AVE: NAPOLEON ST \ TOLAND ST to MARIN ST (2000 - 2099)",
  address: "2090 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "BRYANT ST: 11TH ST \ 13TH ST \ DIVISION ST to DIVISION ST (1300 - 1319)",
  address: "1300 BRYANT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "DONNER AVE: START: 1600-1699 BLOCK to 03RD ST (1600 - 1699)",
  address: "1600 DONNER AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "BERRY ST: 03RD ST to 04TH ST (100 - 199)",
  address: "185 BERRY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "MISSION ST: BEALE ST to FREMONT ST (300 - 399)",
  address: "350 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description:
    "EXECUTIVE PARK BLVD: CANDLESTICK COVE WAY to SANDPIPER COVE WAY \ THOMAS MELLON DR (138 - 198)",
  address: "150 EXECUTIVE PARK BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "MINNA ST: 10TH ST to 11TH ST (900 - 999)",
  address: "911 MINNA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "MINNESOTA ST: 04TH ST \ MARIPOSA ST to 18TH ST (500 - 599)",
  address: "535 MINNESOTA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "JAMESTOWN AVE: GRIFFITH ST to CORONADO ST (800 - 850)",
  address: "800 JAMESTOWN AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "ULLOA ST: WOODSIDE AVE to SYDNEY WAY (1 - 56)",
  address: "2 ULLOA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "HAWES ST: INGERSON AVE to JAMESTOWN AVE (2900 - 2999)",
  address: "2930 HAWES ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "Assessors Block 8710/Lot003",
  address: "8710003"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "Assessors Block /Lot",
  address: "17MFF-0110"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "04TH ST: CHINA BASIN ST to MISSION BAY BLVD (1300 - 1399)",
  address: "1322 04TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "MARIPOSA ST: 04TH ST \ MINNESOTA ST to INDIANA ST (700 - 799)",
  address: "777 MARIPOSA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description: "LE CONTE AVE: 03RD ST to KEITH ST (1039 - 1099)",
  address: "1075 LE CONTE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "May Catering",
  location_description:
    "EVANS AVE: HUNTERS POINT BLVD to JENNINGS ST \ MIDDLE POINT RD (1031 - 1099)",
  address: "1059 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Santana ESG, Inc.",
  location_description: "SANSOME ST: SUTTER ST to BUSH ST (1 - 99)",
  address: "1 SANSOME ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "The Huge Hotdog Concession",
  location_description: "POLK ST: BUSH ST to AUSTIN ST \ FRANK NORRIS ST (1300 - 1329)",
  address: "1300 POLK ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eli's Hot Dogs",
  location_description: "JERROLD AVE: BARNEVELD AVE to JERROLD AVE (2351 - 2369)",
  address: "101 BAY SHORE BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Santana ESG, Inc.",
  location_description: "HARRISON ST: 21ST ST to 22ND ST (2500 - 2599)",
  address: "2598 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Wonder Philly",
  location_description: "04TH ST: BERRY ST to MISSION CREEK (900 - 999)",
  address: "960 04TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Santana ESG, Inc.",
  location_description: "SHOTWELL ST: 16TH ST to 17TH ST (200 - 299)",
  address: "200 SHOTWELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Santo Toribio",
  location_description: "TOLAND ST: NEWCOMB AVE to OAKDALE AVE (900 - 999)",
  address: "928 TOLAND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Kabob Trolley, LLC",
  location_description: "04TH ST: TOWNSEND ST to KING ST (700 - 799)",
  address: "298 KING ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "HOLLISTER AVE: HAWES ST to INGALLS ST (1000 - 1099)",
  address: "1000 HOLLISTER AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "INGERSON AVE: JENNINGS ST to 03RD ST (1100 - 1199)",
  address: "1173 INGERSON AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "GRIFFITH ST: INGERSON AVE to JAMESTOWN AVE (2900 - 2999)",
  address: "2900 GRIFFITH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "JAMESTOWN AVE: GRIFFITH ST to CORONADO ST (800 - 850)",
  address: "800 JAMESTOWN AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "KEY AVE: JENNINGS ST to 03RD ST (1000 - 1068)",
  address: "1060 KEY AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "JENNINGS ST: KEY AVE to LE CONTE AVE (3400 - 3499)",
  address: "3444 JENNINGS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "DONNER AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1475 DONNER AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "BANCROFT AVE: JENNINGS ST to KEITH ST (1500 - 1599)",
  address: "1562 BANCROFT AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "WALLACE AVE: JENNINGS ST to KEITH ST (1500 - 1599)",
  address: "1550 WALLACE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "FITZGERALD AVE: HAWES ST to INGALLS ST (1100 - 1199)",
  address: "1104 FITZGERALD AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "PALOU AVE: HAWES ST to INGALLS ST (1100 - 1199)",
  address: "1101 PALOU AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "YOSEMITE AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1420 YOSEMITE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "JENNINGS ST: VAN DYKE AVE to WALLACE AVE (2100 - 2199)",
  address: "2115 JENNINGS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "HARBOR RD: NORTHRIDGE RD to INGALLS ST (1 - 299)",
  address: "297 HARBOR RD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "QUESADA AVE: CRISP RD to HAWES ST (1170 - 1199)",
  address: "1191 QUESADA AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "SHAFTER AVE: HAWES ST to INGALLS ST (1200 - 1299)",
  address: "1207 SHAFTER AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "INGALLS ST: GEORGE CT to OAKDALE AVE (1350 - 1399)",
  address: "1309 INGALLS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "KISKA RD: DORMITORY RD \ KIRKWOOD AVE to REARDON RD (141 - 199)",
  address: "195 KISKA RD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "KIRKWOOD AVE: NEWHALL ST to PHELPS ST (1600 - 1699)",
  address: "1698 KIRKWOOD AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "NIBBI CT: GILLETTE AVE to END: 1-99 BLOCK (1 - 99)",
  address: "35 NIBBI CT"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Singh Brothers Ice Cream",
  location_description: "PENINSULA AVE: BLANKEN AVE to LATHROP AVE (300 - 399)",
  address: "360 PENINSULA AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch India",
  location_description: "POST ST: MONTGOMERY ST to LICK PL (1 - 40)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Julie's Hot Dogs",
  location_description: "MISSION ST: 19TH ST to 20TH ST (2300 - 2399)",
  address: "2386 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Serendipity SF",
  location_description: "CALIFORNIA ST: SANSOME ST to LEIDESDORFF ST (400 - 448)",
  address: "400 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Julie's Hot Dogs",
  location_description: "1850 MISSION ST",
  address: "3547261"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "17TH ST: SAN BRUNO AVE to UTAH ST (2200 - 2299)",
  address: "2222 17TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "PARNASSUS AVE: HILLWAY AVE to 03RD AVE (400 - 599)",
  address: "400 PARNASSUS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "07TH ST: CLEVELAND ST to HARRISON ST (314 - 399)",
  address: "355 07TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "12TH ST: ISIS ST to BERNICE ST (332 - 365)",
  address: "333 12TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "LARKIN ST: FERN ST to BUSH ST (1127 - 1199)",
  address: "1144 LARKIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "FULTON ST: FRANKLIN ST to GOUGH ST (300 - 399)",
  address: "365 FULTON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "BRYANT ST: ALAMEDA ST intersection",
  address: "1525 BRYANT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "WEBSTER ST: CLAY ST to WASHINGTON ST (2200 - 2299)",
  address: "2200 WEBSTER ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "TURK ST: WEBSTER ST to FILLMORE ST (1300 - 1399)",
  address: "1345 TURK ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch A Bunch",
  location_description: "MISSION ST: 14TH ST to 15TH ST (1800 - 1899)",
  address: "1850 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Julie's Hot Dogs",
  location_description: "2101 MISSION ST",
  address: "3575091"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Ruru Juice LLC",
  location_description: "SUTTER ST: SANSOME ST to MONTGOMERY ST (50 - 99)",
  address: "80 SUTTER ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "The Chef Station",
  location_description: "425 DIVISADERO ST",
  address: "1215016"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "The Chef Station",
  location_description: "10TH ST: FELL ST \ MARKET ST \ POLK ST to STEVENSON ST (1 - 18)",
  address: "8 10TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Ruru Juice LLC",
  location_description: "MISSION ST: 02ND ST to NEW MONTGOMERY ST (600 - 634)",
  address: "601 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Halal Food",
  location_description: "CALIFORNIA ST: DRUMM ST to DAVIS ST (1 - 99)",
  address: "50 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Tonayense #60",
  location_description: "HARRISON ST: 17TH ST to MARIPOSA ST (2050 - 2149)",
  address: "401 TREAT AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Tonayense #60",
  location_description: "HARRISON ST: MISTRAL ST to 20TH ST (2345 - 2399)",
  address: "2355 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Tonayanse #4 / #36",
  location_description: "HARRISON ST: 13TH ST to 14TH ST (1700 - 1799)",
  address: "1717 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos El Primo",
  location_description: "QUINT ST: DAVIDSON AVE to EVANS AVE (300 - 399)",
  address: "1700 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos El Primo",
  location_description: "WILLIAMS AVE: APOLLO ST to PHELPS ST \ VESTA ST (300 - 399)",
  address: "345 WILLIAMS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos El Primo",
  location_description: "JENNINGS ST: WALLACE AVE to YOSEMITE AVE (2200 - 2299)",
  address: "1495 WALLACE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Khalid M Malik",
  location_description: "BATTERY ST: MARKET ST to BUSH ST (1 - 10)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SPUNBYSS",
  location_description: "02ND ST: TEHAMA ST to CLEMENTINA ST (224 - 273)",
  address: "240 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Julie's Hot Dogs",
  location_description: "MISSION ST: 19TH ST to 20TH ST (2300 - 2399)",
  address: "2365 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "PINE ST: POLK ST to VAN NESS AVE (1500 - 1599)",
  address: "1540 PINE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "VALENCIA ST: 18TH ST to 19TH ST (700 - 799)",
  address: "740 VALENCIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "EDDY ST: STEINER ST to PIERCE ST (1600 - 1699)",
  address: "1652 EDDY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "02ND ST: FEDERAL ST to SOUTH PARK (519 - 548)",
  address: "544 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "MASONIC AVE: MCALLISTER ST to FULTON ST (500 - 599)",
  address: "500 MASONIC AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "MISSION ST: ANNIE ST to 03RD ST (663 - 699)",
  address: "690 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "02ND ST: JESSIE ST to MISSION ST (69 - 99)",
  address: "85 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "TREAT AVE: DIVISION ST \ FLORIDA ST to ALAMEDA ST (1 - 99)",
  address: "Assessors Block 3902/Lot002"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "CLAY ST: BATTERY ST to SANSOME ST (400 - 499)",
  address: "432 CLAY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description:
    "THOMAS MORE WAY: BROTHERHOOD WAY \ CHUMASERO DR to SAN FRANCISCO GOLF CLUB RD (1 - 99)",
  address: "1 THOMAS MORE WAY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description:
    "CESAR CHAVEZ ST: SOUTH VAN NESS AVE to CAPP ST \ MISSION ST (3300 - 3398) -- NORTH --",
  address: "3300 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "MISSION ST: 07TH ST to ANGELOS ALY \ JULIA ST (1100 - 1165)",
  address: "1118 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "MINNESOTA ST: 23RD ST to 24TH ST (1200 - 1299)",
  address: "1240 MINNESOTA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "DAVIDSON AVE: QUINT ST to RANKIN ST (1500 - 1599)",
  address: "1580 DAVIDSON AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "BURKE AVE: START: 1500-1599 BLOCK to 03RD ST (1500 - 1599)",
  address: "1570 BURKE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "HOWARD ST: 01ST ST to MALDEN ALY (500 - 589)",
  address: "501 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "MASONIC AVE: MCALLISTER ST to FULTON ST (500 - 599)",
  address: "599 MASONIC AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "22ND ST: SAN BRUNO AVE to UTAH ST (2400 - 2449)",
  address: "2401 22ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SOHOMEI, LLC",
  location_description: "ELLIS ST: LARKIN ST to POLK ST (700 - 799)",
  address: "730 ELLIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "CC Acquisition LLC",
  location_description:
    "MARKET ST: MAIN ST to BEALE ST \ DAVIS ST \ PINE ST (214 - 298) -- NORTH --",
  address: "298 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "CC Acquisition LLC",
  location_description: "VALENCIA ST: 16TH ST to 17TH ST (500 - 599)",
  address: "560 VALENCIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "CC Acquisition LLC",
  location_description: "MARKET ST: 01ST ST \ BUSH ST to 02ND ST (501 - 599) -- SOUTH --",
  address: "525 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description:
    "HARRISON ST: FREMONT ST \ I-80 W OFF RAMP to 01ST ST \ I-80 E ON RAMP (400 - 499)",
  address: "401 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "MISSION ST: SHAW ALY to ANTHONY ST (543 - 586)",
  address: "560 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "PINE ST: MONTGOMERY ST to BELDEN ST (400 - 489)",
  address: "555 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "MARIPOSA ST: HAMPSHIRE ST to YORK ST (2500 - 2599)",
  address: "2500 MARIPOSA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description:
    "BRANNAN ST: 05TH ST to 06TH ST \ I-280 NORTHBOUND \ I-280 SOUTHBOUND (600 - 699)",
  address: "610 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "03RD ST: 16TH ST to MARIPOSA ST (1800 - 1998) -- WEST --",
  address: "1900 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "HARRISON ST: 16TH ST \ TREAT AVE to 17TH ST (2000 - 2099)",
  address: "2010 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "REDWOOD ST: POLK ST to VAN NESS AVE (100 - 199)",
  address: "180 REDWOOD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "NATOMA ST: FREMONT ST to 01ST ST (1 - 19)",
  address: "400 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "14TH ST: SHOTWELL ST to SOUTH VAN NESS AVE (139 - 199)",
  address: "164 14TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "MARKET ST: 12TH ST \ PAGE ST to FRANKLIN ST (1591 - 1615) -- SOUTH --",
  address: "1601 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "50 IVY ST",
  address: "811001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "TURK ST: GOUGH ST to LAGUNA ST (900 - 1099)",
  address: "1003 TURK ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "MASONIC AVE: EWING TER to TURK BLVD (200 - 298) -- EAST --",
  address: "270 MASONIC AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "HAYES ST: SHRADER ST to STANYAN ST (2200 - 2299)",
  address: "2200 HAYES ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "BRYANT ST: 19TH ST to 20TH ST (2100 - 2199)",
  address: "2157 BRYANT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "HOWARD ST: BEALE ST to FREMONT ST (300 - 399)",
  address: "300 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "HARRISON ST: ALAMEDA ST to 15TH ST (1830 - 1899)",
  address: "1830 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "John's Catering #5",
  location_description: "11TH ST: KISSLING ST to BURNS PL (236 - 276)",
  address: "251 11TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Subs on Hubs",
  location_description: "BRANNAN ST: 08TH ST to 09TH ST (900 - 999)",
  address: "934 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Subs on Hubs",
  location_description: "05TH ST: HARRISON ST \ I-80 W OFF RAMP to PERRY ST (400 - 449)",
  address: "400 05TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Subs on Hubs",
  location_description: "Assessors Block 8711/Lot021",
  address: "8711021"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Subs on Hubs",
  location_description: "08TH ST: FOLSOM ST to RINGOLD ST (300 - 341)",
  address: "333 08TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tres Agaves Mexican Kitchen & Tequila Lounge LLC. dba Tres Truck",
  location_description: "RHODE ISLAND ST: 16TH ST to 17TH ST (300 - 399)",
  address: "301 RHODE ISLAND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tres Agaves Mexican Kitchen & Tequila Lounge LLC. dba Tres Truck",
  location_description: "16TH ST: KANSAS ST to VERMONT ST (1700 - 1799)",
  address: "1700 16TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Munch India",
  location_description: "CALIFORNIA ST: SANSOME ST to LEIDESDORFF ST (400 - 448)",
  address: "400 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "SF Cart Project",
  location_description:
    "MISSION BAY BLVD SOUTH: 03RD ST \ MISSION BAY BLVD to 04TH ST \ MISSION BAY BLVD (501 - 599)",
  address: "535 MISSION BAY BLVD SOUTH"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Marengo",
  location_description: "WATERLOO ST: MARENGO ST to BAY SHORE BLVD (40 - 99)",
  address: "75 WATERLOO ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Kabob Trolley, LLC",
  location_description: "MISSION ST: 07TH ST to ANGELOS ALY \ JULIA ST (1100 - 1165)",
  address: "1133 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quick Grub",
  location_description: "SANSOME ST: SUTTER ST to BUSH ST (1 - 99)",
  address: "1 BUSH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
  location_description: "POWELL ST: GEARY ST to POST ST (300 - 399)",
  address: "331 POWELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
  location_description: "POST ST: STOCKTON ST to POWELL ST (300 - 399)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
  location_description: "POST ST: STOCKTON ST to POWELL ST (300 - 399)",
  address: "384 POST ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
  location_description: "GEARY ST: STOCKTON ST to POWELL ST (200 - 299)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Lol-Tun",
  location_description: "ARMSTRONG AVE: KEITH ST to 03RD ST (1600 - 1699)",
  address: "1610 ARMSTRONG AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "01ST ST: CLEMENTINA ST to FOLSOM ST (245 - 299)",
  address: "245 01ST ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "ALAMEDA ST: HAMPSHIRE ST to BRYANT ST (2400 - 2599)",
  address: "Assessors Block 3905/Lot011"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "BERRY ST: 05TH ST to 06TH ST (300 - 399)",
  address: "355 BERRY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "BERRY ST: 06TH ST to KING ST (400 - 431)",
  address: "420 BERRY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "08TH ST: HERON ST to HARRISON ST (350 - 399)",
  address: "350 08TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "11TH ST: FOLSOM ST to HARRISON ST (300 - 399)",
  address: "355 11TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "FOLSOM ST: 12TH ST to 13TH ST (1600 - 1699)",
  address: "1690 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "FREMONT ST: TRANSBAY HUMP to NATOMA ST (116 - 169)",
  address: "147 FREMONT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "FREMONT ST: FOLSOM ST to HARRISON ST \ I-80 W OFF RAMP (300 - 399)",
  address: "350 FREMONT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "HARRISON ST: BEALE ST to FREMONT ST \ I-80 W OFF RAMP (300 - 399)",
  address: "355 FREMONT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description:
    "HARRISON ST: FREMONT ST \ I-80 W OFF RAMP to 01ST ST \ I-80 E ON RAMP (400 - 499)",
  address: "401 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "16TH ST: OWENS ST to 07TH ST \ MISSISSIPPI ST (700 - 899)",
  address: "701 16TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "KANSAS ST: CESAR CHAVEZ ST to MARIN ST (1600 - 1699)",
  address: "Assessors Block 4341/Lot001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "LOOMIS ST: FLOWER ST to WATERLOO ST (120 - 255)",
  address: "491 BAY SHORE BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mini Mobile Food Catering",
  location_description: "MENDELL ST: GALVEZ AVE to HUDSON AVE (600 - 699)",
  address: "620 MENDELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos El Ojo De Agua",
  location_description: "03RD ST: SOUTH PARK to VARNEY PL (548 - 586)",
  address: "551 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "tacos y pupusas los trinos",
  location_description: "4384 MISSION ST",
  address: "6798004"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "Assessors Block /Lot",
  address: "19MFF-00051"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "RUSS ST: TULIP ALY to NATOMA ST (20 - 39)",
  address: "25 RUSS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "03RD ST: MISSION BAY BLVD to WARRIORS WAY (1401 - 1599) -- EAST --",
  address: "1455 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "BRANNAN ST: HARRIET ST to LUCERNE ST (715 - 743)",
  address: "732 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "07TH ST: CLEVELAND ST to HARRISON ST (314 - 399)",
  address: "370 07TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "CLAY ST: MONTGOMERY ST to KEARNY ST (600 - 699)",
  address: "634 CLAY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "CLEMENTINA ST: 01ST ST to ECKER ST (1 - 37)",
  address: "19 CLEMENTINA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "COLUMBIA SQUARE ST: FOLSOM ST to HARRISON ST (1 - 99)",
  address: "57 COLUMBIA SQUARE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "09TH ST: BRYANT ST \ HWY 101 N OFF RAMP to BRANNAN ST (500 - 599)",
  address: "555 09TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "10TH ST: FOLSOM ST to SHERIDAN ST (300 - 353)",
  address: "340 10TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "DORE ST: HOWARD ST to FOLSOM ST (1 - 99)",
  address: "45 DORE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "FOLSOM ST: FALMOUTH ST to 06TH ST (947 - 999)",
  address: "965 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "FOLSOM ST: SHERMAN ST to MOSS ST (1061 - 1078)",
  address: "1069 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "FOLSOM ST: DORE ST to 10TH ST (1345 - 1399)",
  address: "1398 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "FRANKLIN ST: HAYES ST to IVY ST (300 - 348)",
  address: "300 FRANKLIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "FRANKLIN ST: FULTON ST to MCALLISTER ST (466 - 599)",
  address: "301 VAN NESS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "GEARY ST: HYDE ST to LARKIN ST (800 - 899)",
  address: "855 GEARY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "GRACE ST: MISSION ST to HOWARD ST (1 - 99)",
  address: "65 GRACE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "HARRIET ST: HOWARD ST to FOLSOM ST (1 - 99)",
  address: "15 HARRIET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "HARRISON ST: ESSEX ST \ I-80 E ON RAMP to 02ND ST (550 - 599)",
  address: "575 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "HARRISON ST: MERLIN ST to OAK GROVE ST (924 - 950)",
  address: "938 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "HOWARD ST: 08TH ST to 09TH ST (1200 - 1299)",
  address: "1252 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "MINNA ST: 07TH ST to JULIA ST (600 - 666)",
  address: "621 MINNA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "MINNA ST: 08TH ST to 09TH ST (700 - 799)",
  address: "786 MINNA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "MISSION ST: 06TH ST to 07TH ST (1000 - 1099)",
  address: "1023 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "MISSION ST: 06TH ST to 07TH ST (1000 - 1099)",
  address: "1045 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "MISSION ST: 07TH ST to ANGELOS ALY \ JULIA ST (1100 - 1165)",
  address: "1119 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Paradise Catering",
  location_description: "MISSION ST: 07TH ST to ANGELOS ALY \ JULIA ST (1100 - 1165)",
  address: "1131 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "STANFORD ST: BRANNAN ST to TOWNSEND ST (1 - 100)",
  address: "Assessors Block 3788/Lot002"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "23RD ST: START: 100-699 BLOCK to ILLINOIS ST (100 - 699)",
  address: "435 23RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "TERRY A FRANCOIS BLVD: MISSION BAY BLVD to MISSION BAY BLVD (0 - 0)",
  address: "Assessors Block 8722/Lot005"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "CHINA BASIN ST: TERRY A FRANCOIS BLVD to 03RD ST (300 - 499)",
  address: "435 CHINA BASIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "CHINA BASIN ST: TERRY A FRANCOIS BLVD to 03RD ST (300 - 499)",
  address: "Assessors Block 8720/Lot009"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "CESAR CHAVEZ ST: EVANS AVE to KANSAS ST (2100 - 2550)",
  address: "2323 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "CESAR CHAVEZ ST: EVANS AVE to KANSAS ST (2100 - 2550)",
  address: "2200 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "BROADWAY: BATTERY ST to SANSOME ST (200 - 299)",
  address: "250 BROADWAY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description:
    "BROADWAY: POWELL ST \ ROBERT C LEVY TUNL to MASON ST (800 - 898) -- NORTH --",
  address: "860 BROADWAY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "ILLINOIS ST: 16TH ST to MARIPOSA ST \ TERRY A FRANCOIS BLVD (400 - 599)",
  address: "409 ILLINOIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "INDIANA ST: 23RD ST to 25TH ST \ I-280 N ON RAMP (1200 - 1399)",
  address: "Assessors Block 4228/Lot080"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "INDIANA ST: 26TH ST to CESAR CHAVEZ ST (1500 - 1599)",
  address: "1575 INDIANA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Mike's Catering",
  location_description: "MINNESOTA ST: 24TH ST to 25TH ST (1300 - 1399)",
  address: "1310 MINNESOTA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "SELBY ST: HUDSON AVE to INNES AVE (500 - 599)",
  address: "500 SELBY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "02ND ST: HOWARD ST to TEHAMA ST (200 - 227)",
  address: "222 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "3305 03RD ST",
  address: "4502A002"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "03RD ST: 25TH ST to 26TH ST (2900 - 2998) -- WEST --",
  address: "2920 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "03RD ST: ARTHUR AVE \ CARGO WAY to BURKE AVE (3401 - 3499) -- EAST --",
  address: "3433 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "ALABAMA ST: TREAT AVE to 15TH ST (201 - 212)",
  address: "201 ALABAMA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "CESAR CHAVEZ ST: INDIANA ST to IOWA ST (1300 - 1399)",
  address: "1301 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "CESAR CHAVEZ ST: CONNECTICUT ST to EVANS AVE (1900 - 2099)",
  address: "2190 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description:
    "BAY SHORE BLVD: VISITACION AVE to SUNNYDALE AVE (2501 - 2599) -- EAST --",
  address: "2555 BAY SHORE BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "BEALE ST: HARRISON ST to BRYANT ST \ DELANCEY ST (400 - 499)",
  address: "400 BEALE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "BRANNAN ST: HARRIET ST to LUCERNE ST (715 - 743)",
  address: "722 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description:
    "BRYANT ST: 04TH ST \ I-80 E OFF RAMP to 05TH ST \ I-80 E ON RAMP (600 - 699)",
  address: "645 BRYANT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "BURKE AVE: START: 1500-1599 BLOCK to 03RD ST (1500 - 1599)",
  address: "1575 BURKE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "CALIFORNIA ST: DRUMM ST to DAVIS ST (1 - 99)",
  address: "50 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "ALANA WAY: COUNTY LINE intersection",
  address: "151 EXECUTIVE PARK BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Quan Catering",
  location_description: "LANE ST: VAN DYKE AVE to 03RD ST (2100 - 2199)",
  address: "2111 LANE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Golden Catering",
  location_description: "BAY SHORE BLVD: LELAND AVE to VISITACION AVE (2401 - 2499) -- EAST --",
  address: "2401 BAY SHORE BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Golden Catering",
  location_description: "CRESCENT AVE: ANDERSON ST to ELLSWORTH ST (600 - 699)",
  address: "601 CRESCENT AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Golden Catering",
  location_description:
    "EXECUTIVE PARK BLVD: EMERALD COVE WAY to CANDLESTICK COVE WAY (101 - 137)",
  address: "101 EXECUTIVE PARK BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Golden Catering",
  location_description: "EXECUTIVE PARK BLVD: CRESCENT WAY to HARNEY WAY (300 - 399)",
  address: "301 EXECUTIVE PARK BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Golden Catering",
  location_description: "JAMESTOWN AVE: GRIFFITH ST to CORONADO ST (800 - 850)",
  address: "835 JAMESTOWN AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Kettle Corn Star",
  location_description:
    "MARKET ST: POWELL ST to 05TH ST \ CYRIL MAGNIN ST (865 - 899) -- SOUTH --",
  address: "865 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Rodriguez",
  location_description: "SANSOME ST: SUTTER ST to BUSH ST (1 - 99)",
  address: "1 SANSOME ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Rodriguez",
  location_description: "EVANS AVE: KEITH ST to MENDELL ST (1201 - 1399) -- SOUTH --",
  address: "1275 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Rodriguez",
  location_description: "MENDELL ST: GALVEZ AVE to HUDSON AVE (600 - 699)",
  address: "600 MENDELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos Rodriguez",
  location_description: "OAKDALE AVE: INDUSTRIAL ST \ SELBY ST to TOLAND ST (2100 - 2199)",
  address: "2198 OAKDALE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "PALOU AVE: PALOU AVE to GRIFFITH ST (904 - 999)",
  address: "931 PALOU AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "PALOU AVE: PALOU AVE to GRIFFITH ST (904 - 999)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "QUESADA AVE: ARELIOUS WALKER DR to GRIFFITH ST (1000 - 1099)",
  address: "1031 QUESADA AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "REVERE AVE: GRIFFITH ST to CRISP RD (1100 - 1188)",
  address: "1145 REVERE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "REVERE AVE: GRIFFITH ST to CRISP RD (1100 - 1188)",
  address: "1160 REVERE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "REVERE AVE: GRIFFITH ST to CRISP RD (1100 - 1188)",
  address: "1135 REVERE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "SHAFTER AVE: GRIFFITH ST to HAWES ST (1100 - 1199)",
  address: "1127 SHAFTER AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "THOMAS AVE: GRIFFITH ST to HAWES ST (1100 - 1199)",
  address: "1180 THOMAS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "THOMAS AVE: HAWES ST to INGALLS ST (1200 - 1299)",
  address: "1212 THOMAS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "THOMAS AVE: HAWES ST to INGALLS ST (1200 - 1299)",
  address: "1265 THOMAS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "UNDERWOOD AVE: INGALLS ST to JENNINGS ST (1300 - 1399)",
  address: "1389 UNDERWOOD AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "UNDERWOOD AVE: INGALLS ST to JENNINGS ST (1300 - 1399)",
  address: "1351 UNDERWOOD AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "VAN DYKE AVE: INGALLS ST to JENNINGS ST (1300 - 1399)",
  address: "1370 VAN DYKE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "VAN DYKE AVE: INGALLS ST to JENNINGS ST (1300 - 1399)",
  address: "1337 VAN DYKE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "WALLACE AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1450 WALLACE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "WALLACE AVE: JENNINGS ST to KEITH ST (1500 - 1599)",
  address: "1500 WALLACE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "YOSEMITE AVE: HAWES ST to INGALLS ST (1300 - 1399)",
  address: "1335 YOSEMITE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "YOSEMITE AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1420 YOSEMITE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "YOSEMITE AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1430 YOSEMITE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "BANCROFT AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1440 BANCROFT AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "BANCROFT AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1460 BANCROFT AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "BANCROFT AVE: JENNINGS ST to KEITH ST (1500 - 1599)",
  address: "1555 BANCROFT AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "BEALE ST: FOLSOM ST to HARRISON ST (300 - 399)",
  address: "300 BEALE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "DONNER AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1475 CARROLL AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "DONNER AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1450 DONNER AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "FELL ST: BRODERICK ST to BAKER ST (1300 - 1399)",
  address: "1377 FELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "FREMONT ST: NATOMA ST to HOWARD ST (170 - 199)",
  address: "Assessors Block 3720/Lot001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "GRIFFITH ST: QUESADA AVE to REVERE AVE (1300 - 1399)",
  address: "1300 GRIFFITH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "GRIFFITH ST: SHAFTER AVE to THOMAS AVE (1500 - 1599)",
  address: "1515 GRIFFITH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "HAWES ST: SHAFTER AVE to THOMAS AVE (1500 - 1599)",
  address: "1153 SHAFTER AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "JENNINGS ST: VAN DYKE AVE to WALLACE AVE (2100 - 2199)",
  address: "2115 JENNINGS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "MAIN ST: FOLSOM ST to HARRISON ST (300 - 399)",
  address: "201 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Liang Bai Ping",
  location_description: "OFARRELL ST: BRODERICK ST to SAINT JOSEPHS AVE (2200 - 2299)",
  address: "2200 OFARRELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Giant Burrito",
  location_description: "BAY SHORE BLVD: FLOWER ST to CORTLAND AVE (341 - 489) -- EAST --",
  address: "353 BAY SHORE BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Giant Burrito",
  location_description: "GENEVA AVE: PRAGUE ST to LINDA VISTA STPS (1500 - 1598) -- SOUTH --",
  address: "1500 GENEVA AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "La Jefa",
  location_description: "1550 04TH ST",
  address: "8711007"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "La Jefa",
  location_description: "155 SANSOME ST",
  address: "268001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "La Jefa",
  location_description: "80 SUTTER ST",
  address: "289005"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Let's Be Frank",
  location_description: "HAYES ST: GOUGH ST to OCTAVIA ST (400 - 499)",
  address: "425 HAYES ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Let's Be Frank",
  location_description: "LINDEN ST: GOUGH ST to OCTAVIA ST (300 - 399)",
  address: "404 OCTAVIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Kettle Corn Star",
  location_description:
    "MARKET ST: YERBA BUENA LN to 04TH ST \ ELLIS ST \ STOCKTON ST (767 - 799) -- SOUTH --",
  address: "773 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Halal Cart of San Francisco",
  location_description: "CALIFORNIA ST: LEIDESDORFF ST to MONTGOMERY ST (449 - 499)",
  address: "400 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Halal Cart of San Francisco",
  location_description: "MARKET ST: STEUART ST to SPEAR ST (1 - 99) -- SOUTH --",
  address: "1 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Esmeli Catering",
  location_description: "HOOPER ST: 07TH ST to 08TH ST (100 - 199)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Got Snacks",
  location_description: "03RD ST: TERRY A FRANCOIS BLVD to CHANNEL ST (1000 - 1099)",
  address: "1020 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Expresso Subito, LLC.",
  location_description: "CALIFORNIA ST: DAVIS ST to FRONT ST (100 - 199)",
  address: "150 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Expresso Subito, LLC.",
  location_description: "MISSION ST: ANTHONY ST to 02ND ST (573 - 599)",
  address: "85 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Expresso Subito, LLC.",
  location_description: "FRONT ST: CALIFORNIA ST to HALLECK ST (200 - 234)",
  address: "150 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bay Area Dots, LLC",
  location_description: "BEACH ST: HYDE ST to LARKIN ST (700 - 799)",
  address: "900 BEACH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bay Area Dots, LLC",
  location_description: "TAYLOR ST: BAY ST intersection",
  address: "567 BAY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Shah's Halal Food",
  location_description: "MARKET ST: BATTERY ST to SUTTER ST (540 - 558) -- NORTH --",
  address: "532 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Isidoro Serrano",
  location_description: "21ST ST: CAPP ST to MISSION ST (3150 - 3199)",
  address: "2501 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Alfaro Truck",
  location_description: "VALENCIA ST: 14TH ST to ROSA PARKS LN (300 - 337)",
  address: "306 VALENCIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Union Square Business Improvement District",
  location_description: "MAIDEN LN: GRANT AVE to STOCKTON ST (100 - 199)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Golden Gate Halal Food",
  location_description:
    "MARKET ST: MASON ST \ TURK ST to 06TH ST \ GOLDEN GATE AVE \ TAYLOR ST (943 - 999) -- SOUTH --",
  address: "979 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Golden Gate Halal Food",
  location_description:
    "MARKET ST: 07TH ST \ CHARLES J BRENHAM PL to 08TH ST \ GROVE ST \ HYDE ST (1101 - 1199) -- SOUTH --",
  address: "1169 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Star Taco",
  location_description: "580 HOWARD ST",
  address: "3721092"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Authentic India",
  location_description:
    "MARKET ST: 09TH ST \ LARKIN ST to 10TH ST \ FELL ST \ POLK ST (1301 - 1399) -- SOUTH --",
  address: "1355 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Calamar Perubian Food Truck",
  location_description: "24TH ST: UTAH ST to POTRERO AVE (2600 - 2699)",
  address: "2615 24TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "SANSOME ST: SUTTER ST to BUSH ST (1 - 99)",
  address: "1 BUSH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Street Meet",
  location_description: "HOWARD ST: 01ST ST to MALDEN ALY (500 - 589)",
  address: "564 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Alambre",
  location_description: "SHOTWELL ST: 14TH ST to 15TH ST (1 - 99)",
  address: "1800 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Alambre",
  location_description: "14TH ST: FOLSOM ST to SHOTWELL ST (100 - 150)",
  address: "1800 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "BROADWAY: DAVIS ST to FRONT ST (50 - 99)",
  address: "90 BROADWAY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "BERRY ST: 03RD ST to 04TH ST (100 - 199)",
  address: "185 BERRY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "04TH ST: HOWARD ST to CLEMENTINA ST (200 - 267)",
  address: "250 04TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "BERRY ST: 03RD ST to 04TH ST (100 - 199)",
  address: "185 BERRY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "BROADWAY: DAVIS ST to FRONT ST (50 - 99)",
  address: "90 BROADWAY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "BRANNAN ST: STANFORD ST to JACK LONDON ALY (324 - 353)",
  address: "340 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "BRANNAN ST: 04TH ST to 05TH ST (500 - 599)",
  address: "525 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Gallo Jiro",
  location_description: "23RD ST: TREAT AVE to FOLSOM ST (3052 - 3099)",
  address: "3055 23RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Plaza Garibaldy",
  location_description: "CALIFORNIA ST: LEIDESDORFF ST to MONTGOMERY ST (449 - 499)",
  address: "475 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Plaza Garibaldy",
  location_description: "HOWARD ST: 01ST ST to MALDEN ALY (500 - 589)",
  address: "540 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Plaza Garibaldy",
  location_description: "MONTGOMERY ST: POST ST to SUTTER ST (1 - 99)",
  address: "1 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Lerso",
  location_description: "MISSION ST: 10TH ST to 11TH ST (1400 - 1499)",
  address: "1450 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Chairman SF, LLC",
  location_description: "CALIFORNIA ST: SANSOME ST to LEIDESDORFF ST (400 - 448)",
  address: "400 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Chairman SF, LLC",
  location_description: "ELLIS ST: 04TH ST \ MARKET ST \ STOCKTON ST to POWELL ST (1 - 99)",
  address: "34 ELLIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Chairman SF, LLC",
  location_description: "MISSION ST: ECKER ST to SHAW ALY (521 - 548)",
  address: "536 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Chairman SF, LLC",
  location_description: "02ND ST: BRANNAN ST to TOWNSEND ST (600 - 699)",
  address: "625 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Street Foods, Inc.",
  location_description: "NEW MONTGOMERY ST: MARKET ST \ MONTGOMERY ST intersection",
  address: "2 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Street Foods, Inc.",
  location_description: "SACRAMENTO ST: FRONT ST to BATTERY ST (300 - 399)",
  address: "1 THE EMBARCADERO"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Street Foods, Inc.",
  location_description: "HOWARD ST: 03RD ST to 04TH ST (700 - 799)",
  address: "701 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Street Foods, Inc.",
  location_description: "DRUMM ST: CALIFORNIA ST intersection",
  address: "5 THE EMBARCADERO"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Street Foods, Inc.",
  location_description: "POST ST: KEARNY ST to ROBERT KIRK LN (100 - 140)",
  address: "100 POST ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Curry Up Now",
  location_description: "WASHINGTON ST: DRUMM ST intersection",
  address: "370 DRUMM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Curry Up Now",
  location_description: "225 BUSH ST",
  address: "289001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Alambre",
  location_description: "FRANKLIN ST: OFARRELL ST \ STARR KING WAY to MYRTLE ST (1100 - 1149)",
  address: "1100 FRANKLIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Alambre",
  location_description: "FRANKLIN ST: MYRTLE ST to GEARY BLVD (1150 - 1199)",
  address: "1188 FRANKLIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description:
    "OTIS ST: GOUGH ST \ MCCOPPIN ST to 13TH ST \ DUBOCE AVE \ HWY 101 NORTHBOUND RAMP \ MISSION ST (100 - 199)",
  address: "150 OTIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "PENNSYLVANIA AVE: MARIPOSA ST to I-280 S OFF RAMP (200 - 256)",
  address: "208 PENNSYLVANIA AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "PENNSYLVANIA AVE: 22ND ST to 23RD ST (700 - 899)",
  address: "700 PENNSYLVANIA AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "PENNSYLVANIA AVE: I-280 S OFF RAMP to 25TH ST (1050 - 1099)",
  address: "1082 PENNSYLVANIA AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "22ND ST: MISSISSIPPI ST to TEXAS ST (1255 - 1399)",
  address: "1255 22ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "SHIPLEY ST: 04TH ST to 05TH ST (100 - 199)",
  address: "133 SHIPLEY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "SHOTWELL ST: 15TH ST to 16TH ST (100 - 199)",
  address: "131 SHOTWELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "23RD ST: START: 100-699 BLOCK to ILLINOIS ST (100 - 699)",
  address: "601 23RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "TENNESSEE ST: MARIPOSA ST to 18TH ST (600 - 699)",
  address: "640 TENNESSEE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "TENNESSEE ST: 18TH ST to 19TH ST (700 - 799)",
  address: "790 TENNESSEE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "TENNESSEE ST: 19TH ST to 20TH ST (800 - 899)",
  address: "815 TENNESSEE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "TEXAS ST: SIERRA ST to 22ND ST (632 - 699)",
  address: "640 TEXAS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "26TH ST: MINNESOTA ST to INDIANA ST (1000 - 1099)",
  address: "1051 26TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "26TH ST: MINNESOTA ST to INDIANA ST (1000 - 1099)",
  address: "1090 26TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "03RD ST: MARIPOSA ST to 18TH ST (2001 - 2099) -- EAST --",
  address: "2085 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "03RD ST: MARIPOSA ST to 18TH ST (2000 - 2098) -- WEST --",
  address: "2030 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "03RD ST: 26TH ST to CESAR CHAVEZ ST (3000 - 3098) -- WEST --",
  address: "3000 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "03RD ST: CESAR CHAVEZ ST to MARIN ST (3100 - 3199)",
  address: "3150 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "03RD ST: MARIN ST to ARTHUR AVE \ CARGO WAY (3201 - 3399) -- EAST --",
  address: "3305 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "03RD ST: MARIN ST to ARTHUR AVE \ CARGO WAY (3201 - 3399) -- EAST --",
  address: "3255 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "03RD ST: EGBERT AVE to FITZGERALD AVE (6000 - 6170) -- WEST --",
  address: "6000 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "ARMSTRONG AVE: HAWES ST to INGALLS ST (1300 - 1399)",
  address: "1315 ARMSTRONG AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "CESAR CHAVEZ ST: EVANS AVE to KANSAS ST (2100 - 2550)",
  address: "2150 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "CARROLL AVE: INGALLS ST to JENNINGS ST (1400 - 1499)",
  address: "1420 CARROLL AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "10TH ST: SHERIDAN ST to HARRISON ST (350 - 399)",
  address: "380 10TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "DONNER AVE: HAWES ST to INGALLS ST (1300 - 1399)",
  address: "1347 DONNER AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "EDDY ST: BUCHANAN ST to WEBSTER ST (1300 - 1399)",
  address: "1346 EDDY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "ELM ST: FRANKLIN ST to GOUGH ST (300 - 399)",
  address: "368 ELM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "FOLSOM ST: ERIE ST to 14TH ST (1718 - 1799)",
  address: "1750 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "FRANCISCO ST: MASON ST to TAYLOR ST (500 - 599)",
  address: "500 FRANCISCO ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "INDIANA ST: 20TH ST to 22ND ST (800 - 999)",
  address: "998 INDIANA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "INDIANA ST: 20TH ST to 22ND ST (800 - 999)",
  address: "951 INDIANA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "INDIANA ST: 26TH ST to CESAR CHAVEZ ST (1500 - 1599)",
  address: "1575 INDIANA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "MARIPOSA ST: TENNESSEE ST to 04TH ST \ MINNESOTA ST (600 - 699)",
  address: "601 MARIPOSA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "MARIPOSA ST: PENNSYLVANIA AVE to MISSISSIPPI ST (1000 - 1099)",
  address: "1040 MARIPOSA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description:
    "MARKET ST: 10TH ST \ FELL ST \ POLK ST to 11TH ST (1401 - 1455) -- SOUTH --",
  address: "1411 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "MINNESOTA ST: MINNESOTA ST to 26TH ST (1400 - 1499)",
  address: "1400 MINNESOTA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Brazuca Grill",
  location_description: "NEWHALL ST: BITTING AVE to EGBERT AVE (2660 - 2899)",
  address: "2660 NEWHALL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "F & C Catering",
  location_description: "Assessors Block /Lot",
  address: "21MFF-00035"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "F & C Catering",
  location_description: "PENNSYLVANIA AVE: 22ND ST to 23RD ST (700 - 899)",
  address: "898 PENNSYLVANIA AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "F & C Catering",
  location_description: "TENNESSEE ST: TENNESSEE ST to 26TH ST (1500 - 1599)",
  address: "1500 TENNESSEE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "F & C Catering",
  location_description: "25TH ST: MICHIGAN ST to ILLINOIS ST (700 - 799)",
  address: "700 25TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "F & C Catering",
  location_description: "03RD ST: 24TH ST to 25TH ST (2800 - 2898) -- WEST --",
  address: "2890 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "F & C Catering",
  location_description: "03RD ST: 24TH ST to 25TH ST (2800 - 2898) -- WEST --",
  address: "2800 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "F & C Catering",
  location_description: "MINNESOTA ST: 20TH ST to 22ND ST (800 - 999)",
  address: "900 MINNESOTA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "F & C Catering",
  location_description: "MINNESOTA ST: 23RD ST to 24TH ST (1200 - 1299)",
  address: "1275 MINNESOTA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Tacos El Flaco",
  location_description: "03RD ST: 25TH ST to 26TH ST (2901 - 2999) -- EAST --",
  address: "2901 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "FRUITYMANIA",
  location_description:
    "MARKET ST: 04TH ST \ ELLIS ST \ STOCKTON ST to POWELL ST (800 - 890) -- NORTH --",
  address: "870 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "FRUITYMANIA",
  location_description:
    "MARKET ST: 04TH ST \ ELLIS ST \ STOCKTON ST to POWELL ST (801 - 863) -- SOUTH --",
  address: "801 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Pancho's Tacos",
  location_description:
    "ALEMANY BLVD: SICKLES AVE to I-280 N ON RAMP \ REGENT ST \ SAN JOSE AVE (3101 - 3155) -- SOUTH --",
  address: "3119 ALEMANY BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Pancho's Tacos",
  location_description: "BAY SHORE BLVD: CORTLAND AVE to WATERLOO ST (491 - 499) -- EAST --",
  address: "491 BAY SHORE BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Pancho's Tacos",
  location_description: "CAPITOL AVE: DE MONTFORT AVE to OCEAN AVE (1200 - 1299)",
  address: "1271 CAPITOL AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Zuri Food Facilities",
  location_description: "02ND ST: STILLMAN ST to BRYANT ST (454 - 499)",
  address: "490 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Zuri Food Facilities",
  location_description: "CALIFORNIA ST: LEIDESDORFF ST to MONTGOMERY ST (449 - 499)",
  address: "475 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Zuri Food Facilities",
  location_description: "SPEAR ST: MISSION ST to HOWARD ST (100 - 199)",
  address: "100 SPEAR ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Zuri Food Facilities",
  location_description: "MARIPOSA ST: ARKANSAS ST to CAROLINA ST (1500 - 1699)",
  address: "1601 MARIPOSA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Treats by the Bay LLC",
  location_description: "MARKET ST: STEUART ST to SPEAR ST (1 - 99) -- SOUTH --",
  address: "1 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Treats by the Bay LLC",
  location_description: "04TH ST: NELSON RISING LN to GENE FRIEND WAY (1500 - 1599)",
  address: "1550 04TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Philz Coffee Truck",
  location_description: "PINE ST: BATTERY ST to SANSOME ST (200 - 299)",
  address: "250 PINE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Philz Coffee Truck",
  location_description: "SUTTER ST: POWELL ST to MASON ST (500 - 599)",
  address: "556 SUTTER ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Philz Coffee Truck",
  location_description: "CALIFORNIA ST: SANSOME ST to LEIDESDORFF ST (400 - 448)",
  address: "401 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Philz Coffee Truck",
  location_description:
    "MARINA BLVD: LAGUNA ST to BEACH ST \ BUCHANAN ST \ LOWER FORT MASON ST (1 - 99)",
  address: "15 MARINA BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Philz Coffee Truck",
  location_description: "MONTGOMERY ST: COLUMBUS AVE \ WASHINGTON ST to JACKSON ST (700 - 799)",
  address: "735 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Curry Up Now",
  location_description: "SANSOME ST: GOLD ST to PACIFIC AVE (705 - 799)",
  address: "727 SANSOME ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Curry Up Now",
  location_description: "03RD ST: BRANNAN ST to TOWNSEND ST (600 - 699)",
  address: "601 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eva's Catering",
  location_description: "INGALLS ST: CARROLL AVE to DONNER AVE (2600 - 2699)",
  address: "2600 INGALLS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eva's Catering",
  location_description: "ORTEGA ST: 18TH AVE to 19TH AVE (1100 - 1199)",
  address: "1100 ORTEGA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eva's Catering",
  location_description: "ORTEGA ST: 18TH AVE to 19TH AVE (1100 - 1199)",
  address: "1900 19TH AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eva's Catering",
  location_description: "ORTEGA ST: 18TH AVE to 19TH AVE (1100 - 1199)",
  address: "1199 ORTEGA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eva's Catering",
  location_description: "20TH AVE: LAWTON ST to MORAGA ST (1600 - 1699)",
  address: "1650 20TH AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eva's Catering",
  location_description: "05TH ST: WELSH ST to BRANNAN ST (530 - 599)",
  address: "530 05TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eva's Catering",
  location_description:
    "BRANNAN ST: 05TH ST to 06TH ST \ I-280 NORTHBOUND \ I-280 SOUTHBOUND (600 - 699)",
  address: "630 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Eva's Catering",
  location_description: "EVANS AVE: NAPOLEON ST \ TOLAND ST to MARIN ST (2000 - 2099)",
  address: "2045 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Faith Sandwich",
  location_description: "MAIN ST: MARKET ST to MISSION ST (1 - 99)",
  address: "58 MAIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Faith Sandwich",
  location_description: "MISSION ST: SHAW ALY to ANTHONY ST (543 - 586)",
  address: "560 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Halal Cart, LLC",
  location_description: "MARKET ST: STEUART ST to SPEAR ST (1 - 99) -- SOUTH --",
  address: "1 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Halal Cart, LLC",
  location_description: "MONTGOMERY ST: CALIFORNIA ST to SACRAMENTO ST (400 - 499)",
  address: "400 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Halal Cart, LLC",
  location_description:
    "MARKET ST: FREMONT ST \ FRONT ST to 01ST ST \ BUSH ST (401 - 499) -- SOUTH --",
  address: "455 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Leo's Hot Dogs",
  location_description: "MISSION ST: 19TH ST to 20TH ST (2300 - 2399)",
  address: "2301 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Flavors of Africa",
  location_description: "HOWARD ST: FREMONT ST to 01ST ST (400 - 499)",
  address: "405 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Flavors of Africa",
  location_description: "MISSION ST: SHAW ALY to ANTHONY ST (543 - 586)",
  address: "555 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Flavors of Africa",
  location_description: "MISSION ST: SHAW ALY to ANTHONY ST (543 - 586)",
  address: "560 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Kid Abelha - Brazilian Hamburgers",
  location_description: "TOLAND ST: EVANS AVE \ NAPOLEON ST to GALVEZ AVE (1 - 199)",
  address: "16 TOLAND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Kid Abelha - Brazilian Hamburgers",
  location_description: "NAPOLEON ST: EVANS AVE \ TOLAND ST to JERROLD AVE (25 - 299)",
  address: "Assessors Block /Lot"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BOWL'D ACAI, LLC.",
  location_description: "NORTH POINT ST: LAGUNA ST to BUCHANAN ST (1500 - 1599)",
  address: "15 MARINA BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Rita's Catering",
  location_description: "MISSION ST: 06TH ST to 07TH ST (1000 - 1099)",
  address: "1028 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bonito Poke",
  location_description: "01ST ST: HOWARD ST to TEHAMA ST (200 - 231)",
  address: "505 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bonito Poke",
  location_description: "CALIFORNIA ST: SANSOME ST to LEIDESDORFF ST (400 - 448)",
  address: "430 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bonito Poke",
  location_description: "HOWARD ST: FREMONT ST to 01ST ST (400 - 499)",
  address: "400 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bonito Poke",
  location_description: "ILLINOIS ST: 16TH ST to MARIPOSA ST \ TERRY A FRANCOIS BLVD (400 - 599)",
  address: "409 ILLINOIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Off the Grid Services, LLC",
  location_description: "65 MINNA ST",
  address: "3721124"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Street Meet",
  location_description: "GROVE ST: 08TH ST \ HYDE ST \ MARKET ST to LARKIN ST (1 - 55)",
  address: "30 GROVE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Street Meet",
  location_description: "LARKIN ST: GROVE ST to FULTON ST (100 - 199)",
  address: "100 LARKIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Street Meet",
  location_description: "MINNESOTA ST: 04TH ST \ MARIPOSA ST to 18TH ST (500 - 599)",
  address: "777 MARIPOSA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Wu Wei LLC dba MoBowl",
  location_description: "STEUART LN: HOWARD ST \ STEUART ST to END: 200-249 BLOCK (1 - 99)",
  address: "75 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Wu Wei LLC dba MoBowl",
  location_description: "WASHINGTON ST: THE EMBARCADERO to DRUMM ST (1 - 99)",
  address: "370 DRUMM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Wu Wei LLC dba MoBowl",
  location_description: "DRUMM ST: CLAY ST to WASHINGTON ST (200 - 299)",
  address: "253 DRUMM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Wu Wei LLC dba MoBowl",
  location_description: "FRONT ST: VALLEJO ST to GREEN ST (900 - 999)",
  address: "900 FRONT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Wu Wei LLC dba MoBowl",
  location_description: "HOWARD ST: 01ST ST to MALDEN ALY (500 - 589)",
  address: "500 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Truly Food & More",
  location_description: "01ST ST: HOWARD ST to TEHAMA ST (200 - 231)",
  address: "505 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Truly Food & More",
  location_description: "SANSOME ST: PINE ST to CALIFORNIA ST (200 - 299)",
  address: "217 SANSOME ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Truly Food & More",
  location_description: "MISSION ST: 02ND ST to NEW MONTGOMERY ST (600 - 634)",
  address: "602 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Boulangerie La Camionnette",
  location_description: "500 FLORIDA ST",
  address: "4018001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Cochinita",
  location_description: "24TH ST: UTAH ST to POTRERO AVE (2600 - 2699)",
  address: "2601 24TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Cochinita",
  location_description: "TOWNSEND ST: LUSK ST to 04TH ST (252 - 299)",
  address: "290 TOWNSEND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Cochinita",
  location_description: "02ND ST: BRYANT ST to TABER PL (500 - 518)",
  address: "501 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Cochinita",
  location_description: "BEALE ST: BRYANT ST \ DELANCEY ST to END: 500-501 BLOCK (500 - 599)",
  address: "501 BEALE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Cochinita",
  location_description: "BRANNAN ST: ZOE ST to 04TH ST (440 - 499)",
  address: "490 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Cochinita",
  location_description:
    "BRYANT ST: 04TH ST \ I-80 E OFF RAMP to 05TH ST \ I-80 E ON RAMP (600 - 699)",
  address: "617 BRYANT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Cochinita",
  location_description: "07TH AVE: LINCOLN WAY to HUGO ST (1200 - 1246)",
  address: "1219 07TH AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Cochinita",
  location_description: "DIVISADERO ST: MCALLISTER ST to GOLDEN GATE AVE (901 - 999) -- WEST --",
  address: "999 DIVISADERO ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "MOMO INNOVATION LLC",
  location_description: "CALIFORNIA ST: BATTERY ST to SANSOME ST (300 - 399)",
  address: "351 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Roadside Rotisserie Corporation / Country Grill",
  location_description: "POST ST: MONTGOMERY ST to LICK PL (1 - 40)",
  address: "1 POST ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Roadside Rotisserie Corporation / Country Grill",
  location_description: "BRANNAN ST: STANFORD ST to JACK LONDON ALY (324 - 353)",
  address: "333 BRANNAN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Roadside Rotisserie Corporation / Country Grill",
  location_description: "BUSH ST: 01ST ST \ MARKET ST to BATTERY ST (1 - 99)",
  address: "1 BUSH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Roadside Rotisserie Corporation / Country Grill",
  location_description: "FRONT ST: BROADWAY to VALLEJO ST (800 - 899)",
  address: "90 BROADWAY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Roadside Rotisserie Corporation / Country Grill",
  location_description: "BATTERY ST: CALIFORNIA ST to HALLECK ST (200 - 230)",
  address: "225 BATTERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Breakfast Embed",
  location_description: "01ST ST: TEHAMA ST to CLEMENTINA ST (232 - 274)",
  address: "234 01ST ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Breakfast Embed",
  location_description: "MISSION ROCK ST: 04TH ST intersection",
  address: "1200 04TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Izzy's Cheesesteaks",
  location_description: "BATTERY ST: CALIFORNIA ST to HALLECK ST (200 - 230)",
  address: "255 BATTERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Corazon Maya",
  location_description: "MISSION ST: 17TH ST to CLARION ALY (2100 - 2131)",
  address: "2109 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "MOMO INNOVATION LLC",
  location_description: "BUSH ST: BATTERY ST to SANSOME ST (100 - 199)",
  address: "1 BUSH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "MOMO INNOVATION LLC",
  location_description: "MISSION ST: SHAW ALY to ANTHONY ST (543 - 586)",
  address: "555 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "MOMO INNOVATION LLC",
  location_description: "CALIFORNIA ST: DAVIS ST to FRONT ST (100 - 199)",
  address: "101 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "MOMO INNOVATION LLC",
  location_description: "CALIFORNIA ST: BATTERY ST to SANSOME ST (300 - 399)",
  address: "351 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "MOMO INNOVATION LLC",
  location_description: "MISSION ST: ANNIE ST to 03RD ST (663 - 699)",
  address: "667 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Treats by the Bay LLC",
  location_description: "HOWARD ST: MALDEN ALY to 02ND ST (574 - 599)",
  address: "201 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Treats by the Bay LLC",
  location_description: "MARKET ST: DOLORES ST to 14TH ST (2001 - 2065) -- SOUTH --",
  address: "2029 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Treats by the Bay LLC",
  location_description: "ELLIS ST: POWELL ST to CYRIL MAGNIN ST (100 - 148)",
  address: "120 ELLIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Treats by the Bay LLC",
  location_description: "POST ST: MONTGOMERY ST to LICK PL (1 - 40)",
  address: "1 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Senor Sisig",
  location_description: "CALIFORNIA ST: DAVIS ST to FRONT ST (100 - 199)",
  address: "101 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Senor Sisig",
  location_description: "MISSION ST: 05TH ST to MINT ST (900 - 930)",
  address: "901 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Senor Sisig",
  location_description: "02ND ST: MISSION ST to MINNA ST (100 - 130)",
  address: "120 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Senor Sisig",
  location_description: "ELLIS ST: POWELL ST to CYRIL MAGNIN ST (100 - 148)",
  address: "120 ELLIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Senor Sisig",
  location_description: "PINE ST: SANSOME ST to CENTURY PL (300 - 340)",
  address: "300 PINE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Senor Sisig",
  location_description: "FRONT ST: BROADWAY to VALLEJO ST (800 - 899)",
  address: "90 BROADWAY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Senor Sisig",
  location_description: "BROADWAY: DAVIS ST to FRONT ST (50 - 99)",
  address: "90 BROADWAY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Senor Sisig",
  location_description: "10TH ST: FELL ST \ MARKET ST \ POLK ST to STEVENSON ST (1 - 18)",
  address: "8 10TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "CARDONA'S FOOD TRUCK",
  location_description: "MISSION ST: 14TH ST to 15TH ST (1800 - 1899)",
  address: "1800 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "CARDONA'S FOOD TRUCK",
  location_description: "MISSION ST: 14TH ST to 15TH ST (1800 - 1899)",
  address: "1888 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Fillmore Square",
  location_description: "WEBSTER ST: EDDY ST to ELLIS ST (1201 - 1299) -- WEST --",
  address: "1223 WEBSTER ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Fillmore Square",
  location_description: "EDDY ST: WEBSTER ST to FILLMORE ST (1400 - 1499)",
  address: "1290 FILLMORE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Fillmore Square",
  location_description: "FILLMORE ST: TURK ST to EDDY ST (1200 - 1299)",
  address: "1290 FILLMORE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Fillmore Square",
  location_description: "FILLMORE ST: TURK ST to EDDY ST (1200 - 1299)",
  address: "1245 FILLMORE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "California Kahve",
  location_description:
    "LA PLAYA: LINCOLN WAY \ MARTIN LUTHER KING JR DR to IRVING ST (1200 - 1299)",
  address: "1234 GREAT HWY"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "La Jefa",
  location_description: "BAY SHORE BLVD: WATERLOO ST to MARENGO ST (501 - 559) -- EAST --",
  address: "531 BAY SHORE BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Think is Good Inc.",
  location_description: "PINE ST: FRONT ST to BATTERY ST (100 - 199)",
  address: "100 PINE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Think is Good Inc.",
  location_description: "CALIFORNIA ST: SANSOME ST to LEIDESDORFF ST (400 - 448)",
  address: "430 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Think is Good Inc.",
  location_description: "MISSION ST: SHAW ALY to ANTHONY ST (543 - 586)",
  address: "560 MISSION ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Casita Vegana",
  location_description: "JOHN MUIR DR: LAKE MERCED BLVD to SKYLINE BLVD (200 - 699)",
  address: "Assessors Block 7283/Lot004"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Datam SF LLC dba Anzu To You",
  location_description: "TAYLOR ST: BAY ST to NORTH POINT ST (2500 - 2599)",
  address: "2535 TAYLOR ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "DO UC US Mobile Catering",
  location_description: "PARNASSUS AVE: HILLWAY AVE to 03RD AVE (400 - 599)",
  address: "400 PARNASSUS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "DO UC US Mobile Catering",
  location_description: "03RD ST: MISSION BAY BLVD to WARRIORS WAY (1401 - 1599) -- EAST --",
  address: "1501 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "DO UC US Mobile Catering",
  location_description: "04TH ST: MISSION BAY BLVD to NELSON RISING LN (1400 - 1499)",
  address: "1420 04TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "DO UC US Mobile Catering",
  location_description: "MARIN ST: KANSAS ST to HWY 101 N ON RAMP (2500 - 2599)",
  address: "2590 MARIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
  location_description: "GEARY ST: STOCKTON ST to POWELL ST (200 - 299)",
  address: "233 GEARY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
  location_description: "GEARY ST: STOCKTON ST to POWELL ST (200 - 299)",
  address: "251 GEARY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
  location_description: "POST ST: STOCKTON ST to POWELL ST (300 - 399)",
  address: "345 STOCKTON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
  location_description: "GEARY ST: GRANT AVE to STOCKTON ST (100 - 199)",
  address: "100 GEARY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "The Geez Freeze",
  location_description: "18TH ST: DOLORES ST to CHURCH ST (3700 - 3799)",
  address: "3750 18TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Papalote Inc.",
  location_description: "01ST ST: HOWARD ST to TEHAMA ST (200 - 231)",
  address: "505 HOWARD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Papalote Inc.",
  location_description: "SPEAR ST: MARKET ST to MISSION ST (1 - 99)",
  address: "60 SPEAR ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Buenafe",
  location_description: "MISSISSIPPI ST: 07TH ST \ 16TH ST to 17TH ST (1 - 99)",
  address: "901 16TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Buenafe",
  location_description: "RANKIN ST: DAVIDSON AVE to EVANS AVE (200 - 299)",
  address: "220 RANKIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Buenafe",
  location_description: "EVANS AVE: PHELPS ST to QUINT ST (1600 - 1699)",
  address: "750 PHELPS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bay Area Mobile Catering, Inc. dba. Taqueria Angelica's",
  location_description: "CESAR CHAVEZ ST: INDIANA ST to IOWA ST (1300 - 1399)",
  address: "1301 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bay Area Mobile Catering, Inc. dba. Taqueria Angelica's",
  location_description: "25TH ST: ALABAMA ST to HARRISON ST (3042 - 3099)",
  address: "3065 25TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bay Area Mobile Catering, Inc. dba. Taqueria Angelica's",
  location_description: "FOLSOM ST: 11TH ST to NORFOLK ST (1500 - 1548)",
  address: "1501 FOLSOM ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Bay Area Mobile Catering, Inc. dba. Taqueria Angelica's",
  location_description: "MISSION ST: 10TH ST to 11TH ST (1400 - 1499)",
  address: "1455 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 8722/Lot003",
  address: "8722003"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 5598/Lot031",
  address: "5598031"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 7295/Lot022",
  address: "7295022"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 4172/Lot010",
  address: "4172010"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 4058/Lot010",
  address: "4058010"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 4227/Lot012",
  address: "4227012"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 5369/Lot003",
  address: "5369003"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 4046/Lot001",
  address: "4046001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 5216/Lot030",
  address: "5216030"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 4103/Lot023A",
  address: "4103023A"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "POTRERO AVE: 10TH ST \ BRANNAN ST \ DIVISION ST to ALAMEDA ST (1 - 99)",
  address: "66 POTRERO AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "QUINT ST: ARTHUR AVE to CUSTER AVE (1 - 199)",
  address: "50 QUINT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "23RD ST: START: 100-699 BLOCK to ILLINOIS ST (100 - 699)",
  address: "435 23RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "25TH ST: MARYLAND ST to MICHIGAN ST (400 - 699)",
  address: "Assessors Block 4241/Lot002"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description:
    "MISSION BAY BLVD SOUTH: 03RD ST \ MISSION BAY BLVD to 04TH ST \ MISSION BAY BLVD (501 - 599)",
  address: "Assessors Block 8732/Lot001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "26TH ST: RHODE ISLAND ST to KANSAS ST (2200 - 2299)",
  address: "Assessors Block 4281a/Lot012A"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "1650 03RD ST",
  address: "8711007"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "03RD ST: 18TH ST to 19TH ST (2101 - 2199) -- EAST --",
  address: "2101 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "03RD ST: MARIN ST to ARTHUR AVE \ CARGO WAY (3201 - 3399) -- EAST --",
  address: "3201 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description:
    "ALEMANY BLVD: FOLSOM ST to ELLSWORTH ST \ I-280 S OFF RAMP \ I-280 S ON RAMP (400 - 498) -- NORTH --",
  address: "400 ALEMANY BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "CESAR CHAVEZ ST: 03RD ST to TENNESSEE ST (1000 - 1099)",
  address: "Assessors Block 4315/Lot03008"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "BURKE AVE: START: 1500-1599 BLOCK to 03RD ST (1500 - 1599)",
  address: "1580 BURKE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "07TH ST: HOOPER ST to IRWIN ST (1100 - 1199)",
  address: "1140 07TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "CONNECTICUT ST: 17TH ST to MARIPOSA ST (100 - 199)",
  address: "146 CONNECTICUT ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "EVANS AVE: RANKIN ST to SELBY ST (1800 - 1890)",
  address: "1801 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "EVANS AVE: NAPOLEON ST \ TOLAND ST to MARIN ST (2000 - 2099)",
  address: "2045 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "HARRISON ST: MERLIN ST to OAK GROVE ST (924 - 950)",
  address: "950 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "HARRISON ST: 26TH ST to KAMILLE CT (3000 - 3048)",
  address: "3040 HARRISON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "16TH ST: 04TH ST to OWENS ST (600 - 699)",
  address: "600 16TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "Assessors Block 8722/Lot001",
  address: "8722001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "ILLINOIS ST: MARIPOSA ST \ TERRY A FRANCOIS BLVD to 18TH ST (600 - 699)",
  address: "Assessors Block 3941/Lot001"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "ILLINOIS ST: 25TH ST to ILLINOIS ST (1500 - 1599)",
  address: "Assessors Block 4296/Lot010"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "KANSAS ST: 16TH ST to 17TH ST (300 - 399)",
  address: "350 KANSAS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "17TH ST: MISSION ST to HOFF ST (3300 - 3343)",
  address: "3335 17TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "MARIN ST: START: 800-949 BLOCK to MICHIGAN ST (800 - 899)",
  address: "888 MARIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "MENDELL ST: CARGO WAY to NEWHALL ST (1 - 199)",
  address: "151 MENDELL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Natan's Catering",
  location_description: "MISSOURI ST: 20TH ST to SIERRA ST (500 - 630)",
  address: "555 MISSOURI ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco's Hometown Creamery",
  location_description: "GEARY ST: STOCKTON ST to POWELL ST (200 - 299)",
  address: "281 GEARY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco's Hometown Creamery",
  location_description: "GEARY ST: STOCKTON ST to POWELL ST (200 - 299)",
  address: "281 GEARY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco's Hometown Creamery",
  location_description: "POST ST: MONTGOMERY ST to LICK PL (1 - 40)",
  address: "1 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco's Hometown Creamery",
  location_description: "CALIFORNIA ST: SANSOME ST to LEIDESDORFF ST (400 - 448)",
  address: "425 CALIFORNIA ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco's Hometown Creamery",
  location_description: "PINE ST: SANSOME ST to CENTURY PL (300 - 340)",
  address: "301 PINE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "San Francisco's Hometown Creamery",
  location_description: "POST ST: STOCKTON ST to POWELL ST (300 - 399)",
  address: "340 POST ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BOWL'D ACAI, LLC.",
  location_description: "BATTERY ST: PINE ST to CALIFORNIA ST (100 - 199)",
  address: "111 BATTERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BOWL'D ACAI, LLC.",
  location_description: "LARKIN ST: FULTON ST to MCALLISTER ST (200 - 299)",
  address: "200 LARKIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BOWL'D ACAI, LLC.",
  location_description: "MONTGOMERY ST: CALIFORNIA ST to SACRAMENTO ST (400 - 499)",
  address: "451 MONTGOMERY ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BOWL'D ACAI, LLC.",
  location_description:
    "BUCHANAN ST: NORTH POINT ST to BEACH ST \ LOWER FORT MASON ST \ MARINA BLVD (3700 - 3799)",
  address: "15 MARINA BLVD"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "El Calamar Perubian Food Truck",
  location_description: "MISSION ST: ANTHONY ST to 02ND ST (573 - 599)",
  address: "85 02ND ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BH & MT LLC",
  location_description:
    "OTIS ST: GOUGH ST \ MCCOPPIN ST to 13TH ST \ DUBOCE AVE \ HWY 101 NORTHBOUND RAMP \ MISSION ST (100 - 199)",
  address: "170 OTIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BH & MT LLC",
  location_description: "PRESIDIO AVE: POST ST to GEARY BLVD (900 - 999)",
  address: "949 PRESIDIO AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BH & MT LLC",
  location_description: "23RD ST: START: 100-699 BLOCK to ILLINOIS ST (100 - 699)",
  address: "401 23RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BH & MT LLC",
  location_description: "DOLORES ST: 14TH ST intersection",
  address: "2001 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BH & MT LLC",
  location_description: "GROVE ST: SCOTT ST to DIVISADERO ST (1200 - 1299)",
  address: "1265 GROVE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BH & MT LLC",
  location_description: "GROVE ST: BRODERICK ST to BAKER ST (1400 - 1499)",
  address: "1477 GROVE ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BH & MT LLC",
  location_description: "16TH ST: SPENCER ST to DOLORES ST (3220 - 3299)",
  address: "3253 16TH ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "BH & MT LLC",
  location_description: "MARKET ST: CHURCH ST to 15TH ST (2101 - 2195) -- SOUTH --",
  address: "2145 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "The New York Frankfurter Co. of CA, Inc. DBA: Annie's Hot Dogs",
  location_description: "STOCKTON ST: 04TH ST \ ELLIS ST \ MARKET ST intersection",
  address: "800 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "The New York Frankfurter Co. of CA, Inc. DBA: Annie's Hot Dogs",
  location_description:
    "MARKET ST: 04TH ST \ ELLIS ST \ STOCKTON ST to POWELL ST (800 - 890) -- NORTH --",
  address: "870 MARKET ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "The New York Frankfurter Co. of CA, Inc. DBA: Annie's Hot Dogs",
  location_description: "STOCKTON ST: OFARRELL ST to GEARY ST (100 - 199)",
  address: "101 STOCKTON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "PHELPS ST: FAIRFAX AVE to SAM JORDANS WAY (500 - 599)",
  address: "525 PHELPS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "RANKIN ST: DAVIDSON AVE to EVANS AVE (200 - 299)",
  address: "220 RANKIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "03RD ST: ARTHUR AVE \ CARGO WAY to BURKE AVE (3400 - 3498) -- WEST --",
  address: "3450 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "03RD ST: EVANS AVE to FAIRFAX AVE (3801 - 3899) -- EAST --",
  address: "3801 03RD ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "CESAR CHAVEZ ST: EVANS AVE to KANSAS ST (2100 - 2550)",
  address: "2323 CESAR CHAVEZ ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "BURKE AVE: START: 1500-1599 BLOCK to 03RD ST (1500 - 1599)",
  address: "1570 BURKE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "BURKE AVE: START: 1500-1599 BLOCK to 03RD ST (1500 - 1599)",
  address: "1555 BURKE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "BURKE AVE: START: 1500-1599 BLOCK to 03RD ST (1500 - 1599)",
  address: "1575 BURKE AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "DAVIDSON AVE: RANKIN ST to SELBY ST (1600 - 1699)",
  address: "1650 DAVIDSON AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description:
    "EVANS AVE: HUNTERS POINT BLVD to JENNINGS ST \ MIDDLE POINT RD (1031 - 1099)",
  address: "1000 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "EVANS AVE: RANKIN ST to SELBY ST (1800 - 1890)",
  address: "1801 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "EVANS AVE: NAPOLEON ST \ TOLAND ST to MARIN ST (2000 - 2099)",
  address: "2020 EVANS AVE"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "ARELIOUS WALKER DR: PALOU AVE to QUESADA AVE (1300 - 1399)",
  address: "Assessors Block 4755/Lot049"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "INNES AVE: EARL ST to ARELIOUS WALKER DR (700 - 799)",
  address: "Assessors Block 4644/Lot008"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "INNES AVE: ARELIOUS WALKER DR to GRIFFITH ST (800 - 899)",
  address: "Assessors Block 4645/Lot015"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "LOOMIS ST: BARNEVELD AVE \ MCKINNON AVE to OAKDALE AVE (1 - 99)",
  address: "10 LOOMIS ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "MARIN ST: KANSAS ST to HWY 101 N ON RAMP (2500 - 2599)",
  address: "2525 MARIN ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "MISSISSIPPI ST: START: 1200-1299 BLOCK to CESAR CHAVEZ ST (1200 - 1299)",
  address: "1200 MISSISSIPPI ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "NAPOLEON ST: EVANS AVE \ TOLAND ST to JERROLD AVE (25 - 299)",
  address: "250 NAPOLEON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "NAPOLEON ST: EVANS AVE \ TOLAND ST to JERROLD AVE (25 - 299)",
  address: "190 NAPOLEON ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "NEWHALL ST: MENDELL ST to EVANS AVE (200 - 399)",
  address: "330 NEWHALL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "NEWHALL ST: MENDELL ST to EVANS AVE (200 - 399)",
  address: "220 NEWHALL ST"
})

Streetfood.Repo.insert!(%Streetfood.Business{
  applicant: "Park's Catering",
  location_description: "NEWHALL ST: MENDELL ST to EVANS AVE (200 - 399)",
  address: "300 NEWHALL ST"
})
