import 'package:gsheets/gsheets.dart';

class GoogleSheetApi {
  static const _credentials = r''' 

{
  "type": "service_account",
  "project_id": "flutter-expense-tracker-354019",
  "private_key_id": "3d5650618be77b7e5d324d7541d26e897abb4cab",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCyJnqVN67c+zbO\ngxjm6lPPmo6IWpk2lk5zNbYb05xhLsG9wWz3QEVuZS62vBokmjbvBO8Wyg4S6lqV\nUn4KUzD8+ofzp6P3BLVesQYHhyjlnXQpSJSObyYajd6qRolb/Yhn3trXWxjV8aAw\nYQxsSxsLyqxzuhqGiB9zGx9HR7LeEisQUoRBllDs7mguAT7xYV/dGE3xrbmEoQXP\nFsUkj682RbaOnYxc6wcf0XUAts0kRzdMvAg5NNXwNsvgcdYV+qNg/eFPgHviwEop\n3l0bwuHnPaaUxh2hDkRbrZ7EmQThYS+t50gMw3pP3xp/cCZ05lFyd5wPIDX7sWzc\niJYVl/RvAgMBAAECggEAB69HPGaRgXDItXHMQjG7ecoV+eXGlCc5rRiVCXBAX6TP\nsKrGU4gPNqrgr/s/OXL5iafx1E7U+pXnYGeVjkZ2Z4M7GBSUKxSl6jbCptJ6viTj\nnOBHoDlFMIIMJ9YxGKnAF5LyZ7XDRX9NxKh7C7TVrtWISNmvSTxX9vQljkKWgaO+\ngnSlFqcHH73tm5GUwSciGtbghTVQqCljc+3BuovrLXEyOh2qsM01xMYALhQoNrD/\nWHa1zbaoi6lamyHmodpXceFqxGjOSNtvX+/DKhFXAVBXe6F9E5ilxwlMHJu8K+lD\nns8h1iFOwgPEFydoF3SMAyern3PX2ip7Ph39+VH3+QKBgQDnILVqA/eTrSMAnUlT\njdMK+4K5GZ8NAz+CtSBMxiQsLdP/eXLqIn7MSepNaoikB2sMGM2eK+nxxjNxR8UX\n0h38b66ihZPvVTY5n1IkG/ttcnX5ie8ybIxpRRLF/jU/oFRXGLpMxqyo64wZoaBQ\nsQRiRG5GPlysLmWbErvsUsgEcwKBgQDFUk4Wxc4HhoN40P7iuDxD2/i0+8BD3uuk\n2Y8WRRitvhB9GVd543+lyG5bphZomxM5G0uST4mIOLEyKia+GzR2vz60nfPpZxQj\n+hl62SgpU5r1wsKSABnGG6tQf2h/1IaBGX/fLYkb48dbhQXIpat32thGOpSxjg7t\n5ZQl+YNNFQKBgBUjjrQVjM065pqlyBEWRZkZi8k2KK/d/i8MNdoPvTs1LdCN4Q68\n/O/eSsmt1rV54DaJBjVTOuBcClRwBfy5wPhXlpdStEcNehonEjIvRP2rnFKoZPIt\nr2HpaWAmceRR26TjpBZljWEdugCWIb1/kzERpSxTg9JTpANc4UcqAxU1AoGAaqA9\nHkUpPhvL839MHItd1XWKgZIApSxSvbPqhCg2W7x3AIKvKGhs09Lo/5FSTpht3NAJ\nGDjuorOv3OG2Kchdo0VYxxULdraCxaYiGqY584sAE4l4xphTVSAihM80Us8vF5gF\n5z2d93owgh3xsCkF7TBO6jRBoWiYXKlQUuzvrLkCgYAYuQ2uVZG33qmxTWpCvtZn\nCmtBaNpslqAl2pyD9nhkMbR7ZpOF//FifNArrNxx4BOvbYqf+ZR/R8yHGsMyJkos\nakHecLjJfLDMECwYqV/N34BBvVvBaIBHMfo11sx5TCgO26yv+gMdnOh67kcRRtpa\nv8xPZghsZDLHsW2tJ1A68A==\n-----END PRIVATE KEY-----\n",
  "client_email": "flutter-expense-tracker@flutter-expense-tracker-354019.iam.gserviceaccount.com",
  "client_id": "112084404934320033713",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-expense-tracker%40flutter-expense-tracker-354019.iam.gserviceaccount.com"
}

''';

//Google Sheets ID
  static const _spreadsheetId = '1XgbRFy-br2rnIVcMbH-AQp9OUD_iXC-LIRsDzZVpkyk';

//Initialize Google Sheets
  final googleSheets = GSheets(_credentials);

//Initialize Worksheet
  static Worksheet? _worksheet;
}
