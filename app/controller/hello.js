module.exports = app => {
  return class extends app.Controller {
    async get(){
      this.ctx.body = 'hello';
    }
  }
}
