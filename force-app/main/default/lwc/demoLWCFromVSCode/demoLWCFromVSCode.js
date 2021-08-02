import { LightningElement, track } from 'lwc';

export default class DemoLWCFromVSCode extends LightningElement {
  firstNum;
  secondNum;
  @track result ='Intial Notes';
  onChangeHandler(event){
      const nameofInputBox = event.target.name;
      if( nameofInputBox === 'fnum'){
          this.firstNum = event.target.value;

      }else if( nameofInputBox === 'snum'){
        this.secondNum = event.target.value;
        this.result = this.secondNum;
   
  }
}
  add(){
    this.result ='I am in ADD';
    const a = parseInt(this.firstNum);
    const b = parseInt(this.secondNum);
    console.log(a);
    this.result = 'The Result is ${a}+${b} = ${a+b}';

  }
  sub(event){
    this.result = firstNum - secondNum;
 }
 add(event){
    this.result = firstNum * secondNum;
 }
 add(event){
    this.result = firstNum / secondNum;
 }

 
}