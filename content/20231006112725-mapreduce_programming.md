---
Title: MapReduce Programming
date: 2023-10-06T02:52:21-04:00
---

Input: `cid name type dep_amt withdraw_amt`
output: `type total_withdraw`

```java
public static class MyMapper extends Mapper<LongWritable, Text, Text, Text> {
	private static Text key = new Text();
	private static Text value = new Text();
	
	public void map(LongWritable key, Text value, Context context) throws IOException, InterruptedException {
		String line = value.toString();
		String[] tok = line.split(" ", 0);
		key.set(tok[2]);
		value.set(tok[4]);
		context.write(key, value);
		}
}
```

```java
public static class MyReducer extends Reducer<Text, Text, Text, IntWritable> {
	public void reduce(Text key, Iterable<Text> values, Context context) throws IOException, InterruptedException {
		int sum = 0;
		int tmp;
		for(Text: values) {
			tmp = Integer.parseInt(values.toString());
			sum+=tmp
		}
		context.write(key, new IntWritable(sum));
	}

}
```