const main=()=>{
	loadClients();
	loadKarts();
	loadTipusKarts();
	loadCliKart();	
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

const loadCliKart=()=>{
	fetch("./clikar?action=list");
}

main();