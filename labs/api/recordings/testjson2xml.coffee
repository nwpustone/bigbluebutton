util = require './lib/util'

sampleXml = """
  <recording>
    <id>6e35e3b2778883f5db637d7a5dba0a427f692e91-1398363221956</id>
    <state>available</state>
    <published>true</published>
    <start_time>1398363223514</start_time>
    <end_time>1398363348994</end_time>
    <playback>
      <format>presentation</format>
      <link>http://example.com/playback/presentation/playback.html?meetingID=6e35e3b2778883f5db637d7a5dba0a427f692e91-1398363221956</link>
      <processing_time>5429</processing_time>
      <duration>101014</duration>
      <extension>
        <custom>... Any XML element, to be passed through into playback format element.</custom>
      </extension>
    </playback>
    <meta>
      <meetingId>English 101</meetingId>
      <meetingName>English 101</meetingName>
      <description>Test recording</description>
      <title>English 101</title>
    </meta>
  </recording>
"""

jsonObj = util.xml2json( sampleXml )

console.log(jsonObj)

jstr = util.json2xml(JSON.parse(jsonObj))

console.log(jstr)