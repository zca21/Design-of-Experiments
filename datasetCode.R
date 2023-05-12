### Script that contains all datasets in the module notes (to run without adding a load of 'noisy' code)

pulp <- data.frame(operator = rep(factor(1:4), 5),
                   repetition = rep(1:5, rep(4, 5)), 
                   reflectance = c(59.8, 59.8, 60.7, 61.0, 60.0, 60.2, 60.7, 60.8, 
                                   60.8, 60.4, 60.5, 60.6, 60.8, 59.9, 60.9, 60.5, 59.8, 60.0, 60.3, 60.5))

bar <- data.frame(coating = rep(factor(1:4), 8),
                  block = rep(factor(1:8), rep(4, 8)), 
                  strength = c(136, 147, 138, 149, 136, 143, 122, 153, 150, 142, 131, 136,
                               155, 148, 130, 129, 145, 149, 136, 139, 150, 149, 147, 144,
                               147, 150, 125, 140, 148, 149, 118, 145))

tyre <- data.frame(compound = as.factor(c(1, 2, 3, 1, 2, 4, 1, 3, 4, 2, 3, 4)),
                   block = rep(factor(1:4), rep(3, 4)), 
                   wear = c(238, 238, 279, 196, 213, 308, 254, 334, 367, 312, 421, 412))



desilylation <- FrF2::FrF2(nruns = 16, nfactors = 4, randomize = F,
                           factor.names = list(temp = c(10, 20), time = c(19, 25),
                                               solvent = c(5, 7), reagent = c(1, 1.33)))
yield <- c(82.93, 94.04, 88.07, 93.97, 77.21, 92.99, 83.60, 94.38, 
           88.68, 94.30, 93.00, 93.42, 84.86, 94.26, 88.71, 94.66)
desilylation <- data.frame(desilylation, yield = yield)

spring <- FrF2::FrF2(nruns = 16, nfactors = 5, generators = "BCD", randomize = F)
spring$height <- c(7.54, 7.20, 7.69, 7.63, 7.94, 7.40, 7.95, 7.62, 7.52, 7.52, 
                   7.63, 7.65, 7.79, 7.29, 8.07, 7.73)

example.design <- FrF2::FrF2(nruns = 8, nfactors = 3, randomize = F) #from chapter 5
block1 <- c(1, 2, 2, 1, 2, 1, 1, 2)
example.design.a <- cbind(example.design, Block = block1)

example.design.2 <- FrF2::FrF2(nruns = 16, nfactors = 5, randomize = F) #for notes
