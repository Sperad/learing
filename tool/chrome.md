# Chrome 插件

### 推荐
- postMan
- Json-Handle
- XDebug
- Chrome Logger

### 制作流程
- [官网](https://developer.chrome.com/extensions)
- [借鉴](https://github.com/deepred5/chrome-extensions-guides)

### 配置说明

- manifest.js 
~~~
{
  // 必须的字段
  "name": "My Extension",
  "version": "versionString",
  "manifest_version": 2, //从Chrome 18开始为2
  // 建议提供的字段
  "description": "A plain text description",
  "icons": { ... },
  "default_locale": "en",
  // 多选一，或者都不提供
  "browser_action": {...},
  "page_action": {...},
  "theme": {...},
  "app": {...},
  // 根据需要提供
  "background": {...},
  "chrome_url_overrides": {...},
  "content_scripts": [...],
  "content_security_policy": "policyString",
  "file_browser_handlers": [...],
  "homepage_url": "http://path/to/homepage",
  "incognito": "spanning" or "split",
  "intents": {...}
  "key": "publicKey",
  "minimum_chrome_version": "versionString",
  "nacl_modules": [...],
  "offline_enabled": true,
  "omnibox": { "keyword": "aString" },
  "options_page": "aFile.html",
  "permissions": [...],
  "plugins": [...],
  "requirements": {...},
  "update_url": "http://path/to/updateInfo.xml",
  "web_accessible_resources": [...]
}  
~~~
