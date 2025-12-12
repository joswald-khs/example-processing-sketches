// Create an empty table
Table data = new Table();

int numberOfStations = 30;
// for 15 second collections... adjust the math for different intervales
int iterations = 60 * 24; // per day

// you could specify your column names to stave some typing. You could
//  also get clever and associate each column name with a data type and
//  range to make your work even easier... 
// but you don't need to do this at all. 
String[] columnNames = {"timestamp","station id","temperature reading","humidity"};

// Perlin noise values 
//   we need an array for each column of data we are generating
float[] tempNoiseValues = new float[numberOfStations];
float[] humidityNoiseValues = new float[numberOfStations];

for( int i = 0; i < numberOfStations; i++ ) {
  tempNoiseValues[i] = random(10000);
  humidityNoiseValues[i] = random(10000);
}


// Add columns to the table
//   you can manually add the columns
//data.addColumn("timestamp");
//data.addColumn("station id");
//data.addColumn("temperature reading");
//   or you can use the array above

for( String columnName : columnNames ) {
  data.addColumn(columnName);
}

for( int i = 0; i < iterations; i++ ) {
  for( int j = 0; j < numberOfStations; j++ ) {
    // make sure to add data for each column
    TableRow newRow = data.addRow();
    //{"timestamp","station id","temperature reading","humidity"};
    newRow.setInt("timestamp", i);
    newRow.setInt("station id", j);    
    float temp = map(noise(tempNoiseValues[j]),0,1,60,80);
    tempNoiseValues[j] += 0.01;
    newRow.setFloat("temperature reading",temp);
    int humidity = int(map(noise(humidityNoiseValues[j]),0,1,20,70));
    humidityNoiseValues[j] += 0.01;    
    newRow.setInt("humidity",humidity);
    //r.setInt()
    //populate data
  }
}

saveTable(data, "data.csv");
