#include <torch/torch.h>
#include <iostream>
#include <chrono>
#include <vector>

#define ITER 100

// Is there a way to separately aggregate calls to the same function that originate from different lines
// in the parent function?  I may want this if, for example, one invocation of the subfunction has
// args with which it runs fast, and another invocation has problematic args that make it run slowly.

void make_requires_grad_false() {
  for (int i = 0; i < 100000; i++) {
    // auto a = torch::empty({2, 3}, torch::dtype(torch::kFloat32).device(torch::kCUDA, 1).requires_grad(true));
    auto a = torch::empty({2, 3}, torch::dtype(torch::kFloat32).device(torch::kCPU, 0));
  }
}

void make_requires_grad_true() {
  for (int i = 0; i < 100000; i++) {
    // auto a = torch::empty({2, 3}, torch::dtype(torch::kFloat32).device(torch::kCUDA, 1).requires_grad(true));
    auto a = torch::empty({2, 3}, torch::dtype(torch::kFloat32).device(torch::kCPU, 0).requires_grad(true));
  }
}

int main() {
  make_requires_grad_true();
  make_requires_grad_false();
}

