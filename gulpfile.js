var gulp = require('gulp');
var sass = require('gulp-sass');
var prefix = require('gulp-autoprefixer');
var browserSync = require('browser-sync');
var reload = browserSync.reload;
var nodemon = require('gulp-nodemon');
var fileSystem = require('fs');
var jsonFile = "config.json";
var configFile = fileSystem.readFileSync(jsonFile);
var jsonConfig = JSON.parse(configFile);

var paths = jsonConfig.paths;
var output = paths.theme + paths.static;
var mainSass = paths.source + paths.sass + paths.regSass;
var dependentSass = paths.source + paths.sass + paths.regFolder + paths.regSass;
var mainJs = paths.source + paths.js + paths.regJs;
var dependentJs = paths.source + paths.js + paths.regFolder + paths.regJs;
var html = paths.output + paths.regHtml;


gulp.task('sass', function () {
	return gulp.src(mainSass)
  // outputStyle available: nested, expanded, compact, compressed
	.pipe(sass({outputStyle: 'expanded', sourceComments: 'map'}, {errLogToConsole: true}))
	.pipe(prefix("last 2 versions", "> 1%", "ie 8", "Android 2", "Firefox ESR"))
	// output directory for compiled css files
	.pipe(gulp.dest(output))
	.pipe(reload({stream:true}));
});

gulp.task('browser-sync', ['nodemon'], function() {
	browserSync.init(null, {
		proxy: "http://localhost:5050",
    port: 3000,
	});
});

gulp.task('default', ['sass', 'browser-sync'], function () {
	gulp.watch(mainSass, ['sass']);
  gulp.watch(dependentSass, ['sass']);
	gulp.watch([mainJs, dependentJs, html], reload);
});

gulp.task('nodemon', function (cb) {
	var called = false;
	var nodemonParam = {
											script: 'app.js'
											, watch: ["bourbonSource/**", "output/**"]
											, ignore: ["venv/**", ".git/**", "node_modules/**", "__pycache__/**", "pelican-plugins/**"]
										};
	return nodemon(nodemonParam).on('start', function () {
		if (!called) {
			called = true;
			cb();
		}
	});
});
