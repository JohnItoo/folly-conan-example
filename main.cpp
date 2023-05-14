#include <iostream>
#include <folly/futures/Future.h>
#include <folly/executors/ThreadedExecutor.h>
#include <string>

int main() {
 folly::ThreadedExecutor executor;
 std::cout << "Print here. Let us now accept input from the user\n" ;

 std::string val = "";
 std::cin >> val;

 std::cout << "Done\n";
 return 0;
}
