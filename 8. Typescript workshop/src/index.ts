// Question 1 Complete the function below to return the sum of the two numbers.
function sumTwoNumbers(num1: number, num2: number) : number {
  return num1 + num2;
}

// Question 2 Create a enum type called HairColor with the following values:
// - 'brown'
// - 'black'
// - 'blonde'
// - 'red'
enum HairColor {
  brown = "brown",
  black = "black",
  blonde = "blonde",
  red = "red"
}

// Question 3 Construct a Person class with the following properties:
// name (string)
// age (number)
class Person {
  private _name: string;
  private _age: number;

  public constructor(name: string, age: number) {
    this._name = name;
    this._age = age;
  }

  public getName() : string {
    return this._name;
  }

  public setName(name: string) {
    this._name = name;
  }

  public getAge() : number {
    return this._age;
  }

  public setAge(age: number) {
    this._age = age;
  }

}

// Question 4 Create a class called Student extending the Person class with the following properties:
// - name
// - age
// - hairColor
class Student extends Person {
  private _hairColor: HairColor;

  public constructor(name: string, age: number, hairColour: HairColor) {
    super(name, age);
    this._hairColor = hairColour;
  }

  public getHairColor(): HairColor {
    return this._hairColor;
  }

  public setHairColor(hairColor: HairColor) {
    this._hairColor = hairColor;
  }
}

// Question 5 Create a Interface called PersonInterface with the following properties:
// - name
// - age (optional)
interface PersonInterface {
  name: string;
  age?: number;
}

// Question 6 Create a Generic function to sort arrays of any type and concat them together. Any duplicates should be removed.
function sortAndConcat<T>(array: T[], ...arrays : any) : T[] {
  array = array.concat(...arrays);
  array.sort();
  return Array.from(new Set(array));
}

// Export the functions above so that they can be used in the tests.
// Do not change the code below.
export {
  sumTwoNumbers,
  HairColor,
  Student,
  Person,
  PersonInterface,
  sortAndConcat,
};
