const main=()=>{
	loadClients();
	loadKarts();
	loadTipusKarts();	
}

const loadTipusKarts=()=>{
	fetch("./tkart?action=list");
}

const loadKarts=()=>{
	fetch("./kart?action=list");
}

const loadClients=()=>{
	fetch("./client?action=list");
}

main();