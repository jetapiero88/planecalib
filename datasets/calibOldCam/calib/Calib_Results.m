% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly excecuted under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 763.897229443986700 ; 759.564980657802830 ];

%-- Principal point:
cc = [ 306.737854664114250 ; 247.246360609633650 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.408831231859971 ; 0.287206935433204 ; 0.004955174480730 ; 0.001815633594547 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 3.296197704897832 ; 2.945497298739284 ];

%-- Principal point uncertainty:
cc_error = [ 4.515458888564496 ; 4.284232137516460 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.019062192097771 ; 0.090119175076313 ; 0.001411824480991 ; 0.000654417417920 ; 0.000000000000000 ];

%-- Image size:
nx = 640;
ny = 480;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 30;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.367882e+00 ; 2.034801e+00 ; -3.434529e-03 ];
Tc_1  = [ -2.970218e+02 ; -2.182308e+02 ; 1.271485e+03 ];
omc_error_1 = [ 8.167486e-03 ; 6.826394e-03 ; 1.646491e-02 ];
Tc_error_1  = [ 7.620680e+00 ; 7.245817e+00 ; 7.008006e+00 ];

%-- Image #2:
omc_2 = [ 1.626787e+00 ; 1.721646e+00 ; -1.245422e+00 ];
Tc_2  = [ -3.058106e+02 ; -1.931984e+02 ; 1.445860e+03 ];
omc_error_2 = [ 4.257832e-03 ; 6.603518e-03 ; 7.703411e-03 ];
Tc_error_2  = [ 8.705456e+00 ; 8.213570e+00 ; 5.595836e+00 ];

%-- Image #3:
omc_3 = [ 1.763150e+00 ; 1.694289e+00 ; 1.289950e-02 ];
Tc_3  = [ -2.074735e+02 ; -2.636915e+02 ; 1.019808e+03 ];
omc_error_3 = [ 5.235568e-03 ; 5.140442e-03 ; 7.242225e-03 ];
Tc_error_3  = [ 6.101334e+00 ; 5.659785e+00 ; 5.329986e+00 ];

%-- Image #4:
omc_4 = [ 2.389578e+00 ; 1.348065e+00 ; -6.135298e-01 ];
Tc_4  = [ -3.728024e+02 ; -7.555503e+01 ; 1.324296e+03 ];
omc_error_4 = [ 5.394296e-03 ; 4.955040e-03 ; 1.009087e-02 ];
Tc_error_4  = [ 7.938912e+00 ; 7.487000e+00 ; 6.325989e+00 ];

%-- Image #5:
omc_5 = [ 2.359532e+00 ; 1.610882e+00 ; -5.581170e-01 ];
Tc_5  = [ -2.970791e+02 ; -1.712006e+02 ; 1.403067e+03 ];
omc_error_5 = [ 5.745793e-03 ; 5.358187e-03 ; 1.131104e-02 ];
Tc_error_5  = [ 8.427178e+00 ; 7.839706e+00 ; 6.727781e+00 ];

%-- Image #6:
omc_6 = [ -2.033578e+00 ; -2.274945e+00 ; -2.325859e-01 ];
Tc_6  = [ -5.194462e+01 ; -3.032981e+02 ; 1.448906e+03 ];
omc_error_6 = [ 7.282162e-03 ; 9.828423e-03 ; 1.602589e-02 ];
Tc_error_6  = [ 8.658519e+00 ; 8.244435e+00 ; 8.588052e+00 ];

%-- Image #7:
omc_7 = [ -2.136972e+00 ; -1.611918e+00 ; 4.235960e-01 ];
Tc_7  = [ -4.272152e+02 ; -9.283252e+01 ; 1.483098e+03 ];
omc_error_7 = [ 5.970910e-03 ; 4.681914e-03 ; 1.071657e-02 ];
Tc_error_7  = [ 8.895155e+00 ; 8.397786e+00 ; 6.653767e+00 ];

%-- Image #8:
omc_8 = [ 2.404068e+00 ; 7.255637e-01 ; 4.043332e-02 ];
Tc_8  = [ -3.278703e+02 ; 4.456326e-01 ; 1.135312e+03 ];
omc_error_8 = [ 6.076828e-03 ; 3.682549e-03 ; 9.127293e-03 ];
Tc_error_8  = [ 6.771268e+00 ; 6.475290e+00 ; 6.368301e+00 ];

%-- Image #9:
omc_9 = [ -2.042950e+00 ; -1.881648e+00 ; 9.497868e-01 ];
Tc_9  = [ -4.020514e+02 ; -1.817236e+02 ; 1.407704e+03 ];
omc_error_9 = [ 6.482563e-03 ; 4.323687e-03 ; 9.397133e-03 ];
Tc_error_9  = [ 8.530969e+00 ; 8.019045e+00 ; 5.756849e+00 ];

%-- Image #10:
omc_10 = [ -2.354856e+00 ; -1.568058e+00 ; 1.086942e+00 ];
Tc_10  = [ -3.550695e+02 ; -5.864643e+01 ; 1.531258e+03 ];
omc_error_10 = [ 7.183942e-03 ; 3.596566e-03 ; 9.921595e-03 ];
Tc_error_10  = [ 9.238119e+00 ; 8.656397e+00 ; 5.748584e+00 ];

%-- Image #11:
omc_11 = [ 1.707193e+00 ; 1.887243e+00 ; -1.087096e+00 ];
Tc_11  = [ -2.635500e+02 ; -1.727676e+02 ; 1.354122e+03 ];
omc_error_11 = [ 3.799615e-03 ; 6.156159e-03 ; 8.235680e-03 ];
Tc_error_11  = [ 8.099748e+00 ; 7.621458e+00 ; 5.363999e+00 ];

%-- Image #12:
omc_12 = [ 1.945636e+00 ; 2.331484e+00 ; -6.514813e-01 ];
Tc_12  = [ -2.727920e+02 ; -3.375067e+02 ; 1.217223e+03 ];
omc_error_12 = [ 3.918272e-03 ; 6.091768e-03 ; 1.068562e-02 ];
Tc_error_12  = [ 7.355573e+00 ; 6.766871e+00 ; 5.719816e+00 ];

%-- Image #13:
omc_13 = [ 2.029161e+00 ; 1.359819e+00 ; 6.929090e-02 ];
Tc_13  = [ -3.327335e+02 ; -2.169559e+02 ; 1.027131e+03 ];
omc_error_13 = [ 5.590440e-03 ; 4.744670e-03 ; 7.664020e-03 ];
Tc_error_13  = [ 6.183777e+00 ; 5.758524e+00 ; 5.702560e+00 ];

%-- Image #14:
omc_14 = [ 2.054770e+00 ; 1.430275e+00 ; 5.976134e-02 ];
Tc_14  = [ -2.504398e+02 ; -2.847005e+02 ; 1.004248e+03 ];
omc_error_14 = [ 5.616480e-03 ; 4.833173e-03 ; 7.833051e-03 ];
Tc_error_14  = [ 6.081189e+00 ; 5.566575e+00 ; 5.477435e+00 ];

%-- Image #15:
omc_15 = [ 2.146591e+00 ; 1.913704e+00 ; -3.783625e-01 ];
Tc_15  = [ -3.266260e+02 ; -2.940667e+02 ; 1.198636e+03 ];
omc_error_15 = [ 4.931428e-03 ; 5.794682e-03 ; 1.043869e-02 ];
Tc_error_15  = [ 7.229585e+00 ; 6.652999e+00 ; 6.111756e+00 ];

%-- Image #16:
omc_16 = [ 2.313096e+00 ; 1.742690e+00 ; -5.964490e-01 ];
Tc_16  = [ -4.096066e+02 ; -1.449491e+02 ; 1.244349e+03 ];
omc_error_16 = [ 4.808135e-03 ; 5.321178e-03 ; 1.062606e-02 ];
Tc_error_16  = [ 7.469209e+00 ; 7.033917e+00 ; 6.023080e+00 ];

%-- Image #17:
omc_17 = [ 1.945938e+00 ; 2.239056e+00 ; -6.496362e-02 ];
Tc_17  = [ -2.640033e+02 ; -3.231019e+02 ; 1.169246e+03 ];
omc_error_17 = [ 5.690490e-03 ; 6.932414e-03 ; 1.203346e-02 ];
Tc_error_17  = [ 7.024883e+00 ; 6.573278e+00 ; 6.138021e+00 ];

%-- Image #18:
omc_18 = [ 1.764695e+00 ; 2.356302e+00 ; -5.300148e-01 ];
Tc_18  = [ -1.850244e+02 ; -3.967459e+02 ; 1.308228e+03 ];
omc_error_18 = [ 4.165689e-03 ; 6.612042e-03 ; 1.078391e-02 ];
Tc_error_18  = [ 7.905512e+00 ; 7.207225e+00 ; 6.254760e+00 ];

%-- Image #19:
omc_19 = [ 1.026410e+00 ; 2.590589e+00 ; -2.138586e-01 ];
Tc_19  = [ -3.210014e+02 ; -5.355439e+02 ; 1.730952e+03 ];
omc_error_19 = [ 3.883732e-03 ; 1.046991e-02 ; 1.363509e-02 ];
Tc_error_19  = [ 1.056378e+01 ; 9.713902e+00 ; 8.449248e+00 ];

%-- Image #20:
omc_20 = [ 1.238400e+00 ; 2.643629e+00 ; -4.591555e-01 ];
Tc_20  = [ -1.833531e+02 ; -4.175133e+02 ; 1.762437e+03 ];
omc_error_20 = [ 4.522426e-03 ; 9.562648e-03 ; 1.354836e-02 ];
Tc_error_20  = [ 1.054972e+01 ; 9.812708e+00 ; 8.349780e+00 ];

%-- Image #21:
omc_21 = [ 2.137416e+00 ; 1.329582e+00 ; -4.760212e-01 ];
Tc_21  = [ -4.168117e+02 ; -1.588288e+02 ; 1.245084e+03 ];
omc_error_21 = [ 5.014485e-03 ; 5.209252e-03 ; 8.491030e-03 ];
Tc_error_21  = [ 7.452431e+00 ; 7.038893e+00 ; 6.437262e+00 ];

%-- Image #22:
omc_22 = [ -1.476814e+00 ; -2.249783e+00 ; 1.199046e+00 ];
Tc_22  = [ -2.138213e+02 ; -3.651359e+02 ; 1.355593e+03 ];
omc_error_22 = [ 6.447659e-03 ; 5.002517e-03 ; 8.285704e-03 ];
Tc_error_22  = [ 8.261395e+00 ; 7.681802e+00 ; 5.289699e+00 ];

%-- Image #23:
omc_23 = [ -5.524159e-01 ; -2.663210e+00 ; 1.515919e+00 ];
Tc_23  = [ 1.443307e+02 ; -3.372495e+02 ; 1.467673e+03 ];
omc_error_23 = [ 5.898196e-03 ; 6.022017e-03 ; 8.241154e-03 ];
Tc_error_23  = [ 8.820080e+00 ; 8.242863e+00 ; 5.685328e+00 ];

%-- Image #24:
omc_24 = [ 9.048580e-01 ; -2.298853e+00 ; 1.392513e+00 ];
Tc_24  = [ 4.790817e+02 ; -4.141431e+01 ; 1.384716e+03 ];
omc_error_24 = [ 4.102764e-03 ; 6.750497e-03 ; 7.954753e-03 ];
Tc_error_24  = [ 8.230252e+00 ; 7.927723e+00 ; 6.374969e+00 ];

%-- Image #25:
omc_25 = [ 1.842436e+00 ; 1.873139e+00 ; -1.096417e-01 ];
Tc_25  = [ -2.188825e+02 ; -3.072277e+02 ; 1.143861e+03 ];
omc_error_25 = [ 5.050426e-03 ; 5.675488e-03 ; 8.436654e-03 ];
Tc_error_25  = [ 6.859915e+00 ; 6.342584e+00 ; 5.904769e+00 ];

%-- Image #26:
omc_26 = [ 2.277018e+00 ; 1.879905e+00 ; -5.596324e-01 ];
Tc_26  = [ -3.517152e+02 ; -1.964427e+02 ; 1.218257e+03 ];
omc_error_26 = [ 4.843386e-03 ; 5.362816e-03 ; 1.091944e-02 ];
Tc_error_26  = [ 7.321518e+00 ; 6.821444e+00 ; 5.882463e+00 ];

%-- Image #27:
omc_27 = [ -2.148813e+00 ; -1.763908e+00 ; 9.810526e-01 ];
Tc_27  = [ -3.697474e+02 ; -1.127791e+02 ; 1.349947e+03 ];
omc_error_27 = [ 6.448166e-03 ; 4.001149e-03 ; 9.362553e-03 ];
Tc_error_27  = [ 8.145065e+00 ; 7.643002e+00 ; 5.267849e+00 ];

%-- Image #28:
omc_28 = [ 2.087103e+00 ; 1.553995e+00 ; -8.020793e-01 ];
Tc_28  = [ -3.588361e+02 ; -1.443255e+02 ; 1.281844e+03 ];
omc_error_28 = [ 4.433305e-03 ; 5.513633e-03 ; 8.793235e-03 ];
Tc_error_28  = [ 7.696662e+00 ; 7.232372e+00 ; 5.772524e+00 ];

%-- Image #29:
omc_29 = [ 1.920837e+00 ; 1.304077e+00 ; -7.819910e-01 ];
Tc_29  = [ -5.011661e+02 ; -7.782963e+01 ; 1.372338e+03 ];
omc_error_29 = [ 4.619205e-03 ; 5.713925e-03 ; 7.778734e-03 ];
Tc_error_29  = [ 8.184074e+00 ; 7.896907e+00 ; 6.694371e+00 ];

%-- Image #30:
omc_30 = [ 1.483099e+00 ; 1.350530e+00 ; -1.116040e+00 ];
Tc_30  = [ -3.706586e+02 ; 9.797806e+01 ; 1.383480e+03 ];
omc_error_30 = [ 4.474597e-03 ; 5.991146e-03 ; 6.455749e-03 ];
Tc_error_30  = [ 8.232185e+00 ; 7.946578e+00 ; 5.521513e+00 ];
