function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
 

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    thetaTemp = zeros(length(theta), 1);
    
	for k = 1:length(theta)
	    suma = 0;
		for i = 1:m
		    suma = suma + (theta(1) + theta(2) * X(i,2) - y(i))*X(i,k);
	   	 end
	    thetaTemp(k) = theta(k) - alpha*(1/m)*suma;
	end
	    for k = 1:length(theta)
		    theta(k) = thetaTemp(k);
		end

	    % ============================================================
	
	    % Save the cost J in every iteration    
	    J_history(iter) = computeCost(X, y, theta);

end

end
