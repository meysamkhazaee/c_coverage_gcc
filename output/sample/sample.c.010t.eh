
;; Function main (main, funcdef_no=14, decl_uid=2273, cgraph_uid=14, symbol_order=14)

main (int argc, char * * argv)
{
  int num3;
  int num2;
  int num1;
  struct FILE * fptr;
  int num3.15;
  int num3.14;
  int num3.13;
  int num3.12;
  int num3.11;
  int num1.10;
  int num2.9;
  int num2.8;
  int num1.7;
  int num1.6;
  int num2.5;
  int num2.4;
  int num1.3;
  int num3.2;
  char * D.2300;
  char * * D.2299;
  int num2.1;
  char * D.2297;
  char * * D.2296;
  int num1.0;
  char * D.2294;
  char * * D.2293;
  char * D.2289;
  char * * D.2288;
  int D.2287;
  int D.2284;
  char * D.2283;
  char * D.2280;

  D.2280 = *argv;
  printf ("Program name: %s\n", D.2280);
  if (argc <= 1) goto <D.2281>; else goto <D.2282>;
  <D.2281>:
  D.2283 = *argv;
  printf ("Usage: %s .not input\n", D.2283);
  D.2284 = 1;
  goto <D.2329>;
  <D.2282>:
  if (argc == 2) goto <D.2285>; else goto <D.2286>;
  <D.2285>:
  D.2287 = argc + -1;
  printf ("Number of arguments: %d\nRead From File\n", D.2287);
  D.2288 = argv + 4;
  D.2289 = *D.2288;
  fptr = fopen (D.2289, "r");
  fscanf (fptr, "%d", &num1);
  fscanf (fptr, "%d", &num2);
  fscanf (fptr, "%d", &num3);
  goto <D.2290>;
  <D.2286>:
  if (argc == 4) goto <D.2291>; else goto <D.2292>;
  <D.2291>:
  D.2293 = argv + 4;
  D.2294 = *D.2293;
  num1.0 = atoi (D.2294);
  num1 = num1.0;
  D.2296 = argv + 8;
  D.2297 = *D.2296;
  num2.1 = atoi (D.2297);
  num2 = num2.1;
  D.2299 = argv + 12;
  D.2300 = *D.2299;
  num3.2 = atoi (D.2300);
  num3 = num3.2;
  goto <D.2302>;
  <D.2292>:
  __builtin_puts (&"Invalid number of arguments. Please provide three numbers."[0]);
  D.2284 = 1;
  goto <D.2329>;
  <D.2302>:
  <D.2290>:
  num1.3 = num1;
  num2.4 = num2;
  if (num1.3 > num2.4) goto <D.2305>; else goto <D.2306>;
  <D.2305>:
  num2.5 = num2;
  num1.6 = num1;
  printf ("num1 = %d is greater than num2 = %d.\n", num1.6, num2.5);
  goto <D.2309>;
  <D.2306>:
  num1.7 = num1;
  num2.8 = num2;
  if (num1.7 < num2.8) goto <D.2312>; else goto <D.2313>;
  <D.2312>:
  num2.9 = num2;
  num1.10 = num1;
  printf ("num1 = %d is less than num2 = %d.\n", num1.10, num2.9);
  goto <D.2316>;
  <D.2313>:
  __builtin_puts (&"Both numbers are equal."[0]);
  <D.2316>:
  <D.2309>:
  num3.11 = num3;
  if (num3.11 > 0) goto <D.2318>; else goto <D.2319>;
  <D.2318>:
  num3.12 = num3;
  printf ("%d is positive.\n", num3.12);
  goto <D.2321>;
  <D.2319>:
  num3.13 = num3;
  if (num3.13 < 0) goto <D.2323>; else goto <D.2324>;
  <D.2323>:
  num3.14 = num3;
  printf ("%d is negative.\n", num3.14);
  goto <D.2326>;
  <D.2324>:
  num3.15 = num3;
  printf ("%d is zero.\n", num3.15);
  <D.2326>:
  <D.2321>:
  D.2284 = 0;
  goto <D.2329>;
  <D.2329>:
  num1 = {CLOBBER};
  num2 = {CLOBBER};
  num3 = {CLOBBER};
  goto <D.2328>;
  D.2284 = 0;
  goto <D.2328>;
  <D.2328>:
  return D.2284;
}



;; Function _GLOBAL__sub_I_65535_0_main (_GLOBAL__sub_I_65535_0_main, funcdef_no=15, decl_uid=2360, cgraph_uid=0, symbol_order=23)

_GLOBAL__sub_I_65535_0_main ()
{
  __gcov_init (&*LPBX0);
  return;
}

