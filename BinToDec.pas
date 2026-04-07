uses
  System,
  System.Text.RegularExpressions;
const 
  MAX_INT = Cardinal.MaxValue;
begin
  var nDecNum := 0;
	var nBinPower := 1;
	var nMaxBinaryLen := Math.Truncate(Math.Log(MAX_INT, 2));
	var oRegEx := new Regex('^[0-1]+$');
	Console.WriteLine('Input a binary number');
	var strLine := Console.ReadLine();
	var nStrLen := strLine.Length;
	var bIsMatch := oRegEx.IsMatch(strLine);
	var bRightString := (nStrLen <= nMaxBinaryLen) and bIsMatch;
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
	Console.WriteLine
	(
	  'The decenary equivalent of the binary number {0} is: {1}', 
	  strLine,
	  nDecNum
	);
	Console.Read();
end.
