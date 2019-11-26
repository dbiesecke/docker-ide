// You can access plugins via the 'services' global variable
/*global services, plugin*/

services.pluginManager.loadPackage([
//      "~/.c9/plugins/c9.ide.installer/package.json",
      "~/.c9/plugins/c9.ide.mount/package.json",
      "~/.c9/plugins/c9.ide.recentfiles/package.json",
      "~/.c9/plugins/c9.ide.preview.markdown/package.json",
      "~/.c9/plugins/c9.ide.remote/package.json",
]);


// define(function(require, exports, module) {

// module.exports = function(session, options){
//     session.introduction = require("text!./intro.html");
//     session.preInstallScript = require("text!./check-deps.sh");

//     // Node.js
//     var NODEVERSION = "v0.10.28";
//     var nodeName = "node-" + NODEVERSION + "-"
//         + options.platform + "-" + options.arch;

//     session.install({
//         "name": "Node.js",
//         "description": "Node.js " + NODEVERSION
//     }, [
//         {
//             "tar.gz": {
//                 "url": "http://nodejs.org/dist/" + NODEVERSION + "/" + nodeName + ".tar.gz",
//                 "target": "~/.c9/node",
//                 "dir": nodeName
//             }
//         },
//         {
//             "bash": require("text!./node.sh")
//         }
//     ]);

//     // Pty.js
//     session.install({
//         "name": "Pty.js",
//         "description": "Pseudo Terminal support. Used by the Cloud9 Terminal",
//         "cwd": "~/.c9"
//     }, {
//         "npm": ["node-gyp", "pty.js@0.2.3"]
//     });

//     // Tmux
//     session.install({
//         "name": "tmux",
//         "description": "Tmux - the terminal multiplexer",
//         "cwd": "~/.c9"
//     }, {
//         "install": [
//             {
//                 "ubuntu": "tmux",
//                 "centos": "tmux"
//             },
//             {
//                 "bash": 'ln -sf $(which tmux) ~/.c9/bin/tmux'
//             }
//         ],
//         "bash": require("text!./tmux.sh")
//     });

//     // Show the installation screen
//     session.start();
// };

// });