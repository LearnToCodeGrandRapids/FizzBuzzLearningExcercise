<?
echo "Input a number to play fizz buzz to.\n";
$line = trim(fgets(STDIN)); // reads one line from STDIN
fscanf(STDIN, "%d\n", $number); // reads number from STDIN

while($i++<$number){
	if (is_multiple_of_both($i))
	{
		echo 'FizzBuzz';
	}
	else if (is_multiple_of_3($i))
	{
		echo 'Fizz';
	}
	else if (is_multiple_of_5($i))
	{
		echo 'Buzz';
	}
	else
	{
		echo $i;
	}
	echo "\n";
}

function is_multiple_of_3($i)
{
	return $i % 3 == 0;
}
function is_multiple_of_5($i)
{
	return $i % 5 == 0;
}
function is_multiple_of_both($i)
{
	return is_multiple_of_5($i) and is_multiple_of_3($i);
}

?>