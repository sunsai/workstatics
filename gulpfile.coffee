gulp = require('gulp')
nodemon = require('gulp-nodemon')
run = require('run-sequence')
bsync = require('browser-sync')
miniJS = require('gulp-uglify')
miniCSS = require('gulp-minify-css')
miniHTML = require('gulp-minify-html')

gulp.task('default', (callback)->
  run(['clean'], ['develop'], ['server', 'watch'], callback)
)
gulp.task('clean', (callback)->
  console.log('this is clean task ..............................')
  callback()
)
gulp.task('minijs', ->
  console.log('this is minijs task .............................')
)
gulp.task('minicss', ->
  console.log('this is minicss task .............................')
)
gulp.task('minihtml', ->
  console.log('this is minihtml task .............................')
)
gulp.task('build', (callback)->
  run(['clean'], ['minijs', 'minicss', 'minihtml'], callback)
)
gulp.task('develop', (callback)->
  nodemon({
    script: 'app.js',
    ext: 'js coffee ejs html css scss',
    stdout: false,
    tasks: ['build']
  })
  callback()
)
gulp.task('server', ()->
  bsync({
    proxy: 'http://localhost:3000'
    port: 8801
  })
)
gulp.task('watch', ()->
  gulp.watch(['./public/css/*.scss','./app/**/*.*'],['reload'])
)
gulp.task('reload', (callback)->
  run(['bsreload'], callback)
)
gulp.task('bsreload', ->
  bsync.reload()
)

