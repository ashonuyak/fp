const singleton = <T>(element: T): T[] => {
  return [element]
}

const isNull = <T>(list: T[]): boolean => {
  return !Boolean(list.length)
}

const snoc = (list: any, element: any): any[] => {
  return [...list, element]
}

const getLength = <T>(list: T[]): number => {
  let len: number = 0
  for (let value of list) {
    len++
  }
  return len
}

console.log('--------1--------')
console.log(singleton(123))

console.log('--------2--------')
console.log(isNull([]))
console.log(isNull([1]))

console.log('--------3--------')
console.log(snoc([12, 'asd', { alo: 5 }], 'alo'))

console.log('--------4--------')
console.log(getLength([1, 2, 3]))
