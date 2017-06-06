% code for a basic Monte Carlo simulation in MatLab

length = 0.1;
nsamples=100000;
force = 1000+50*rand(nsamples,1);
diameter = 0.01+rand(nsamples,1)*0.001;
modulus = 200e9+rand(nsamples,1)*10e9;
inertia=pi*diameter.^4/64;
displacement=force.*length^3/3./modulus./inertia;

min(displacement);
max(displacement);
mean(displacement);
histogram(displacement);
