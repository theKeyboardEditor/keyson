let project = new Project('keyson');
project.localLibraryPath = 'vendor';

project.addSources('src');

// Libraries
project.addLibrary('hxjsonast');
project.addLibrary('json2object');

resolve(project);
