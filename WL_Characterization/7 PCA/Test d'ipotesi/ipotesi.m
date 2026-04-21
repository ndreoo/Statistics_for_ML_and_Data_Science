%Test di Shapiro - Wilk
[H1LL, pValue1LL, W1LL] = swtest(Principale1_LL, 0.05)
[H1LL1, pValue1LL1, W1LL1] = swtest(Principale1_LL1, 0.05)
[H2LL, pValue2LL, W2LL] = swtest(Principale2_LL, 0.05)
[H2LL1, pValue2LL1, W2LL1] = swtest(Principale2_LL1, 0.05)
[H3LL, pValue3LL, W3LL] = swtest(Principale3_LL, 0.05)
[H3LL1, pValue3LL1, W3LL1] = swtest(Principale3_LL1, 0.05)
[H4LL, pValue4LL, W4LL] = swtest(Principale4_LL, 0.05)
[H4LL1, pValue4LL1, W4LL1] = swtest(Principale4_LL1, 0.05)
[H5LL, pValue5LL, W5LL] = swtest(Principale5_LL, 0.05)
[H5LL1, pValue5LL1, W5LL1] = swtest(Principale5_LL1, 0.05)
[H6LL, pValue6LL, W6LL] = swtest(Principale6_LL, 0.05)
[H6LL1, pValue6LL1, W6LL1] = swtest(Principale6_LL1, 0.05)
[H7LL, pValue7LL, W7LL] = swtest(Principale7_LL, 0.05)
[H7LL1, pValue7LL1, W7LL1] = swtest(Principale7_LL1, 0.05)

% Risultati
%           LL     LL1    Tipo Test
% PCA 1     0       1     Non parametrico
% PCA 2     0       0     Parametrico
% PCA 3     1       1     Non parametrico
% PCA 4     0       0     Parametrico
% PCA 5     1       1     Non parametrico
% PCA 6     0       1     Non parametrico
% PCA 7     0       0     Parametrico

[p1, h1] = ranksum(Principale1_LL, Principale1_LL1)
[h2, p2, c2] = vartest2(Principale2_LL, Principale2_LL1)
[p3, h3] = ranksum(Principale3_LL, Principale3_LL1)
[h4, p4, c4] = vartest2(Principale4_LL, Principale4_LL1)
[p5, h5] = ranksum(Principale5_LL, Principale5_LL1)
[p6, h6] = ranksum(Principale6_LL, Principale6_LL1)
[h7, p7, c7] = vartest2(Principale7_LL, Principale7_LL1)

%Test di Kolmorogov - Smirnov
h1LL = kstest(Principale1_LL)
h1LL1 = kstest(Principale1_LL1)
h2LL = kstest(Principale2_LL)
h2LL1 = kstest(Principale2_LL1)
h3LL = kstest(Principale3_LL)
h3LL1 = kstest(Principale3_LL1)
h4LL = kstest(Principale4_LL)
h4LL1 = kstest(Principale4_LL1)
h5LL = kstest(Principale5_LL)
h5LL1 = kstest(Principale5_LL1)
h6LL = kstest(Principale6_LL)
h6LL1 = kstest(Principale6_LL1)
h7LL = kstest(Principale7_LL)
h7LL1 = kstest(Principale7_LL1)

% Risultati
%           LL     LL1
% PCA 1     1       1
% PCA 2     0       0
% PCA 3     1       0
% PCA 4     0       1
% PCA 5     0       0
% PCA 6     0       0
% PCA 7     0       0