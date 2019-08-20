const path = require('path')

const ROOT = path.join(__dirname, '..')+path.sep
function resolve (dir) {
  return path.join(ROOT, dir)
}
const WPROOT = resolve('webpack')


// console.info(ROOT)
// console.info(WPROOT)
// process.exit()

module.exports = { ROOT, WPROOT, resolve }
