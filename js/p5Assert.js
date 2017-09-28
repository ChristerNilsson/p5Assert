// Generated by CoffeeScript 1.11.1
var axiomAppend, axiomClear, changeLayout, chapter, d, dd, exercise, fillSelect, linkAppend, linksClear, msg, myCodeMirror, pp, resizeTimer, runAll, runDelayed, sel1, sel1change, sel2, sel2change, setLinks, setMsg, setup, tableAppend, tableClear, timeout;

myCodeMirror = null;

sel1 = null;

sel2 = null;

chapter = "";

exercise = "";

msg = null;

timeout = null;

pp = function(obj) {
  return (JSON.stringify(obj)).replace(/"/g, '');
};

setMsg = function(txt) {
  msg.val(txt);
  return msg.css('background-color', txt === '' ? '#FFFFFF' : '#FF0000');
};

fillSelect = function(sel, dict) {
  var key, results1;
  sel.empty();
  results1 = [];
  for (key in dict) {
    results1.push(sel.append($("<option>").attr('value', key).text(key)));
  }
  return results1;
};

sel1change = function(sel) {
  chapter = sel.value;
  fillSelect(sel2, data[chapter]);
  exercise = _.keys(data[chapter])[0];
  return sel2.val(exercise).change();
};

sel2change = function(sel) {
  var b;
  exercise = sel.value;
  b = data[chapter][exercise]["b"];
  setLinks();
  myCodeMirror.setValue(b);
  runAll();
  return myCodeMirror.focus();
};

setLinks = function() {
  var link, ref, results1, text;
  linksClear();
  linkAppend(links, "https://github.com/ChristerNilsson/p5Assert/blob/master/README.md", "Help");
  linkAppend(links, "https://p5js.org/reference", "p5");
  linkAppend(links, "http://coffeescript.org", "Coffeescript");
  linkAppend(links, "https://www.w3schools.com/js", "Javascript");
  linkAppend(links, "https://github.com/ChristerNilsson/Nilsson/blob/master/README.md", "Nilsson");
  linkAppend(links, "http://underscorejs.org/", "_");
  ref = data[chapter][exercise]["e"];
  results1 = [];
  for (text in ref) {
    link = ref[text];
    results1.push(linkAppend(links, link, text));
  }
  return results1;
};

tableClear = function() {
  return $("#tabell tr").remove();
};

axiomClear = function() {
  return $("#axioms tr").remove();
};

linksClear = function() {
  return $("#links tr").remove();
};

tableAppend = function(t, call, expected, actual, show) {
  var cell1, cell2, cell3, row, sp;
  sp = "&nbsp;";
  row = t.insertRow(-1);
  cell1 = row.insertCell(-1);
  cell1.style.backgroundColor = '#FFFF00';
  cell2 = row.insertCell(-1);
  cell2.style.backgroundColor = '#00FF00';
  cell3 = row.insertCell(-1);
  cell3.style.backgroundColor = _.isEqual(expected, actual) ? '#00FF00' : '#FF0000';
  if (show) {
    cell1.innerHTML = sp + call + sp;
    cell2.innerHTML = sp + JSON.stringify(expected) + sp;
    return cell3.innerHTML = sp + JSON.stringify(actual) + sp;
  } else {
    cell1.innerHTML = sp + "?" + sp;
    cell2.innerHTML = sp + "?" + sp;
    return cell3.innerHTML = sp + "?" + sp;
  }
};

axiomAppend = function(t, call, expected, actual) {
  var cell1, cell2, row, sp;
  sp = "&nbsp;";
  row = t.insertRow(-1);
  cell1 = row.insertCell(-1);
  cell1.innerHTML = sp + call + sp;
  cell1.style.backgroundColor = '#FFFF00';
  cell2 = row.insertCell(-1);
  cell2.innerHTML = sp + JSON.stringify(expected) + sp;
  return cell2.style.backgroundColor = '#00FF00';
};

d = function(s) {
  return "'" + s + "'";
};

dd = function(s) {
  return '"' + s + '"';
};

linkAppend = function(t, link, text) {
  var cell1, row, s;
  row = t.insertRow(-1);
  cell1 = row.insertCell(-1);
  s = '<a href=' + d(link);
  s += ' target=' + d('_blank');
  s += ' onmouseover=' + d('this.style.color=' + dd('yellow') + ';');
  s += ' onmouseout=' + d('this.style.color=' + dd('black') + ';');
  s += '>';
  s += text;
  s += '</a>';
  return cell1.innerHTML = s;
};

changeLayout = function() {
  var w;
  w = $(window).width();
  $(".CodeMirror").width(w - 215 - 15);
  $("#msg").width(w - 220 - 15);
  return runDelayed();
};

resizeTimer = 0;

$(window).resize(function() {
  clearTimeout(resizeTimer);
  return resizeTimer = setTimeout(changeLayout, 10);
});

setup = function() {
  msg = $('#msg');
  sel1 = $('#sel1');
  sel2 = $('#sel2');
  return fillSelect(sel1, data);
};

window.onload = function() {
  var ta;
  ta = document.getElementById("code");
  myCodeMirror = CodeMirror.fromTextArea(ta, {
    lineNumbers: true,
    mode: "coffeescript",
    keyMap: "sublime",
    theme: "dracula",
    autoCloseBrackets: true,
    lineWiseCopyCut: true,
    tabSize: 2,
    indentWithTabs: true
  });
  $(".CodeMirror").css('font-size', "16pt");
  myCodeMirror.on("change", runDelayed);
  chapter = _.keys(data)[0];
  sel1.val(chapter).change();
  exercise = _.keys(data[chapter])[0];
  sel2.val(exercise).change();
  myCodeMirror.focus();
  window.resizeTo(1000, 750);
  return changeLayout();
};

runDelayed = function() {
  if (timeout) {
    clearTimeout(timeout);
  }
  return timeout = setTimeout(runAll, 200);
};

runAll = function() {
  var b, call, calls, cdict, code, ddict, e, error, fdict, h, i, j, k, l, len, len1, len2, offset1, offset2, ref, ref1, ref2, results1;
  b = myCodeMirror.getValue();
  data[chapter][exercise]["b"] = b;
  cdict = data[chapter][exercise]["c"];
  fdict = data[chapter][exercise]["f"];
  ddict = data[chapter][exercise]["d"];
  calls = [];
  calls = calls.concat((function() {
    var results1;
    results1 = [];
    for (call in cdict) {
      results1.push('(' + call + ')');
    }
    return results1;
  })());
  calls = calls.concat((function() {
    var results1;
    results1 = [];
    for (call in fdict) {
      results1.push('(' + call + ')');
    }
    return results1;
  })());
  calls = calls.concat((function() {
    var results1;
    results1 = [];
    for (call in ddict) {
      results1.push('(' + call + ')');
    }
    return results1;
  })());
  error = "";
  try {
    code = transpile(b);
    try {
      eval("results = " + transpile(b + "\nreturn [" + calls + "]"));
    } catch (error1) {
      e = error1;
      error = e.stack.split('\n')[0];
    }
  } catch (error1) {
    e = error1;
    error = e.name + ": " + e.message;
  }
  tableClear();
  axiomClear();
  setMsg(error);
  if (error === "") {
    offset1 = 0;
    offset2 = 0;
    if (cdict) {
      ref = _.keys(cdict);
      for (i = j = 0, len = ref.length; j < len; i = ++j) {
        call = ref[i];
        tableAppend(tabell, call, cdict[call], results[i], true);
      }
      offset1 = _.keys(cdict).length;
    }
    if (fdict) {
      ref1 = _.keys(fdict);
      for (i = k = 0, len1 = ref1.length; k < len1; i = ++k) {
        call = ref1[i];
        tableAppend(tabell, call, fdict[call], results[offset1 + i], false);
      }
      offset2 = offset1 + _.keys(fdict).length;
    }
    h = $('#tabell').height();
    document.getElementById('axioms').style.top = (450 + h) + "px";
    if (ddict) {
      ref2 = _.keys(ddict);
      results1 = [];
      for (i = l = 0, len2 = ref2.length; l < len2; i = ++l) {
        call = ref2[i];
        results1.push(axiomAppend(axioms, call, ddict[call], results[offset2 + i]));
      }
      return results1;
    }
  }
};

//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicDVBc3NlcnQuanMiLCJzb3VyY2VSb290IjoiLi4iLCJzb3VyY2VzIjpbImNvZmZlZVxccDVBc3NlcnQuY29mZmVlIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxJQUFBOztBQUFBLFlBQUEsR0FBZTs7QUFDZixJQUFBLEdBQU87O0FBQ1AsSUFBQSxHQUFPOztBQUNQLE9BQUEsR0FBVTs7QUFDVixRQUFBLEdBQVc7O0FBQ1gsR0FBQSxHQUFNOztBQUNOLE9BQUEsR0FBVTs7QUFFVixFQUFBLEdBQUssU0FBQyxHQUFEO1NBQVMsQ0FBQyxJQUFJLENBQUMsU0FBTCxDQUFlLEdBQWYsQ0FBRCxDQUFvQixDQUFDLE9BQXJCLENBQTZCLElBQTdCLEVBQW1DLEVBQW5DO0FBQVQ7O0FBRUwsTUFBQSxHQUFTLFNBQUMsR0FBRDtFQUNSLEdBQUcsQ0FBQyxHQUFKLENBQVEsR0FBUjtTQUNBLEdBQUcsQ0FBQyxHQUFKLENBQVEsa0JBQVIsRUFBK0IsR0FBQSxLQUFPLEVBQVYsR0FBa0IsU0FBbEIsR0FBaUMsU0FBN0Q7QUFGUTs7QUFJVCxVQUFBLEdBQWEsU0FBQyxHQUFELEVBQU0sSUFBTjtBQUNaLE1BQUE7RUFBQSxHQUFHLENBQUMsS0FBSixDQUFBO0FBQ0E7T0FBQSxXQUFBO2tCQUNDLEdBQUcsQ0FBQyxNQUFKLENBQVcsQ0FBQSxDQUFFLFVBQUYsQ0FBYSxDQUFDLElBQWQsQ0FBbUIsT0FBbkIsRUFBNEIsR0FBNUIsQ0FBZ0MsQ0FBQyxJQUFqQyxDQUFzQyxHQUF0QyxDQUFYO0FBREQ7O0FBRlk7O0FBS2IsVUFBQSxHQUFhLFNBQUMsR0FBRDtFQUNaLE9BQUEsR0FBVSxHQUFHLENBQUM7RUFDZCxVQUFBLENBQVcsSUFBWCxFQUFpQixJQUFLLENBQUEsT0FBQSxDQUF0QjtFQUNBLFFBQUEsR0FBVyxDQUFDLENBQUMsSUFBRixDQUFPLElBQUssQ0FBQSxPQUFBLENBQVosQ0FBc0IsQ0FBQSxDQUFBO1NBQ2pDLElBQUksQ0FBQyxHQUFMLENBQVMsUUFBVCxDQUFr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Q0FBTyxLQUFQLENBQWEsQ0FBQyxPQUhuQzs7SUFLQSxDQUFBLEdBQUksQ0FBQSxDQUFFLFNBQUYsQ0FBWSxDQUFDLE1BQWIsQ0FBQTtJQUNKLFFBQVEsQ0FBQyxjQUFULENBQXdCLFFBQXhCLENBQWlDLENBQUMsS0FBSyxDQUFDLEdBQXhDLEdBQWdELENBQUMsR0FBQSxHQUFNLENBQVAsQ0FBQSxHQUFTO0lBRXpELElBQUcsS0FBSDtBQUNDO0FBQUE7V0FBQSxnREFBQTs7c0JBQ0MsV0FBQSxDQUFZLE1BQVosRUFBb0IsSUFBcEIsRUFBMEIsS0FBTSxDQUFBLElBQUEsQ0FBaEMsRUFBdUMsT0FBUSxDQUFBLE9BQUEsR0FBVSxDQUFWLENBQS9DO0FBREQ7c0JBREQ7S0FsQkQ7O0FBM0JRIiwic291cmNlc0NvbnRlbnQiOlsibXlDb2RlTWlycm9yID0gbnVsbFxyXG5zZWwxID0gbnVsbFxyXG5zZWwyID0gbnVsbFxyXG5jaGFwdGVyID0gXCJcIlxyXG5leGVyY2lzZSA9IFwiXCJcclxubXNnID0gbnVsbFxyXG50aW1lb3V0ID0gbnVsbFxyXG5cclxucHAgPSAob2JqKSAtPiAoSlNPTi5zdHJpbmdpZnkgb2JqKS5yZXBsYWNlIC9cIi9nLCAnJ1xyXG5cclxuc2V0TXNnID0gKHR4dCkgLT5cclxuXHRtc2cudmFsIHR4dFxyXG5cdG1zZy5jc3MgJ2JhY2tncm91bmQtY29sb3InLCBpZiB0eHQgPT0gJycgdGhlbiAnI0ZGRkZGRicgZWxzZSAnI0ZGMDAwMCdcclxuXHJcbmZpbGxTZWxlY3QgPSAoc2VsLCBkaWN0KSAtPlxyXG5cdHNlbC5lbXB0eSgpXHJcblx0Zm9yIGtleSBvZiBkaWN0XHJcblx0XHRzZWwuYXBwZW5kICQoXCI8b3B0aW9uPlwiKS5hdHRyKCd2YWx1ZScsIGtleSkudGV4dChrZXkpXHJcblxyXG5zZWwxY2hhbmdlID0gKHNlbCkgLT5cclxuXHRjaGFwdGVyID0gc2VsLnZhbHVlXHJcblx0ZmlsbFNlbGVjdCBzZWwyLCBkYXRhW2NoYXB0ZXJdXHJcblx0ZXhlcmNpc2UgPSBfLmtleXMoZGF0YVtjaGFwdGVyXSlbMF1cclxuXHRzZWwyLnZhbChleGVyY2lzZSkuY2hhbmdlKClcclxuXHJcbnNlbDJjaGFuZ2UgPSAoc2VsKSAtPlxyXG5cdGV4ZXJjaXNlID0gc2VsLnZhbHVlXHJcblx0YiA9IGRhdGFbY2hhcHRlcl1bZXhlcmNpc2VdW1wiYlwiXVxyXG5cdHNldExpbmtzKClcclxuXHRteUNvZGVNaXJyb3Iuc2V0VmFsdWUoYilcclxuXHRydW5BbGwoKVxyXG5cdG15Q29kZU1pcnJvci5mb2N1cygpXHJcblxyXG5zZXRMaW5rcyA9IC0+XHJcblx0bGlua3NDbGVhcigpXHJcblx0bGlua0FwcGVuZCBsaW5rcyxcdFwiaHR0cHM6Ly9naXRodWIuY29tL0NocmlzdGVyTmlsc3Nvbi9wNUFzc2VydC9ibG9iL21hc3Rlci9SRUFETUUubWRcIiwgXCJIZWxwXCJcclxuXHRsaW5rQXBwZW5kIGxpbmtzLFx0XCJodHRwczovL3A1anMub3JnL3JlZmVyZW5jZVwiLCBcInA1XCJcclxuXHRsaW5rQXBwZW5kIGxpbmtzLFx0XCJodHRwOi8vY29mZmVlc2NyaXB0Lm9yZ1wiLCBcIkNvZmZlZXNjcmlwdFwiXHJcblx0bGlua0FwcGVuZCBsaW5rcyxcdFwiaHR0cHM6Ly93d3cudzNzY2hvb2xzLmNvbS9qc1wiLCBcIkphdmFzY3JpcHRcIlxyXG5cdGxpbmtBcHBlbmQgbGlua3MsXHRcImh0dHBzOi8vZ2l0aHViLmNvbS9DaHJpc3Rlck5pbHNzb24vTmlsc3Nvbi9ibG9iL21hc3Rlci9SRUFETUUubWRcIiwgXCJOaWxzc29uXCJcclxuXHRsaW5rQXBwZW5kIGxpbmtzLFx0XCJodHRwOi8vdW5kZXJzY29yZWpzLm9yZy9cIiwgXCJfXCJcclxuXHJcblx0Zm9yIHRleHQsbGluayBvZiBkYXRhW2NoYXB0ZXJdW2V4ZXJjaXNlXVtcImVcIl1cclxuXHRcdGxpbmtBcHBlbmQgbGlua3MsbGluayx0ZXh0XHJcblxyXG50YWJsZUNsZWFyID0gLT4gJChcIiN0YWJlbGwgdHJcIikucmVtb3ZlKClcclxuYXhpb21DbGVhciA9IC0+ICQoXCIjYXhpb21zIHRyXCIpLnJlbW92ZSgpXHJcbmxpbmtzQ2xlYXIgPSAtPiAkKFwiI2xpbmtzIHRyXCIpLnJlbW92ZSgpXHJcblxyXG50YWJsZUFwcGVuZCA9ICh0LCBjYWxsLCBleHBlY3RlZCwgYWN0dWFsLCBzaG93KSAtPiAjIGV4YWt0IHRyZSBrb2x1bW5lclxyXG5cdHNwID0gXCImbmJzcDtcIlxyXG5cdHJvdyA9IHQuaW5zZXJ0Um93IC0xXHJcblxyXG5cdGNlbGwxID0gcm93Lmluc2VydENlbGwgLTFcclxuXHRjZWxsMS5zdHlsZS5iYWNrZ3JvdW5kQ29sb3IgPSAnI0ZGRkYwMCdcclxuXHJcblx0Y2VsbDIgPSByb3cuaW5zZXJ0Q2VsbCAtMVxyXG5cdGNlbGwyLnN0eWxlLmJhY2tncm91bmRDb2xvciA9ICcjMDBGRjAwJ1xyXG5cclxuXHRjZWxsMyA9IHJvdy5pbnNlcnRDZWxsIC0xXHJcblx0Y2VsbDMuc3R5bGUuYmFja2dyb3VuZENvbG9yID0gaWYgXy5pc0VxdWFsKGV4cGVjdGVkLCBhY3R1YWwpIHRoZW4gJyMwMEZGMDAnIGVsc2UgJyNGRjAwMDAnXHJcblxyXG5cdGlmIHNob3dcclxuXHRcdGNlbGwxLmlubmVySFRNTCA9IHNwICsgY2FsbCArIHNwXHJcblx0XHRjZWxsMi5pbm5lckhUTUwgPSBzcCArIEpTT04uc3RyaW5naWZ5KGV4cGVjdGVkKSArIHNwXHJcblx0XHRjZWxsMy5pbm5lckhUTUwgPSBzcCArIEpTT04uc3RyaW5naWZ5KGFjdHVhbCkgKyBzcFxyXG5cdGVsc2VcclxuXHRcdGNlbGwxLmlubmVySFRNTCA9IHNwICsgXCI/XCIgKyBzcFxyXG5cdFx0Y2VsbDIuaW5uZXJIVE1MID0gc3AgKyBcIj9cIiArIHNwXHJcblx0XHRjZWxsMy5pbm5lckhUTUwgPSBzcCArIFwiP1wiICsgc3BcclxuXHJcbmF4aW9tQXBwZW5kID0gKHQsIGNhbGwsIGV4cGVjdGVkLCBhY3R1YWwpIC0+ICMgZXhha3QgdHbDpSBrb2x1bW5lclxyXG5cdHNwID0gXCImbmJzcDtcIlxyXG5cdHJvdyA9IHQuaW5zZXJ0Um93IC0xXHJcblxyXG5cdGNlbGwxID0gcm93Lmluc2VydENlbGwgLTFcclxuXHRjZWxsMS5pbm5lckhUTUwgPSBzcCArIGNhbGwgKyBzcFxyXG5cdGNlbGwxLnN0eWxlLmJhY2tncm91bmRDb2xvciA9ICcjRkZGRjAwJ1xyXG5cclxuXHRjZWxsMiA9IHJvdy5pbnNlcnRDZWxsIC0xXHJcblx0Y2VsbDIuaW5uZXJIVE1MID0gc3AgKyBKU09OLnN0cmluZ2lmeShleHBlY3RlZCkgKyBzcFxyXG5cdGNlbGwyLnN0eWxlLmJhY2tncm91bmRDb2xvciA9ICcjMDBGRjAwJyAjIGlmIF8uaXNFcXVhbChleHBlY3RlZCwgYWN0dWFsKSB0aGVuICcjMDBGRjAwJyBlbHNlICcjRkYwMDAwJ1xyXG5cclxuZCA9IChzKSAtPiBcIidcIiArIHMgKyBcIidcIlxyXG5kZCA9IChzKSAtPiAnXCInICsgcyArICdcIidcclxuXHJcbmxpbmtBcHBlbmQgPSAodCwgbGluaywgdGV4dCkgLT4gIyBleGFrdCBlbiBrb2x1bW5cclxuXHRyb3cgPSB0Lmluc2VydFJvdyAtMVxyXG5cdGNlbGwxID0gcm93Lmluc2VydENlbGwgLTFcclxuXHRzID0gJzxhIGhyZWY9JyArIGQobGluaylcclxuXHRzICs9ICcgdGFyZ2V0PScgKyBkKCdfYmxhbmsnKVxyXG5cdHMgKz0gJyBvbm1vdXNlb3Zlcj0nICsgZCgndGhpcy5zdHlsZS5jb2xvcj0nICsgZGQoJ3llbGxvdycpICsgJzsnKVxyXG5cdHMgKz0gJyBvbm1vdXNlb3V0PScgICsgZCgndGhpcy5zdHlsZS5jb2xvcj0nICsgZGQoJ2JsYWNrJykgKyAnOycpXHJcblx0cyArPSAnPidcclxuXHRzICs9IHRleHRcclxuXHRzICs9ICc8L2E+J1xyXG5cdGNlbGwxLmlubmVySFRNTCA9IHNcclxuXHJcbmNoYW5nZUxheW91dCA9IC0+XHJcblx0dyA9ICQod2luZG93KS53aWR0aCgpXHJcblx0JChcIi5Db2RlTWlycm9yXCIpLndpZHRoIHctMjE1LTE1XHJcblx0JChcIiNtc2dcIikud2lkdGggdy0yMjAtMTVcclxuXHRydW5EZWxheWVkKClcclxuXHJcbnJlc2l6ZVRpbWVyPTBcclxuJCh3aW5kb3cpLnJlc2l6ZSAoKSAtPlxyXG5cdGNsZWFyVGltZW91dCByZXNpemVUaW1lclxyXG5cdHJlc2l6ZVRpbWVyID0gc2V0VGltZW91dCBjaGFuZ2VMYXlvdXQsIDEwXHJcblxyXG5zZXR1cCA9IC0+XHJcblx0bXNnID0gJCAnI21zZydcclxuXHRzZWwxID0gJCAnI3NlbDEnXHJcblx0c2VsMiA9ICQgJyNzZWwyJ1xyXG5cdGZpbGxTZWxlY3Qgc2VsMSwgZGF0YVxyXG5cclxud2luZG93Lm9ubG9hZCA9IC0+XHJcblx0dGEgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCBcImNvZGVcIlxyXG5cdG15Q29kZU1pcnJvciA9IENvZGVNaXJyb3IuZnJvbVRleHRBcmVhIHRhLFxyXG5cdFx0bGluZU51bWJlcnM6IHRydWVcclxuXHRcdG1vZGU6IFwiY29mZmVlc2NyaXB0XCJcclxuXHRcdGtleU1hcDogXCJzdWJsaW1lXCJcclxuXHRcdHRoZW1lOiBcImRyYWN1bGFcIlxyXG5cdFx0YXV0b0Nsb3NlQnJhY2tldHM6IHRydWVcclxuXHRcdGxpbmVXaXNlQ29weUN1dDogdHJ1ZVxyXG5cdFx0dGFiU2l6ZTogMlxyXG5cdFx0aW5kZW50V2l0aFRhYnM6IHRydWVcclxuXHJcblx0JChcIi5Db2RlTWlycm9yXCIpLmNzcyAnZm9udC1zaXplJyxcIjE2cHRcIlxyXG5cdG15Q29kZU1pcnJvci5vbiBcImNoYW5nZVwiLCBydW5EZWxheWVkXHJcblxyXG5cdGNoYXB0ZXIgPSBfLmtleXMoZGF0YSlbMF1cclxuXHRzZWwxLnZhbChjaGFwdGVyKS5jaGFuZ2UoKVxyXG5cdGV4ZXJjaXNlID0gXy5rZXlzKGRhdGFbY2hhcHRlcl0pWzBdXHJcblx0c2VsMi52YWwoZXhlcmNpc2UpLmNoYW5nZSgpXHJcblxyXG5cdG15Q29kZU1pcnJvci5mb2N1cygpXHJcblx0d2luZG93LnJlc2l6ZVRvIDEwMDAsNzUwXHJcblx0Y2hhbmdlTGF5b3V0KClcclxuXHJcbnJ1bkRlbGF5ZWQgPSAtPlxyXG5cdGlmIHRpbWVvdXQgdGhlbiBjbGVhclRpbWVvdXQgdGltZW91dFxyXG5cdHRpbWVvdXQgPSBzZXRUaW1lb3V0IHJ1bkFsbCwgMjAwXHJcblxyXG5ydW5BbGwgPSAtPlxyXG5cdGIgPSBteUNvZGVNaXJyb3IuZ2V0VmFsdWUoKVxyXG5cdGRhdGFbY2hhcHRlcl1bZXhlcmNpc2VdW1wiYlwiXSA9IGJcclxuXHJcblx0Y2RpY3QgPSBkYXRhW2NoYXB0ZXJdW2V4ZXJjaXNlXVtcImNcIl1cclxuXHRmZGljdCA9IGRhdGFbY2hhcHRlcl1bZXhlcmNpc2VdW1wiZlwiXVxyXG5cdGRkaWN0ID0gZGF0YVtjaGFwdGVyXVtleGVyY2lzZV1bXCJkXCJdXHJcblxyXG5cdGNhbGxzID0gW11cclxuXHRjYWxscyA9IGNhbGxzLmNvbmNhdCAoJygnICsgY2FsbCArICcpJyBmb3IgY2FsbCBvZiBjZGljdClcclxuXHRjYWxscyA9IGNhbGxzLmNvbmNhdCAoJygnICsgY2FsbCArICcpJyBmb3IgY2FsbCBvZiBmZGljdClcclxuXHRjYWxscyA9IGNhbGxzLmNvbmNhdCAoJygnICsgY2FsbCArICcpJyBmb3IgY2FsbCBvZiBkZGljdClcclxuXHJcblx0ZXJyb3IgPSBcIlwiXHJcblx0dHJ5XHJcblx0XHRjb2RlID0gdHJhbnNwaWxlIGJcclxuXHRcdHRyeVxyXG5cdFx0XHRldmFsIFwicmVzdWx0cyA9IFwiICsgdHJhbnNwaWxlIGIgKyBcIlxcbnJldHVybiBbXCIgKyBjYWxscyArIFwiXVwiXHJcblx0XHRjYXRjaCBlXHJcblx0XHRcdGVycm9yID0gZS5zdGFjay5zcGxpdCgnXFxuJylbMF1cclxuXHRjYXRjaCBlXHJcblx0XHRlcnJvciA9IGUubmFtZSArIFwiOiBcIiArIGUubWVzc2FnZVxyXG5cclxuXHR0YWJsZUNsZWFyKClcclxuXHRheGlvbUNsZWFyKClcclxuXHJcblx0c2V0TXNnIGVycm9yXHJcblx0aWYgZXJyb3IgPT0gXCJcIlxyXG5cclxuXHRcdG9mZnNldDEgPSAwXHJcblx0XHRvZmZzZXQyID0gMFxyXG5cclxuXHRcdGlmIGNkaWN0XHJcblx0XHRcdGZvciBjYWxsLGkgaW4gXy5rZXlzKGNkaWN0KVxyXG5cdFx0XHRcdHRhYmxlQXBwZW5kIHRhYmVsbCwgY2FsbCwgY2RpY3RbY2FsbF0sIHJlc3VsdHNbaV0sIHRydWVcclxuXHRcdFx0b2Zmc2V0MSA9IF8ua2V5cyhjZGljdCkubGVuZ3RoXHJcblxyXG5cdFx0aWYgZmRpY3QgIyBzZWNyZXRcclxuXHRcdFx0Zm9yIGNhbGwsaSBpbiBfLmtleXMoZmRpY3QpXHJcblx0XHRcdFx0dGFibGVBcHBlbmQgdGFiZWxsLCBjYWxsLCBmZGljdFtjYWxsXSwgcmVzdWx0c1tvZmZzZXQxICsgaV0sIGZhbHNlXHJcblx0XHRcdG9mZnNldDIgPSBvZmZzZXQxICsgXy5rZXlzKGZkaWN0KS5sZW5ndGhcclxuXHJcblx0XHRoID0gJCgnI3RhYmVsbCcpLmhlaWdodCgpO1xyXG5cdFx0ZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoJ2F4aW9tcycpLnN0eWxlLnRvcCA9IFwiI3s0NTAgKyBofXB4XCJcclxuXHJcblx0XHRpZiBkZGljdFxyXG5cdFx0XHRmb3IgY2FsbCxpIGluIF8ua2V5cyhkZGljdClcclxuXHRcdFx0XHRheGlvbUFwcGVuZCBheGlvbXMsIGNhbGwsIGRkaWN0W2NhbGxdLCByZXN1bHRzW29mZnNldDIgKyBpXVxyXG4iXX0=
//# sourceURL=C:\github\p5Assert\coffee\p5Assert.coffee