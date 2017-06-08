'use babel';

import AtomNetlinxView from './atom-netlinx-view';
import { CompositeDisposable } from 'atom';

export default {

  atomNetlinxView: null,
  modalPanel: null,
  subscriptions: null,

  activate(state) {
    this.atomNetlinxView = new AtomNetlinxView(state.atomNetlinxViewState);
    this.modalPanel = atom.workspace.addModalPanel({
      item: this.atomNetlinxView.getElement(),
      visible: false
    });

    // Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    this.subscriptions = new CompositeDisposable();

    // Register command that toggles this view
    this.subscriptions.add(atom.commands.add('atom-workspace', {
      'atom-netlinx:toggle': () => this.toggle()
    }));
  },

  deactivate() {
    this.modalPanel.destroy();
    this.subscriptions.dispose();
    this.atomNetlinxView.destroy();
  },

  serialize() {
    return {
      atomNetlinxViewState: this.atomNetlinxView.serialize()
    };
  },

  toggle() {
    console.log('AtomNetlinx was toggled!');
    return (
      this.modalPanel.isVisible() ?
      this.modalPanel.hide() :
      this.modalPanel.show()
    );
  }

};
