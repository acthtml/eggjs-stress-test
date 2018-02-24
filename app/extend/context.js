module.exports = {
  success(data, msg){
    let body = {
      errno: 0
    }
    if(data){
      body.data = data;
    }
    if(msg){
      body.errmsg = msg;
    }

    this.body = body;
  },
  fail(errno, errmsg, data){
    let body = {
      errno,
      errmsg
    }
    if(data){
      body.data = data;
    }

    this.body = body
  }
}
