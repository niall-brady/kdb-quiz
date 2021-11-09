exitkw:`quit`qqq;
system"S ",string .z.i;
\c 2000 2000

\cd C:\q\customScripts\namespaceQuiz

/ List of namespaces
nsplst:`.Q`.z`.u

$[`:leaderboard ~ key `:leaderboard;lbd:get `:leaderboard;lbd:([sym:nsplst]highscore:(count nsplst)#0)];

show "Welcome to the quiz! type '",(string first exitkw),"' at any point to quit"
/ Choosing namespace
optns:ssr[raze string nsplst;".";"|."],"|";
1"Choose a namespace from this list ",optns,": ."; inp:first `$read0 0

/// Namespace Q&As ///
chosen:0b
nssyms:`$vs[" ";1_ssr[raze string nsplst;".";" "]]
\ .Q Namespace
if[inp~nssyms[0];
	qs:("IP address";"backtrace";"base 64 encode";"build vp";"fill HDB";"count partitioned table";"create empty nested char file";"partitions";"join symbols";"save table";"save table with symtable";"load process save";"enumerate varchar cols";"enumerate against domain";"format (2 arguments)";"parallel on cut";"append columns";"foreign key";"format (3 arguments)";"streaming algorithm (named pipes)";"streaming algorithm (from a file)";"streaming algorithm (3 arguments)";"apply simple";"apply unique";"garbage collect";"save tables";"HTTP get";"hostname";"HTTP post";"sanitize";"partitioned index";"encode binhex";"decode binhex";"encode base 36";"decode base 36";"version";"load";"long infinity";"maps partitions";"command parameters";"locate partition";"modified partition locations";"partition field";"partition counts";"partitioned tables";"modified partition values";"segments";"partition locations";"partition values";"is partitioned";"is table";"keywords";"plain text";"string backtrace";"SHA-1 encode";"extend trap";"time and space";"type";"date based";"value";"table to dict";"subview";"missing partitions";"memory stats";"non-command parameters";"create file";"Provides defaults and types for command line arguments parsed with .Q.opt.";"Where x is a date and y is an int, returns x plus y months.");
	ans:("addr";"bt";"btoa";"bv";"chk";"cn";"Cf";"D";"dd";"dpft";"dpfts";"dsftg";"en";"ens";"f";"fc";"ff";"fk";"fmt";"fps";"fs";"fsn";"ft";"fu";"gc";"hdpf";"hg";"host";"hp";"id";"ind";"j10";"x10";"j12";"x12";"k";"l";"M";"MAP";"opt";"par";"pd";"pf";"pn";"pt";"pv";"P";"PD";"PV";"qp";"qt";"res";"s";"sbt";"sha1";"trp";"ts";"ty";"u";"v";"V";"view";"vp";"w";"x";"Xf";"def";"addmonths");
	chosen:1b;
	prfx:".Q."
	]
\ .z Namespace
if[inp~nssyms[1];
	qs:("IP address";"port input";"HTTP auth from cookie";"HTTP options";"dependencies";"port open";"msg validator";"HTTP post";"cores";"qcon";"TLS connection status";"set";"failed primitive";"validate user";"action on exit";"quiet mode";"argument to failed primitive";"self";"file";"timer";"host";"user ID";"PID";"value set";"version";"handles";"release date";"handle";"license";"websocket close";"local timespan";"websocket open";"UTC timespan";"websockets";"OS version";"raw command line";"local timestamp";"argv";"UTC timestamp";"local datetime";"port close";"UTC datetime";"peach handles";"zip defaults";"port get";"local date";"UTC date";"local time";"UTC time";"HTTP get");
	ans:("a";"pi";"ac";"pm";"b";"po";"bm";"pp";"c";"pq";"e";"ps";"ex";"pw";"exit";"q";"ey";"s";"f";"ts";"h";"u";"i";"vs";"K";"W";"k";"w";"l";"wc";"N";"wo";"n";"ws";"o";"X";"P";"x";"p";"Z";"pc";"z";"pd";"zd";"pg";"D";"d";"T";"t";"ph");
	chosen:1b;
	prfx:".z."
	]
\ .u Namespace
if [inp~nssyms[2];
	qs:("creates .u.w and .u.t.";"tables that exist.";"dictionary of tables and (handle;subscribed syms).";"current date.";"log file handle.";"log file directory/location.";"log file message count pushed to subscribers.";"total message count (+ messages in TP buffer) recieved from feed and written to log file.";"Checks if there is a file of the form \\`:./sym2017.10.25; if there isn't create it and save to disk; set .u.i and .u.j equal to the number of counts in log file (will be set to zero if doesn't exist). Then next part checks if the log file is corrupt, and exits if it is. If it is ok it opens a handle to the log file (.u.l).";"This is the message sent from TP to its subscribers at end of day and tells subscribers to call their own .u.end functions.";"Publish updates to subscribers in timed loop. Checks if argument is greater than .u.d; if it is call .u.endofday; also does check to see ifargument minus one is still greater than .u.d; if it is throws a warning as this would mean a day's data is missing.";"deletes handle from .u.w when connection closed";"select syms given or if \\`, then select all syms.";"checks if current handle in .u.w, if not it is added into .u.w dictionary.";"[tablename;tableData], accepts two arguments, for inserting data to a named table. This function will normally be called from a feedhandler. It takes the tableData, adds a time column if one is present, inserts it into the in-memory table, appends to the log file and finally increases the log file counter (.u.i)";"[tablename;list of syms], when client subscribes they call this function with table and sym list as arguments. This function then adds the process handle to subscription list .u.w and returns a two element list of the name of table they subscribed to and the data. The subscriber will then beupdated via the pub function.";"Publishes data to each of the connection handles in .u.w; uses .u.sel to compare to what subscriber wants and sends async message to the subscriber, publishing to clients the tables and symbols they subscribed to. Uses the connection handles to call client upd functions.";"calls .u.end[.u.d]; this tells each subscriber to call their own specific .u.end function. Increment .u.d by 1; if a handle to the log file exists; close it and open a new one for the next day.";"Calls .u.init defined in u.q (this sets .u.t equal to be the list of table names defined in sym.q and creates an empty dictionary with each of the table names as keys. If the first two columns in each table aren't time and sym throw an error (\\`timesym). Apply g attribute to sym column in each tables. Set .u.d equal to today's date. Set .u.l equal to count of second input parameter; if not 0 set .u.L equal to \\`:y/src/10#., where y is second input parameter and src is first (sym if not supplied); .e.g running q tick.q sym . would set .u.L as \\`:./sym.......... Set .u.l = .u.ld[.u.d].");
	ans:("init";"t";"w";"d";"l";"L";"i";"j";"ld";"end";"ts";"del";"sel";"add";"upd";"sub";"pub";"endofday";"tick");
	chosen:1b;
	prfx:".u."
	]

/// Functions ///
qtn:{[qs;randnum]show "> What is the command for: ",`char$first qs[randnum],"?"}
rans:{[score]show "CORRECT! Score is now: [",(string score+1),"]";:score+1} / Right Answer
/ Wrong Answer
wans:{[inp;ans;randnum;score;prfx;exitkw]
	$[any inp=exitkw;
		show "Quitting...";
		show "WRONG! Correct answer was: ",prfx,`char$first ans[randnum]
		];
	:0
	}

/// Main loop ///
if[chosen;
	hscore:first exec highscore from lbd where sym=`$-1_prfx;
	show 1 0#`;
	score:0;
	while[all exitkw<>inp;
		randnum:1?count qs;
		qtn[qs;randnum];
		1">> ",prfx;
		inp: `$read0 0;
		show 1 0#`;
		$[inp~`$first ans[randnum];
			score: rans[score];
			score: wans[inp;ans;randnum;score;prfx;exitkw]
			];
		hscore:max score,hscore;
		if[all inp<>exitkw;show "Highscore: ",string hscore];
		show 8 0#`;
		
		/ Updating lbd
		`lbd upsert (sym:`$-1_prfx),highscore:hscore;
		/ Saving to leaderboard file
		`:leaderboard set lbd;
		];
	]
	
exit 0
