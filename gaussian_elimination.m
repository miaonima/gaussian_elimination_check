% gaussian_elimination.m
% gaussian elimination checking program

clear;
format rat;

% basic variable index of line 1, line 2, ...
% e.g. (line 1: x1, line 2: x4)
index = [1 4];

% Your matrix here
% e.g. (z x1 x2 x3 x4 | const)
A = [
    1 1 2 0 0 0
    0 1 1 1 0 4
    0 -1 1 0 1 2
    ];

% begin
sz = size(A);
assert(sz(1)-1 == length(index))

% kept index (eg 152)
index_keep = [1, index + 1];

% dropped index - all other indices (eg 346)
index_discard = ones(length(A), 1);
index_discard(index_keep) = 0;
index_discard = find(index_discard);

left = A(:, index_keep);
right = A(:, index_discard);
div_result = left\right;

result = zeros(size(A));
result(:, index_keep) = eye(sz(1));
result(:, index_discard) = div_result;

display(result)