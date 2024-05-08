

void main(){
   int a = 5;
  try {
      // a = 5.5;
    throw Exception('Error');
    print('a $a');
  } catch (e) {
    print('Error: $e');
  }

int b = a;
b = 15;
print('b $b a $a');


int j;
int k;
j = 0;
k = ++j;
print("j $j k $k");
assert(j == k);




}
