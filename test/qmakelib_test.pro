TEMPLATE = lib

include(../qmakelib.pri)

QT_MAJOR_VERSION = 1
QT_MINOR_VERSION = 2
QT_PATCH_VERSION = 3

# qtVersionEqualTo

TEST = "Test 1:"
qtVersionEqualTo(1, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 2:"
!qtVersionEqualTo(1, 2, 9): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 3:"
!qtVersionEqualTo(1, 9, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 4:"
!qtVersionEqualTo(9, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

# qtVersionLessThan

TEST = "Test 5:"
qtVersionLessThan(1, 2, 9): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 6:"
!qtVersionLessThan(1, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 7:"
!qtVersionLessThan(1, 2, 2): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 8:"
qtVersionLessThan(9, 9, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 8:"
qtVersionLessThan(1, 9, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 9:"
qtVersionLessThan(9, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 10:"
qtVersionLessThan(10, 2, 3): message($$TEST OK)
else: error($$TEST Fail)


TEST = "Test 11:"
!qtVersionLessThan(0, 9, 3): message($$TEST OK)
else: error($$TEST Fail)

# qtVersionLessThanOrEqualTo

TEST = "Test 12:"
qtVersionLessThanOrEqualTo(1, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 13:"
qtVersionLessThanOrEqualTo(1, 2, 9): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 14:"
qtVersionLessThanOrEqualTo(1, 9, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 15:"
qtVersionLessThanOrEqualTo(9, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 16:"
!qtVersionLessThanOrEqualTo(1, 2, 2): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 17:"
!qtVersionLessThanOrEqualTo(0, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 18:"
!qtVersionLessThanOrEqualTo(0, 9, 3): message($$TEST OK)
else: error($$TEST Fail)

# qtVersionGreaterThan

TEST = "Test 19:"
!qtVersionGreaterThan(1, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 20:"
!qtVersionGreaterThan(1, 2, 9): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 21:"
!qtVersionGreaterThan(1, 9, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 22:"
!qtVersionGreaterThan(9, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 23:"
qtVersionGreaterThan(0, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 24:"
qtVersionGreaterThan(1, 0, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 25:"
qtVersionGreaterThan(1, 2, 0): message($$TEST OK)
else: error($$TEST Fail)

# qtVersionGreaterThanOrEqualTo

TEST = "Test 26:"
qtVersionGreaterThanOrEqualTo(1, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 27:"
!qtVersionGreaterThanOrEqualTo(1, 2, 9): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 28:"
!qtVersionGreaterThanOrEqualTo(1, 9, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 29:"
!qtVersionGreaterThanOrEqualTo(9, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 30:"
qtVersionGreaterThanOrEqualTo(0, 2, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 31:"
qtVersionGreaterThanOrEqualTo(1, 0, 3): message($$TEST OK)
else: error($$TEST Fail)

TEST = "Test 32:"
qtVersionGreaterThanOrEqualTo(1, 2, 0): message($$TEST OK)
else: error($$TEST Fail)
