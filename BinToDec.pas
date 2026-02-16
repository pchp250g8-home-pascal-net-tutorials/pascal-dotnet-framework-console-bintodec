uses
  System,
  System.Text.RegularExpressions;
begin
  var nDecNum := 0;
	var nBinPower := 1;
	var nMaxBinaryLen := Math.Truncate(Math.Log(Cardinal.MaxValue, 2));
	var oRegEx := new Regex('[0-1]');
	Console.WriteLine('Input a binary number');
	var strLine := Console.ReadLine();
	var nStrLen := strLine.Length;
	var nMatches := oRegEx.Matches(strLine).Count;
	var bRightString := (nStrLen <= nMaxBinaryLen) and (nStrLen = nMatches);
	if not bRightString then
  begin
		Console.WriteLine('Wrong binary number format!!!');
		Console.Read();
		exit();
	end;
	for var i : integer := 1 to nStrLen do
  begin
		var nBinDight : integer := ord(strLine[nStrLen + 1 - i]) - ord('0');
		nDecNum += (nBinDight * nBinPower);
		nBinPower *= 2;
	end;
	WriteLn
	(
	  'The decenary equivalent of the binary number ', strLine, ' is: ',
	  nDecNum
	);
	Console.Read();
end.