function fruit(N)
    for i = 1:N
        if rem(i, 2) == 0 && rem(i, 5) == 0
            fprintf('applebanana\n');
        elseif rem(i, 2) == 0
            fprintf('apple\n');
        elseif rem(i, 5) == 0
            fprintf('banana\n');
        else
            fprintf('%d\n', i);
        end
    end
end
