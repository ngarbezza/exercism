export function decodedResistorValue(colors: string[]): string {
  const colorsOrder: string[] = [
    'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'
  ]

  const firstBand = colorsOrder.indexOf(colors[0]);
  const secondBand = colorsOrder.indexOf(colors[1]);
  const thirdBand = colorsOrder.indexOf(colors[2]);

  const value = parseInt(`${firstBand}${secondBand}${'0'.repeat(thirdBand)}`)

  const baseUnit = { name: 'ohms', factor: 1 };
  const conversions = [
    { name: 'gigaohms', factor: 1_000_000_000 },
    { name: 'megaohms', factor: 1_000_000 },
    { name: 'kiloohms', factor: 1_000 },
  ]
  const unit = conversions.find(conversion => value % conversion.factor === 0 && value >= conversion.factor) || baseUnit;

  return `${value / unit.factor} ${unit.name}`
}
