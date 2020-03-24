
function test_count_unique_words(file_name)

    fprintf('--------------------------------------\n')
    fprintf('Counting the number of unique words in:  %s \n', file_name)
    fprintf('--------------------------------------\n')
    
    tic
    
    % Load text file as character array
    text = fileread(file_name);
    
    % Remove all characters that are not letters or spaces
    text = regexprep(text, '[^a-zA-Z\s]', '');
    
    % Convert all letters to lowercase
    text = lower(text);
    
    % Split text string into individual words
    words = split(text);
    
    % Find all unique words
    unique_words = unique(words);
    
    % Display results counting total number of unique words
    fprintf('Number of unique words is:  %d \n', numel(unique_words));
      
    toc
    
exit;
