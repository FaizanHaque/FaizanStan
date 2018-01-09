// from https://github.com/stan-dev/example-models/blob/master/misc/eight_schools/eight_schools.stan


data {
  int<lower=0> J;          // number of schools
  real y[J];               // estimated treatment effect (school j)
  real<lower=0> sigma[J];  // std err of effect estimate (school j)
}
parameters {
  real mu;
  real theta[J];
  real<lower=0> tau;
}
model {
  theta ~ normal(mu, tau); 
  y ~ normal(theta,sigma);
}
