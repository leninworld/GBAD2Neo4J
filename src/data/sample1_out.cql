CREATE (n1:XP1 {id:"1XP1", name:"20152930032938-338"});
CREATE (n1:XP1 {id:"2XP1", name:"1"});
MATCH (n1:XP1 {id:"1XP1"}),(n2:XP1 {id:"2XP1"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP1 {id:"3XP1", name:"entrance3"});
CREATE (n1:XP1 {id:"4XP1", name:"Saturday"});
MATCH (n1:XP1 {id:"2XP1"}),(n2:XP1 {id:"3XP1"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP1 {id:"3XP1"}),(n2:XP1 {id:"4XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"5XP1", name:"general-gate1"});
CREATE (n1:XP1 {id:"6XP1", name:"Saturday"});
MATCH (n1:XP1 {id:"3XP1"}),(n2:XP1 {id:"5XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"5XP1"}),(n2:XP1 {id:"6XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"7XP1", name:"ranger-stop2"});
CREATE (n1:XP1 {id:"8XP1", name:"Saturday"});
MATCH (n1:XP1 {id:"5XP1"}),(n2:XP1 {id:"7XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"7XP1"}),(n2:XP1 {id:"8XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"9XP1", name:"ranger-stop0"});
CREATE (n1:XP1 {id:"10XP1", name:"Saturday"});
MATCH (n1:XP1 {id:"7XP1"}),(n2:XP1 {id:"9XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"9XP1"}),(n2:XP1 {id:"10XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"11XP1", name:"general-gate2"});
CREATE (n1:XP1 {id:"12XP1", name:"Saturday"});
MATCH (n1:XP1 {id:"9XP1"}),(n2:XP1 {id:"11XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"11XP1"}),(n2:XP1 {id:"12XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"13XP1", name:"camping8"});
CREATE (n1:XP1 {id:"14XP1", name:"Saturday"});
MATCH (n1:XP1 {id:"11XP1"}),(n2:XP1 {id:"13XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"13XP1"}),(n2:XP1 {id:"14XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"15XP1", name:"camping8"});
CREATE (n1:XP1 {id:"16XP1", name:"Tuesday"});
MATCH (n1:XP1 {id:"13XP1"}),(n2:XP1 {id:"15XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"15XP1"}),(n2:XP1 {id:"16XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"17XP1", name:"general-gate2"});
CREATE (n1:XP1 {id:"18XP1", name:"Tuesday"});
MATCH (n1:XP1 {id:"15XP1"}),(n2:XP1 {id:"17XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"17XP1"}),(n2:XP1 {id:"18XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"19XP1", name:"ranger-stop0"});
CREATE (n1:XP1 {id:"20XP1", name:"Tuesday"});
MATCH (n1:XP1 {id:"17XP1"}),(n2:XP1 {id:"19XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"19XP1"}),(n2:XP1 {id:"20XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"21XP1", name:"ranger-stop2"});
CREATE (n1:XP1 {id:"22XP1", name:"Tuesday"});
MATCH (n1:XP1 {id:"19XP1"}),(n2:XP1 {id:"21XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"21XP1"}),(n2:XP1 {id:"22XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"23XP1", name:"general-gate1"});
CREATE (n1:XP1 {id:"24XP1", name:"Tuesday"});
MATCH (n1:XP1 {id:"21XP1"}),(n2:XP1 {id:"23XP1"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP1 {id:"23XP1"}),(n2:XP1 {id:"24XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"25XP1", name:"entrance3"});
CREATE (n1:XP1 {id:"26XP1", name:"Tuesday"});
MATCH (n1:XP1 {id:"23XP1"}),(n2:XP1 {id:"25XP1"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP1 {id:"25XP1"}),(n2:XP1 {id:"26XP1"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP1 {id:"1XP1", name:"20153118013100-425"});
CREATE (n1:XP2 {id:"2XP2", name:"2"});
MATCH (n1:XP2 {id:"1XP2"}),(n2:XP2 {id:"2XP2"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP2 {id:"3XP2", name:"entrance2"});
CREATE (n1:XP2 {id:"4XP2", name:"Saturday"});
MATCH (n1:XP2 {id:"2XP2"}),(n2:XP2 {id:"3XP2"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP2 {id:"3XP2"}),(n2:XP2 {id:"4XP2"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP2 {id:"5XP2", name:"general-gate6"});
CREATE (n1:XP2 {id:"6XP2", name:"Saturday"});
MATCH (n1:XP2 {id:"3XP2"}),(n2:XP2 {id:"5XP2"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP2 {id:"5XP2"}),(n2:XP2 {id:"6XP2"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP2 {id:"7XP2", name:"camping7"});
CREATE (n1:XP2 {id:"8XP2", name:"Saturday"});
MATCH (n1:XP2 {id:"5XP2"}),(n2:XP2 {id:"7XP2"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP2 {id:"7XP2"}),(n2:XP2 {id:"8XP2"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP2 {id:"9XP2", name:"camping7"});
CREATE (n1:XP2 {id:"10XP2", name:"Tuesday"});
MATCH (n1:XP2 {id:"7XP2"}),(n2:XP2 {id:"9XP2"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP2 {id:"9XP2"}),(n2:XP2 {id:"10XP2"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP2 {id:"11XP2", name:"general-gate6"});
CREATE (n1:XP2 {id:"12XP2", name:"Tuesday"});
MATCH (n1:XP2 {id:"9XP2"}),(n2:XP2 {id:"11XP2"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP2 {id:"11XP2"}),(n2:XP2 {id:"12XP2"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP2 {id:"13XP2", name:"entrance2"});
CREATE (n1:XP2 {id:"14XP2", name:"Tuesday"});
MATCH (n1:XP2 {id:"11XP2"}),(n2:XP2 {id:"13XP2"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP2 {id:"13XP2"}),(n2:XP2 {id:"14XP2"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"1XP3", name:"20150909100908-893"});
CREATE (n1:XP3 {id:"2XP3", name:"1"});
MATCH (n1:XP3 {id:"1XP3"}),(n2:XP3 {id:"2XP3"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP3 {id:"3XP3", name:"entrance4"});
CREATE (n1:XP3 {id:"4XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"2XP3"}),(n2:XP3 {id:"3XP3"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP3 {id:"3XP3"}),(n2:XP3 {id:"4XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"5XP3", name:"general-gate5"});
CREATE (n1:XP3 {id:"6XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"3XP3"}),(n2:XP3 {id:"5XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"5XP3"}),(n2:XP3 {id:"6XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"7XP3", name:"general-gate2"});
CREATE (n1:XP3 {id:"8XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"5XP3"}),(n2:XP3 {id:"7XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"7XP3"}),(n2:XP3 {id:"8XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"9XP3", name:"ranger-stop0"});
CREATE (n1:XP3 {id:"10XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"7XP3"}),(n2:XP3 {id:"9XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"9XP3"}),(n2:XP3 {id:"10XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"11XP3", name:"ranger-stop2"});
CREATE (n1:XP3 {id:"12XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"9XP3"}),(n2:XP3 {id:"11XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"11XP3"}),(n2:XP3 {id:"12XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"13XP3", name:"general-gate1"});
CREATE (n1:XP3 {id:"14XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"11XP3"}),(n2:XP3 {id:"13XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"13XP3"}),(n2:XP3 {id:"14XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"15XP3", name:"general-gate4"});
CREATE (n1:XP3 {id:"16XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"13XP3"}),(n2:XP3 {id:"15XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"15XP3"}),(n2:XP3 {id:"16XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"17XP3", name:"general-gate7"});
CREATE (n1:XP3 {id:"18XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"15XP3"}),(n2:XP3 {id:"17XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"17XP3"}),(n2:XP3 {id:"18XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"19XP3", name:"camping5"});
CREATE (n1:XP3 {id:"20XP3", name:"Sunday"});
MATCH (n1:XP3 {id:"17XP3"}),(n2:XP3 {id:"19XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"19XP3"}),(n2:XP3 {id:"20XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"21XP3", name:"camping5"});
CREATE (n1:XP3 {id:"22XP3", name:"Monday"});
MATCH (n1:XP3 {id:"19XP3"}),(n2:XP3 {id:"21XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"21XP3"}),(n2:XP3 {id:"22XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"23XP3", name:"general-gate7"});
CREATE (n1:XP3 {id:"24XP3", name:"Monday"});
MATCH (n1:XP3 {id:"21XP3"}),(n2:XP3 {id:"23XP3"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP3 {id:"23XP3"}),(n2:XP3 {id:"24XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP3 {id:"25XP3", name:"entrance3"});
CREATE (n1:XP3 {id:"26XP3", name:"Monday"});
MATCH (n1:XP3 {id:"23XP3"}),(n2:XP3 {id:"25XP3"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP3 {id:"25XP3"}),(n2:XP3 {id:"26XP3"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP4 {id:"1XP4", name:"20153824023844-286"});
CREATE (n1:XP4 {id:"2XP4", name:"1"});
MATCH (n1:XP4 {id:"1XP4"}),(n2:XP4 {id:"2XP4"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP4 {id:"3XP4", name:"entrance0"});
CREATE (n1:XP4 {id:"4XP4", name:"Thursday"});
MATCH (n1:XP4 {id:"2XP4"}),(n2:XP4 {id:"3XP4"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP4 {id:"3XP4"}),(n2:XP4 {id:"4XP4"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP4 {id:"5XP4", name:"entrance3"});
CREATE (n1:XP4 {id:"6XP4", name:"Thursday"});
MATCH (n1:XP4 {id:"3XP4"}),(n2:XP4 {id:"5XP4"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP4 {id:"5XP4"}),(n2:XP4 {id:"6XP4"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP5 {id:"1XP5", name:"20153111063125-468"});
CREATE (n1:XP5 {id:"2XP5", name:"2"});
MATCH (n1:XP5 {id:"1XP5"}),(n2:XP5 {id:"2XP5"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP5 {id:"3XP5", name:"entrance1"});
CREATE (n1:XP5 {id:"4XP5", name:"Saturday"});
MATCH (n1:XP5 {id:"2XP5"}),(n2:XP5 {id:"3XP5"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP5 {id:"3XP5"}),(n2:XP5 {id:"4XP5"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP5 {id:"5XP5", name:"general-gate7"});
CREATE (n1:XP5 {id:"6XP5", name:"Saturday"});
MATCH (n1:XP5 {id:"3XP5"}),(n2:XP5 {id:"5XP5"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP5 {id:"5XP5"}),(n2:XP5 {id:"6XP5"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP5 {id:"7XP5", name:"camping5"});
CREATE (n1:XP5 {id:"8XP5", name:"Saturday"});
MATCH (n1:XP5 {id:"5XP5"}),(n2:XP5 {id:"7XP5"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP5 {id:"7XP5"}),(n2:XP5 {id:"8XP5"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP5 {id:"9XP5", name:"camping5"});
CREATE (n1:XP5 {id:"10XP5", name:"Monday"});
MATCH (n1:XP5 {id:"7XP5"}),(n2:XP5 {id:"9XP5"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP5 {id:"9XP5"}),(n2:XP5 {id:"10XP5"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP5 {id:"11XP5", name:"general-gate7"});
CREATE (n1:XP5 {id:"12XP5", name:"Monday"});
MATCH (n1:XP5 {id:"9XP5"}),(n2:XP5 {id:"11XP5"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP5 {id:"11XP5"}),(n2:XP5 {id:"12XP5"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP5 {id:"13XP5", name:"entrance3"});
CREATE (n1:XP5 {id:"14XP5", name:"Monday"});
MATCH (n1:XP5 {id:"11XP5"}),(n2:XP5 {id:"13XP5"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP5 {id:"13XP5"}),(n2:XP5 {id:"14XP5"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP6 {id:"1XP6", name:"20154502084548-823"});
CREATE (n1:XP6 {id:"2XP6", name:"3"});
MATCH (n1:XP6 {id:"1XP6"}),(n2:XP6 {id:"2XP6"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP6 {id:"3XP6", name:"entrance1"});
CREATE (n1:XP6 {id:"4XP6", name:"Sunday"});
MATCH (n1:XP6 {id:"2XP6"}),(n2:XP6 {id:"3XP6"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP6 {id:"3XP6"}),(n2:XP6 {id:"4XP6"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP6 {id:"5XP6", name:"camping0"});
CREATE (n1:XP6 {id:"6XP6", name:"Sunday"});
MATCH (n1:XP6 {id:"3XP6"}),(n2:XP6 {id:"5XP6"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP6 {id:"5XP6"}),(n2:XP6 {id:"6XP6"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP6 {id:"7XP6", name:"camping0"});
CREATE (n1:XP6 {id:"8XP6", name:"Monday"});
MATCH (n1:XP6 {id:"5XP6"}),(n2:XP6 {id:"7XP6"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP6 {id:"7XP6"}),(n2:XP6 {id:"8XP6"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP6 {id:"9XP6", name:"general-gate7"});
CREATE (n1:XP6 {id:"10XP6", name:"Monday"});
MATCH (n1:XP6 {id:"7XP6"}),(n2:XP6 {id:"9XP6"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP6 {id:"9XP6"}),(n2:XP6 {id:"10XP6"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP6 {id:"11XP6", name:"general-gate4"});
CREATE (n1:XP6 {id:"12XP6", name:"Monday"});
MATCH (n1:XP6 {id:"9XP6"}),(n2:XP6 {id:"11XP6"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP6 {id:"11XP6"}),(n2:XP6 {id:"12XP6"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP6 {id:"13XP6", name:"entrance0"});
CREATE (n1:XP6 {id:"14XP6", name:"Monday"});
MATCH (n1:XP6 {id:"11XP6"}),(n2:XP6 {id:"13XP6"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP6 {id:"13XP6"}),(n2:XP6 {id:"14XP6"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"1XP7", name:"20155924055911-559"});
CREATE (n1:XP7 {id:"2XP7", name:"1"});
MATCH (n1:XP7 {id:"1XP7"}),(n2:XP7 {id:"2XP7"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP7 {id:"3XP7", name:"entrance1"});
CREATE (n1:XP7 {id:"4XP7", name:"Monday"});
MATCH (n1:XP7 {id:"2XP7"}),(n2:XP7 {id:"3XP7"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP7 {id:"3XP7"}),(n2:XP7 {id:"4XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"5XP7", name:"camping3"});
CREATE (n1:XP7 {id:"6XP7", name:"Monday"});
MATCH (n1:XP7 {id:"3XP7"}),(n2:XP7 {id:"5XP7"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP7 {id:"5XP7"}),(n2:XP7 {id:"6XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"7XP7", name:"camping3"});
CREATE (n1:XP7 {id:"8XP7", name:"Thursday"});
MATCH (n1:XP7 {id:"5XP7"}),(n2:XP7 {id:"7XP7"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP7 {id:"7XP7"}),(n2:XP7 {id:"8XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"9XP7", name:"general-gate7"});
CREATE (n1:XP7 {id:"10XP7", name:"Thursday"});
MATCH (n1:XP7 {id:"7XP7"}),(n2:XP7 {id:"9XP7"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP7 {id:"9XP7"}),(n2:XP7 {id:"10XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"11XP7", name:"general-gate4"});
CREATE (n1:XP7 {id:"12XP7", name:"Thursday"});
MATCH (n1:XP7 {id:"9XP7"}),(n2:XP7 {id:"11XP7"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP7 {id:"11XP7"}),(n2:XP7 {id:"12XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"13XP7", name:"general-gate1"});
CREATE (n1:XP7 {id:"14XP7", name:"Thursday"});
MATCH (n1:XP7 {id:"11XP7"}),(n2:XP7 {id:"13XP7"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP7 {id:"13XP7"}),(n2:XP7 {id:"14XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"15XP7", name:"ranger-stop2"});
CREATE (n1:XP7 {id:"16XP7", name:"Thursday"});
MATCH (n1:XP7 {id:"13XP7"}),(n2:XP7 {id:"15XP7"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP7 {id:"15XP7"}),(n2:XP7 {id:"16XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"17XP7", name:"ranger-stop0"});
CREATE (n1:XP7 {id:"18XP7", name:"Thursday"});
MATCH (n1:XP7 {id:"15XP7"}),(n2:XP7 {id:"17XP7"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP7 {id:"17XP7"}),(n2:XP7 {id:"18XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"19XP7", name:"general-gate2"});
CREATE (n1:XP7 {id:"20XP7", name:"Thursday"});
MATCH (n1:XP7 {id:"17XP7"}),(n2:XP7 {id:"19XP7"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP7 {id:"19XP7"}),(n2:XP7 {id:"20XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP7 {id:"21XP7", name:"entrance2"});
CREATE (n1:XP7 {id:"22XP7", name:"Thursday"});
MATCH (n1:XP7 {id:"19XP7"}),(n2:XP7 {id:"21XP7"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP7 {id:"21XP7"}),(n2:XP7 {id:"22XP7"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"1XP8", name:"20150229070248-397"});
CREATE (n1:XP8 {id:"2XP8", name:"1"});
MATCH (n1:XP8 {id:"1XP8"}),(n2:XP8 {id:"2XP8"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP8 {id:"3XP8", name:"entrance3"});
CREATE (n1:XP8 {id:"4XP8", name:"Saturday"});
MATCH (n1:XP8 {id:"2XP8"}),(n2:XP8 {id:"3XP8"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP8 {id:"3XP8"}),(n2:XP8 {id:"4XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"5XP8", name:"general-gate7"});
CREATE (n1:XP8 {id:"6XP8", name:"Saturday"});
MATCH (n1:XP8 {id:"3XP8"}),(n2:XP8 {id:"5XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"5XP8"}),(n2:XP8 {id:"6XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"7XP8", name:"camping4"});
CREATE (n1:XP8 {id:"8XP8", name:"Saturday"});
MATCH (n1:XP8 {id:"5XP8"}),(n2:XP8 {id:"7XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"7XP8"}),(n2:XP8 {id:"8XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"9XP8", name:"camping4"});
CREATE (n1:XP8 {id:"10XP8", name:"Tuesday"});
MATCH (n1:XP8 {id:"7XP8"}),(n2:XP8 {id:"9XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"9XP8"}),(n2:XP8 {id:"10XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"11XP8", name:"general-gate7"});
CREATE (n1:XP8 {id:"12XP8", name:"Tuesday"});
MATCH (n1:XP8 {id:"9XP8"}),(n2:XP8 {id:"11XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"11XP8"}),(n2:XP8 {id:"12XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"13XP8", name:"general-gate4"});
CREATE (n1:XP8 {id:"14XP8", name:"Tuesday"});
MATCH (n1:XP8 {id:"11XP8"}),(n2:XP8 {id:"13XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"13XP8"}),(n2:XP8 {id:"14XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"15XP8", name:"general-gate1"});
CREATE (n1:XP8 {id:"16XP8", name:"Tuesday"});
MATCH (n1:XP8 {id:"13XP8"}),(n2:XP8 {id:"15XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"15XP8"}),(n2:XP8 {id:"16XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"17XP8", name:"ranger-stop2"});
CREATE (n1:XP8 {id:"18XP8", name:"Tuesday"});
MATCH (n1:XP8 {id:"15XP8"}),(n2:XP8 {id:"17XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"17XP8"}),(n2:XP8 {id:"18XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"19XP8", name:"ranger-stop0"});
CREATE (n1:XP8 {id:"20XP8", name:"Tuesday"});
MATCH (n1:XP8 {id:"17XP8"}),(n2:XP8 {id:"19XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"19XP8"}),(n2:XP8 {id:"20XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"21XP8", name:"general-gate2"});
CREATE (n1:XP8 {id:"22XP8", name:"Tuesday"});
MATCH (n1:XP8 {id:"19XP8"}),(n2:XP8 {id:"21XP8"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP8 {id:"21XP8"}),(n2:XP8 {id:"22XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP8 {id:"23XP8", name:"entrance2"});
CREATE (n1:XP8 {id:"24XP8", name:"Tuesday"});
MATCH (n1:XP8 {id:"21XP8"}),(n2:XP8 {id:"23XP8"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP8 {id:"23XP8"}),(n2:XP8 {id:"24XP8"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP9 {id:"1XP9", name:"20150831070819-751"});
CREATE (n1:XP9 {id:"2XP9", name:"2"});
MATCH (n1:XP9 {id:"1XP9"}),(n2:XP9 {id:"2XP9"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP9 {id:"3XP9", name:"entrance3"});
CREATE (n1:XP9 {id:"4XP9", name:"Sunday"});
MATCH (n1:XP9 {id:"2XP9"}),(n2:XP9 {id:"3XP9"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP9 {id:"3XP9"}),(n2:XP9 {id:"4XP9"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP9 {id:"5XP9", name:"general-gate1"});
CREATE (n1:XP9 {id:"6XP9", name:"Sunday"});
MATCH (n1:XP9 {id:"3XP9"}),(n2:XP9 {id:"5XP9"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP9 {id:"5XP9"}),(n2:XP9 {id:"6XP9"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP9 {id:"7XP9", name:"ranger-stop2"});
CREATE (n1:XP9 {id:"8XP9", name:"Sunday"});
MATCH (n1:XP9 {id:"5XP9"}),(n2:XP9 {id:"7XP9"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP9 {id:"7XP9"}),(n2:XP9 {id:"8XP9"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP9 {id:"9XP9", name:"ranger-stop0"});
CREATE (n1:XP9 {id:"10XP9", name:"Sunday"});
MATCH (n1:XP9 {id:"7XP9"}),(n2:XP9 {id:"9XP9"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP9 {id:"9XP9"}),(n2:XP9 {id:"10XP9"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP9 {id:"11XP9", name:"general-gate2"});
CREATE (n1:XP9 {id:"12XP9", name:"Sunday"});
MATCH (n1:XP9 {id:"9XP9"}),(n2:XP9 {id:"11XP9"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP9 {id:"11XP9"}),(n2:XP9 {id:"12XP9"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP9 {id:"13XP9", name:"general-gate5"});
CREATE (n1:XP9 {id:"14XP9", name:"Sunday"});
MATCH (n1:XP9 {id:"11XP9"}),(n2:XP9 {id:"13XP9"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP9 {id:"13XP9"}),(n2:XP9 {id:"14XP9"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP9 {id:"15XP9", name:"entrance4"});
CREATE (n1:XP9 {id:"16XP9", name:"Sunday"});
MATCH (n1:XP9 {id:"13XP9"}),(n2:XP9 {id:"15XP9"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP9 {id:"15XP9"}),(n2:XP9 {id:"16XP9"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"1XP10", name:"20155525065551-662"});
CREATE (n1:XP10 {id:"2XP10", name:"1"});
MATCH (n1:XP10 {id:"1XP10"}),(n2:XP10 {id:"2XP10"}) CREATE (n1)-[:type]->(n2);
CREATE (n1:XP10 {id:"3XP10", name:"entrance1"});
CREATE (n1:XP10 {id:"4XP10", name:"Saturday"});
MATCH (n1:XP10 {id:"2XP10"}),(n2:XP10 {id:"3XP10"}) CREATE (n1)-[:StartAt]->(n2);
MATCH (n1:XP10 {id:"3XP10"}),(n2:XP10 {id:"4XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"5XP10", name:"general-gate7"});
CREATE (n1:XP10 {id:"6XP10", name:"Saturday"});
MATCH (n1:XP10 {id:"3XP10"}),(n2:XP10 {id:"5XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"5XP10"}),(n2:XP10 {id:"6XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"7XP10", name:"general-gate4"});
CREATE (n1:XP10 {id:"8XP10", name:"Saturday"});
MATCH (n1:XP10 {id:"5XP10"}),(n2:XP10 {id:"7XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"7XP10"}),(n2:XP10 {id:"8XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"9XP10", name:"general-gate1"});
CREATE (n1:XP10 {id:"10XP10", name:"Saturday"});
MATCH (n1:XP10 {id:"7XP10"}),(n2:XP10 {id:"9XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"9XP10"}),(n2:XP10 {id:"10XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"11XP10", name:"ranger-stop2"});
CREATE (n1:XP10 {id:"12XP10", name:"Saturday"});
MATCH (n1:XP10 {id:"9XP10"}),(n2:XP10 {id:"11XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"11XP10"}),(n2:XP10 {id:"12XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"13XP10", name:"ranger-stop0"});
CREATE (n1:XP10 {id:"14XP10", name:"Saturday"});
MATCH (n1:XP10 {id:"11XP10"}),(n2:XP10 {id:"13XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"13XP10"}),(n2:XP10 {id:"14XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"15XP10", name:"general-gate2"});
CREATE (n1:XP10 {id:"16XP10", name:"Saturday"});
MATCH (n1:XP10 {id:"13XP10"}),(n2:XP10 {id:"15XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"15XP10"}),(n2:XP10 {id:"16XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"17XP10", name:"camping8"});
CREATE (n1:XP10 {id:"18XP10", name:"Saturday"});
MATCH (n1:XP10 {id:"15XP10"}),(n2:XP10 {id:"17XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"17XP10"}),(n2:XP10 {id:"18XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"19XP10", name:"camping8"});
CREATE (n1:XP10 {id:"20XP10", name:"Monday"});
MATCH (n1:XP10 {id:"17XP10"}),(n2:XP10 {id:"19XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"19XP10"}),(n2:XP10 {id:"20XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"21XP10", name:"general-gate2"});
CREATE (n1:XP10 {id:"22XP10", name:"Monday"});
MATCH (n1:XP10 {id:"19XP10"}),(n2:XP10 {id:"21XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"21XP10"}),(n2:XP10 {id:"22XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"23XP10", name:"ranger-stop0"});
CREATE (n1:XP10 {id:"24XP10", name:"Monday"});
MATCH (n1:XP10 {id:"21XP10"}),(n2:XP10 {id:"23XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"23XP10"}),(n2:XP10 {id:"24XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"25XP10", name:"ranger-stop2"});
CREATE (n1:XP10 {id:"26XP10", name:"Monday"});
MATCH (n1:XP10 {id:"23XP10"}),(n2:XP10 {id:"25XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"25XP10"}),(n2:XP10 {id:"26XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"27XP10", name:"general-gate1"});
CREATE (n1:XP10 {id:"28XP10", name:"Monday"});
MATCH (n1:XP10 {id:"25XP10"}),(n2:XP10 {id:"27XP10"}) CREATE (n1)-[:MovedTo]->(n2);
MATCH (n1:XP10 {id:"27XP10"}),(n2:XP10 {id:"28XP10"}) CREATE (n1)-[:Day]->(n2);
CREATE (n1:XP10 {id:"29XP10", name:"entrance0"});
CREATE (n1:XP10 {id:"30XP10", name:"Monday"});
MATCH (n1:XP10 {id:"27XP10"}),(n2:XP10 {id:"29XP10"}) CREATE (n1)-[:LastAt]->(n2);
MATCH (n1:XP10 {id:"29XP10"}),(n2:XP10 {id:"30XP10"}) CREATE (n1)-[:Day]->(n2);
MATCH (n1:XP10 {id:"29XP10"}),(n2:XP10 {id:"30XP10"}) CREATE (n1)-[:Day]->(n2);
