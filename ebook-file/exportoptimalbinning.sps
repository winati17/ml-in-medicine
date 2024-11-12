* OPTIMAL BINNING Rules.

RECODE fruitvegetables
  (MISSING = SYSMIS)
  (14 THRU HI = 2)
  (LOW THRU 14 = 1)
  INTO fruitvegetables_bin.
VARIABLE LABELS
  fruitvegetables_bin 'Binned input variable fruitvegetables based on guide variable overweightchildren'.
FORMATS
  fruitvegetables_bin (F8.0).
VARIABLE LEVEL
  fruitvegetables_bin (NOMINAL).
VALUE LABELS fruitvegetables_bin
  1 'fruitvegetables < 14'
  2 '14 <= fruitvegetables'.

RECODE unhealthysnacks
  (MISSING = SYSMIS)
  (19.120000000000001 THRU HI = 3)
  (12.030000000000001 THRU 19.120000000000001 = 2)
  (LOW THRU 12.030000000000001 = 1)
  INTO unhealthysnacks_bin.
VARIABLE LABELS
  unhealthysnacks_bin 'Binned input variable unhealthysnacks based on guide variable overweightchildren'.
FORMATS
  unhealthysnacks_bin (F8.0).
VARIABLE LEVEL
  unhealthysnacks_bin (NOMINAL).
VALUE LABELS unhealthysnacks_bin
  1 'unhealthysnacks < 12'
  2 '12 <= unhealthysnacks < 19'
  3 '19 <= unhealthysnacks'.

RECODE fastfoodmeal
  (MISSING = SYSMIS)
  (2.0398468999999997 THRU HI = 2)
  (LOW THRU 2.0398468999999997 = 1)
  INTO fastfoodmeal_bin.
VARIABLE LABELS
  fastfoodmeal_bin 'Binned input variable fastfoodmeal based on guide variable overweightchildren'.
FORMATS
  fastfoodmeal_bin (F8.0).
VARIABLE LEVEL
  fastfoodmeal_bin (NOMINAL).
VALUE LABELS fastfoodmeal_bin
  1 'fastfoodmeal < 2'
  2 '2 <= fastfoodmeal'.

RECODE physicalactivities
  (MISSING = SYSMIS)
  (7.9183190000000003 THRU HI = 2)
  (LOW THRU 7.9183190000000003 = 1)
  INTO physicalactivities_bin.
VARIABLE LABELS
  physicalactivities_bin 'Binned input variable physicalactivities based on guide variable overweightchildren'.
FORMATS
  physicalactivities_bin (F8.0).
VARIABLE LEVEL
  physicalactivities_bin (NOMINAL).
VALUE LABELS physicalactivities_bin
  1 'physicalactivities < 8'
  2 '8 <= physicalactivities'.

EXECUTE.
