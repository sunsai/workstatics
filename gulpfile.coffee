gulp = require('gulp')
nodemon = require('gulp-nodemon')

gulp.task('default', ()->
  console.log('this is defalut tasking.........')
)
gulp.task('watch', ()->
  gulp.watch('./public/css/*.scss', ['sass'])
)

gulp.task('develop', (callback)->
  nodemon({
    script: 'app.js',
    ext: 'js coffee ejs',
    stdout: false
  })
  callback()
)

