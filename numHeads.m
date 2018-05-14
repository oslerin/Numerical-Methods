function p = numHeads(n_heads,n_flips,n_sims);
%numHeads determines the probability of flipping n_heads in n_flips
counter = 0;
counter_num = 0;  %%counts the number of times 5 flips yields 3 heads
% n_sims = 100;   %%number of trials, n=100,1000 or 10000
% n_flips = 5;    %%5 flips

for i=1:n_sims
	for j=1:n_flips
		x=rand(1,1);
		if x<0.5
			counter=counter+1;
		end;
		if counter==n_heads
			counter_num=counter_num +1;
		end
		j=j+1;
	end
	i=i+1;
end
p_heads = counter/n_flips;
n_tot = n_sims/n_flips;
p = counter_num/n_tot;
fprintf('Probability of 3/5 heads: %0.3f\n',p);
	
