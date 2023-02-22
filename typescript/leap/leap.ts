function divisibleBy(dividend: number, divisor: number): boolean {
  return dividend % divisor === 0;
}

export function isLeap(year: number): boolean {
  return divisibleBy(year, 400) || divisibleBy(year, 4) && !divisibleBy(year, 100);
}
