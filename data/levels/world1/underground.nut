if(! ("underground" in state)){
	state.underground <- false;
  print("[DEBUG] Underground state initialized\n");
}

function go_underground(under){
  Land.fade(under ? 0 : 1, 1);
  Land_detail.fade(under ? 0 : 1, 1);
  Land_foreground_1.fade(under ? 0 : 1, 1);
  Land_foreground_2.fade(under ? 0 : 1, 1);
  Land_foreground_3.fade(under ? 0 : 1, 1);
  Underground.fade(under ? 1 : 0, 1);
  Underground_mask.fade(under ? 1 : 0, 1);
  Underground_darkness.fade(under ? 1 : 0, 1);
  state.underground <- under;
}

go_underground(state.underground);
