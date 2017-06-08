'use babel';

import AtomNetlinxView from './atom-netlinx-view';
import { CompositeDisposable } from 'atom';
const { exec } = require('child_process');

export default {

  atomNetlinxView: null,
  modalPanel: null,
  subscriptions: null,

  activate(state) {
    this.atomNetlinxView = new AtomNetlinxView(state.atomNetlinxViewState);
    this.modalPanel = atom.workspace.addModalPanel({
      item: this.atomNetlinxView.getElement(),
      visible: false
    })

    // Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    this.subscriptions = new CompositeDisposable();

    // Register command that toggles this view
    this.subscriptions.add(atom.commands.add('atom-workspace', {
      'atom-netlinx:compile': () => this.compile()
    }))
  },

  deactivate() {
    this.modalPanel.destroy();
    this.subscriptions.dispose();
    this.atomNetlinxView.destroy();
  },

  serialize() {
    return {
      atomNetlinxViewState: this.atomNetlinxView.serialize()
    }
  },

  compile() {
    console.log('AtomNetlinx was toggled!');
    let editor = atom.workspace.getActivePaneItem()
    let file
    console.log('edit: ', editor);

    if (editor.buffer == undefined) {
      file = editor.selectedPath
    } else {
      file = editor.buffer.file.path
    }

    console.log('file: ', file);
    exec('NLRC ' + file, (error, stdout, stderr) => {
      if (error) {
        console.error(`exec error: ${error}`)
        atom.notifications.addError(`exec error: ${error}`)
        return
      }
       atom.notifications.addInfo(`stdout: ${stdout}`)

      console.log(`stdout: ${stdout}`)
      console.log(`stderr: ${stderr}`)
    })
  }
}
