function [result] = longestWord(inputFile)
    fid = fopen(inputFile, 'r');
    
    if fid == -1
        fprintf('Error: Unable to open the file.\n');
        result = -1;
        return;
    end
    
    longestStreak = 0;
    streak = 0;
    
    punctuationMarks = ['.', ',', '!', '?', ' '];
    
    while ~feof(fid)
        inputChar = fread(fid, 1, '*char');
        
        if ismember(inputChar, punctuationMarks)
            if streak > longestStreak
                longestStreak = streak;
            end
            streak = 0;
        else
            streak = streak + 1;
        end
    end
    
    if streak > longestStreak
        longestStreak = streak;
    end
    
    fclose(fid);
    
    result = longestStreak;
end
