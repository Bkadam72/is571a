function arith(expr) 
{
    const tokens = scan(expr);
    if (tokens.length === 0) return '';
    let result;{
        result = tokens;
 }
    return result;
}

class Parser {
    constructor(tokens) {
      this._tokens = tokens;
      this._index = 0;
      this.lookahead = this._nextToken();
    }
  
    parse() {
      try {
        let result = this.parseLo();
        if (!this.check('EOF')) {
      const msg = `expecting end-of-input at "${this.lookahead.lexeme}"`;
      throw new SyntaxError(msg);
        }
        return result;
      }
      catch (err) {
        return err;
      }
    }
  
    check(kind) {
      return this.lookahead.kind === kind;
    }
    
    match(kind) {
      if (this.check(kind)) {
        this.lookahead = this._nextToken();
      }
      else {
        const msg = `expecting ${kind} at "${this.lookahead.lexeme}"`;
        throw new SyntaxError(msg);
      }
    }
    _nextToken() {
      if (this._index < this._tokens.length) {
        return this._tokens[this._index++];
      }
      else {
        return new Token('EOF', '<EOF>');
      }
    }
}

function scan(str) {
    const toks = [];
    let m;
    for (let s = str; s.length > 0; s = s.slice(m[0].length)) {
      if (m = s.match(/^[ \t]+/)) { 
        continue; 
      }
      else if (m = s.match(/^\d+/)) {
         
        toks.push(new Token('INT', m[0]));
      }
      else if (m = s.match(/^./)) {  
        toks.push(new Token(m[0], m[0]));
      }
    }
    return toks;
  }
  
 
  class Token {
    constructor(kind, lexeme) {
      Object.assign(this, {kind, lexeme});
    }
  }
  input=fs.readFileSync(0, 'utf8')
  
  console.log(a);

  
  //echo
  if (Input = a) 
  console.log(a);
   
  //empty initializers
  if (input = null)
  console.log([]);

  //simple positional initializers
  if (Input = a) 
  console.log(a);
