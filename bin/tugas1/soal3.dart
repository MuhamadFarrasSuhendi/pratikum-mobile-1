void main() {
  int a = 10;
  int b = 20;
  int c = 30;

  print("Faktorial dari $a adalah ${hitungFaktorial(a)}");
  print("Faktorial dari $b adalah ${hitungFaktorial(b)}");
  print("Faktorial dari $c adalah ${hitungFaktorial(c)}");
}

int hitungFaktorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * hitungFaktorial(n - 1);
  }
}
