import { LightningElement,track, wire } from 'lwc';
import AccountsList from '@salesforce/apex/CreateAccounts.getRecords'

export default class ProjectForm extends LightningElement {
  
    @wire(AccountsList) 
    accts;
   
}