import { LightningElement,track,wire } from 'lwc';
import AccountsList from '@salesforce'

export default class ProjectForm extends LightningElement {
    name;
    @wire(AccountsList) accts;
   
}