# Android 筆記

-  [I18N] Hardcoded string "someword", should use @string resource

	```
   文字名稱要加在 string.xml，
   <string name="activity_btn1">btn1</string>
   使用時 android:text="@string/activity_btn1"
   主要是讓顯示文字集中管理。
   修改文字的時候也不用到處改，
   並且可以作多國語系。  
	```
	
- textView 文字置中
	
	```
	android:gravity="center_horizontal"
	```
	
- 執行 程式時 genymotion device 偵測不到

	```
	拉動一下 serial number column
	```
	
- drawable—hdpi、drawable—mdpi、drawable—ldpi 圖片資料夾

	```
	表示圖片解析度
	
	drawable—hdpi 高解析(480 X 800)
	drawable—mdpi 中解析(320 X 480)
	drawable—ldpi 低解析(240 X 320)
	如果將圖片放到不對的解析度資料夾，圖片會被放大
	
	```
	
- 取消視窗的 APP 名稱

	```
	    //一定要在 setContentView 之前
		getWindow().requestFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.filemanage);
	```
- android.os.NetworkOnMainThreadException

	```
	 //Android 4.0 之後不能在主線程中請求HTTP請求，所以要在 thread 內執行動作
	 new Thread(new Runnable(){
                @Override
                public void run() {
                    cachedImage = asyncImageLoader.loadDrawable(imageUrl, position);
                    imageView.setImageDrawable(cachedImage);
                }
            }).start();
	```
- java.lang.UnsupportedOperationException

	```
   拿用 Arrays.asList() 轉換過的陣列來操作 add or remove 發生的問題
   改用以下方法就沒有問題
	List<FileManage> asList = new ArrayList<FileManage>(Arrays.asList(fileList));
   
	```
- 指令列安裝 Apk

	```
	adb -s 裝置名稱 install ScaleImageView.apk
	```
	
- 取一個 static 的 applicationContext

	```
	//MainApplication.java
	public class MainApplication extends Application {

	private static Context context;

		@Override
		public void onCreate() {
			super.onCreate();
			this.context = getApplicationContext();
		}

		public static Context getAppContext() {
			return context;
			}
	}
	```
	
	```
	AndroidManifest.xml
	<application
        android:name="com.example.pdfviewer.MainApplication"
			>
	 </application>
	```
	
	```
		Context appContext = MainApplication.getAppContext();
	```
	
- 取得螢幕長寬

	```
	DisplayMetrics dm = new DisplayMetrics();
	getWindowManager().getDefaultDisplay().getMetrics(dm);    
	int width = dm.widthPixels;    
	int height = dm.heightPixels;  
	```
- 使用 Adb 將檔案放到虛擬機中

	```
	# -p 顯示進度條 將目前資料夾中的 test.pdf 放到 連接裝置的指定目錄
	adb push -p  test.pdf /sdcard/test.pdf
	```	
