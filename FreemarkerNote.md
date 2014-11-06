# FreeMarker筆記


- 如果有特殊符號的顯示方式 ${r"#{updater}"} 
  結果為 #{updater}
- 自定變數的方法 `￼<#assign tableName =schema?lower_case +"."+classname?lower_case> `      schema和classname 是欄位名稱
