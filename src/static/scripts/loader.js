/**
 * Created by weichangying.
 * User: Administrator
 * Date: 2013/12/08
 * Time: 17:07
 *
 * this file dyname script loader 
 */
+ function() {
	/**
	 * Taginfo
	 * @return {[type]} [description]
	 */
	var Taginfo = function() {
		this._name = "";
		this._uri = "";
	};

	/**
	 * dyname generating a js tag by a controller
	 * @param  {[type]} controllers [description]
	 * @return {[type]}             [description]
	 */
	var ScriptLoader = function() {

		/**
		 * [RESOURCES]
		 * @type {jquery}
		 */
		var _jquery = new Taginfo();
		_jquery._name = "jquery";
		_jquery._uri = "/static/resources/js/jquery-1.10.1.min.js";
		/**
		 * [RESOURCES]
		 * @type {jquery.blockui}
		 */
		var _blockui = new Taginfo();
		_blockui._name = "blockui";
		_blockui._uri = "/static/resources/js/jquery.blockui.min.js";
		/**
		 * [RESOURCES]
		 * @type {bootstrap}
		 */
		var _bootstrap = new Taginfo();
		_bootstrap._name = "bootstrap";
		_bootstrap._uri = "/static/resources/bootstrap/v2/js/bootstrap.min.js";
		/**
		 * [RESOURCES]
		 * @type {jquery}
		 */
		var _app = new Taginfo();
		_app._name = "app";
		_app._uri = "/static/resources/js/app.js";
		/**
		 * [RESOURCES]
		 * @type {angular}
		 */
		var _angular = new Taginfo();
		_angular._name = "angular";
		_angular._uri = "/static/resources/angular/angular.js";

		/**
		 * [CONTROLLERS]
		 * @type {maincontroller}
		 */
		var _maindata = new Taginfo();
		_maindata._name = "maindata";
		_maindata._uri = "/static/scripts/controllers/maincontroller.js";

		/**
		 * [SCRIPTS CONTAINER]
		 * @type {Array}
		 */
		this._jsUris = [
			_jquery,
			_blockui,
			_bootstrap,
			_app,
			_angular,
			_maindata
		];

	};

	/**
	 * the scriptloader prototypes
	 * @type {Object}
	 */
	ScriptLoader.prototype = {
		//generating some script target
		loadScript: function() {
			//add all of the uries to current page
			var body = document.getElementsByTagName('body')[0];
			for (var i = 0; i < this._jsUris.length; i++) {
				var tag = this._jsUris[i];
				var script = document.createElement('script');
				script.type = 'text/javascript';
				script.src = tag._uri;
				script.onload = script.onreadystatechange = function() {
					if ((!this.readyState || this.readyState === "loaded" || this.readyState === "complete")) {
						// Handle memory leak in IE
						script.onload = script.onreadystatechange = null;
					}
				};
				// Use appendChild to append js after body.
				body.appendChild(script);
			}
		},
		//call init methods
		init: function() {
			this.loadScript();
		}
	};

	/**
	 * setting global loader object then call the init method to loading resouce dynaming.
	 * @type {[type]}
	 */
	window.Loader = window.Loader || new ScriptLoader() || null;
	window.Loader && window.Loader.init();
}();
/**
 * init thirdparty libs
 * @return {[type]} [description]
 */
window.onload = function() {
	App && App.init();
}