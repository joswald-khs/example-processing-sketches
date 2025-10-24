Table data = new Table();
int numberOfStations = 30;

// you could specify your column names to stave some typing. You could
//  also get clever and associate each column name with a data type and
//  range to make your wowrk even easier... 
// but you don't need to do this at all. 
String[] columnNames = {"timestamp","station id","temperature reading"};

for( String columnName : columnNames ) {
  data.addColumn(columnName);
}

// you can manually add the columns

//data.addColumn("timestamp");
//data.addColumn("station id");
//data.addColumn("temperature reading");
////...

// for 15 second collections... adjust the math for different intervales
int iterations = 4 * 60 * 24;

for( int i = 0; i < iterations; i++ ) {
  for( int j = 0; j < numberOfStations; j++ ) {
    // make sure to add data for each column
    TableRow r = data.addRow();
    
    //r.setFloat()
    //r.setInt()
    //populate data
  }
}

saveTable(data, "data.csv");
    
