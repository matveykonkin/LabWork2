#include <gtest/gtest.h>
#include "../include/exampleFor_CI.h"

TEST(MathUtilsTest, AddTest) {
    EXPECT_EQ(MathUtils::add(2, 3), 5);  // 2 + 3 = 5
    EXPECT_EQ(MathUtils::add(-1, 1), 0); // -1 + 1 = 0
    EXPECT_EQ(MathUtils::add(0, 0), 0);  // 0 + 0 = 0
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
