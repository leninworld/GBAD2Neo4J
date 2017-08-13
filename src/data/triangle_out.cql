CREATE (n1:XP1 {id:"1XP1", name:"Integrity"});
CREATE (n1:XP1 {id:"2XP1", name:"Intelligent"});
CREATE (n1:XP1 {id:"3XP1", name:"Energy"});
MATCH (n1:XP1 {id:"1XP1"}),(n2:XP1 {id:"2XP1"}) CREATE (n1)-[:with]->(n2);
MATCH (n1:XP1 {id:"2XP1"}),(n2:XP1 {id:"3XP1"}) CREATE (n1)-[:with]->(n2);
MATCH (n1:XP1 {id:"3XP1"}),(n2:XP1 {id:"1XP1"}) CREATE (n1)-[:with]->(n2);
