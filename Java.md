# Java 筆記

- 用 entrySet 比 keyset 好, 因為 keyset 使用 map.get(key) ，會在重新掃一次物件內所有值，所以直接用 entrySet 可以取到值但不用在重新去找。

keyset

```java

for (String key : testMap.keySet()) {
    testMap.get(key);
}
```

entrySet (比較好)

```java

for (Map.Entry<String,Integer> entry : testMap.entrySet()) {
    entry.getKey();
    entry.getValue();
}
```