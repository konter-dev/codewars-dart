/**
 * (8 kyu) Well of Ideas - Easy Version
 * https://www.codewars.com/kata/57f222ce69e09c3630000212
 * For every good kata idea there seem to be quite a few bad ones!
 *
 * In this kata you need to check the provided array (x) for good
 * ideas 'good' and bad ideas 'bad'. If there are one or two good
 * ideas, return 'Publish!', if there are more than 2 return 'I
 * smell a series!'. If there are no good ideas, as is often the
 * case, return 'Fail!'.
 */

// 1. Plain solution
String well(List<String> x) {
  int goodIdeas = 0;

  for (var idea in x) if (idea == 'good') goodIdeas += 1;

  if (goodIdeas == 0)
    return 'Fail!';
  else if (goodIdeas > 0 && goodIdeas < 3)
    return 'Publish!';
  else
    return 'I smell a series!';
}

// 2. Optimized solution
String well(List<String> x) {
  int goodIdeas = x.where((idea) => idea == 'good').length;

  if (goodIdeas == 0)
    return 'Fail!';
  else if (goodIdeas > 0 && goodIdeas < 3)
    return 'Publish!';
  else
    return 'I smell a series!';
}

// 3. Clever solution
String well(List<String> x) {
  int goodIdeas = x.where((idea) => idea == 'good').length;

  return goodIdeas == 0
      ? 'Fail!'
      : goodIdeas > 0 && goodIdeas < 3
          ? 'Publish!'
          : 'I smell a series!';
}

// 4. Coding golf
String well(List<String> x) => x.where((i) => i == 'good').length == 0
    ? 'Fail!'
    : x.where((i) => i == 'good').length > 0 &&
            x.where((i) => i == 'good').length < 3
        ? 'Publish!'
        : 'I smell a series!';
