package com.masuland.loginexample.business
{
	import com.masuland.loginexample.data.vo.AuthenticationVO;
	import com.masuland.loginexample.data.vo.LayoutVO;
	import com.masuland.loginexample.data.vo.LocaleVO;
	import com.masuland.loginexample.data.vo.SettingsVO;
	import com.masuland.loginexample.data.vo.StyleVO;
	import com.masuland.loginexample.data.vo.UserVO;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	
	import org.swizframework.utils.services.MockDelegateHelper;
	
	/**
	 * @author masuland.com
	 */
	public class AppMockDelegate implements IAppDelegate
	{
		//----------------------
		// Properties
		//----------------------
		
		protected var _helper:MockDelegateHelper = new MockDelegateHelper(); 
		
		//----------------------
		// Methods
		//----------------------
		
		public function getSettings():AsyncToken
		{
			var settings:SettingsVO = new SettingsVO();
			
			// Locale
			
			var locales:ArrayCollection = new ArrayCollection();
			
			var locale:LocaleVO = new LocaleVO();
			locale.name = 'English';
			locale.code = 'en_US';
			locales.addItem(locale);
			
			locale = new LocaleVO();
			locale.name = 'Deutsch';
			locale.code = 'de_DE';
			locales.addItem(locale);
			
			// Web style
			
			var styles:ArrayCollection = new ArrayCollection();
			
			var style:StyleVO = new StyleVO();
			style.name = 'Web, Green';
			style.path = 'style/login_example_web_green.swf';
			styles.addItem(style);
			
			style = new StyleVO();
			style.name = 'Web, Red';
			style.path = 'style/login_example_web_red.swf';
			styles.addItem(style);
			
			// Web layout
			
			settings.layouts = new ArrayCollection();
			
			var layout:LayoutVO = new LayoutVO();
			layout.name = 'Web, 450x320';
			layout.width = 450;
			layout.height = 320;
			layout.stateName = 'web';
			layout.styles = styles;
			layout.locales = locales;
			settings.layouts.addItem(layout);
			
			layout = new LayoutVO();
			layout.name = 'Web, 500x350';
			layout.width = 500;
			layout.height = 350;
			layout.stateName = 'web';
			layout.styles = styles;
			layout.locales = locales;
			settings.layouts.addItem(layout);
			
			layout = new LayoutVO();
			layout.name = 'Web, 600x400';
			layout.width = 600;
			layout.height = 400;
			layout.stateName = 'web';
			layout.styles = styles;
			layout.locales = locales;
			settings.layouts.addItem(layout);
			
			// Phone style
			
			styles = new ArrayCollection();
			
			style = new StyleVO();
			style.name = 'Phone, Green';
			style.path = 'style/login_example_phone_green.swf';
			styles.addItem(style);
			
			style = new StyleVO();
			style.name = 'Phone, Red';
			style.path = 'style/login_example_phone_red.swf';
			styles.addItem(style);
			
			// Phone layout
			
			layout = new LayoutVO();
			layout.name = 'Phone, 280x420';
			layout.width = 280;
			layout.height = 420;
			layout.stateName = 'phone';
			layout.styles = styles;
			layout.locales = locales;
			settings.layouts.addItem(layout);
			
			layout = new LayoutVO();
			layout.name = 'Phone, 300x500';
			layout.width = 300;
			layout.height = 500;
			layout.stateName = 'phone';
			layout.styles = styles;
			layout.locales = locales;
			settings.layouts.addItem(layout);
			
			return _helper.createMockResult(settings, 500);
		}
		
		public function login(auth:AuthenticationVO):AsyncToken
		{
			var user:UserVO = new UserVO();
			user.username = auth.username;
			
			return _helper.createMockResult(user, 500);
		}
		
		public function register(auth:AuthenticationVO):AsyncToken
		{
			var user:UserVO = new UserVO();
			user.username = auth.username;
			user.email = auth.email;
			
			return _helper.createMockResult(user, 500);
		}
		
		public function updateUser(user:UserVO):AsyncToken
		{
			return _helper.createMockResult(user.clone(), 500);
		}
	}
}
