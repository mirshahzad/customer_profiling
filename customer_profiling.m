% ===========================
% Filename : customer_profiling.m
% ===========================

echo on;

% =========================================================
% A Fuzzy Expert System for customer profiling
% =========================================================

% ============================================================================
% Reference: Negnevitsky, M., "Artificial Intelligence: A Guide to Intelligent  
%            Systems", 3rd edn. Addison Wesley, Harlow, England, 2011.
%            Sec. 9.3 Will a fuzzy expert system work for my problem?
% ============================================================================

% ===================================================================================
% Problem: Three measures can be used to classify a customer: personal data
% (personal), financial background (financial), and social status (social).
% The customer's personal data, include his or her age, marital status
% (single or married) and the number of children. The evaluation of the
% customer's financial background is based on his or her income, fixed
% expenses, real estate, and other properties. The residence location is
% used as a demographic indication of the customer's social status.
% The fuzzy expert system should evaluate all personal, financial and
% social inputs and determine the degree to which a customer belongs to a
% targeted group (mailing).
% ===================================================================================

% Hit any key to load Rule Base 1: Personal Evaluation.
pause

a1=readfis('Personal.fis');

% Hit any key to display a fuzzy model of Personal Evaluation as a block diagram.
pause

figure('name','Block diagram of a fuzzy model for Personal Evaluation');
plotfis(a1);

% Hit any key to display fuzzy sets for the linguistic variable "Age".
pause

figure('name','Age');
plotmf(a1,'input',1);

% Hit any key to display fuzzy sets for the linguistic variable "NoOfChildren".
pause

figure('name','NoOfChildren');
plotmf(a1,'input',2);

% Hit any key to display fuzzy sets for the linguistic variable "Personal".
pause

figure('name','Personal');
plotmf(a1,'output',1);

% Hit any key to bring up the Rule Editor.
pause

ruleedit(a1);

% Hit any key to generate a three-dimensional surface for Rule Base 1.
pause

figure('name','Three-dimensional surface for Rule Base 1');
gensurf(a1,[1 2],1);

% Hit any key to load Rule Base 2: Financial Evaluation.
pause

a2=readfis('Financial.fis');

% Hit any key to display a fuzzy model of Financial Evaluation as a block diagram.
pause

figure('name','Block diagram of a fuzzy model for Financial Evaluation');
plotfis(a2);

% Hit any key to display fuzzy sets for the linguistic variable "Fixed Expenses".
pause

figure('name','Fixed Expenses, $');
plotmf(a2,'input',1);

% Hit any key to display fuzzy sets for the linguistic variable "Real Estate Mortgage".
pause

figure('name','Real Estate Mortgage, $');
plotmf(a2,'input',2);

% Hit any key to display fuzzy sets for the linguistic variable "Financial".
pause

figure('name','Financial');
plotmf(a2,'output',1);

% Hit any key to bring up the Rule Editor.
pause

ruleedit(a2);

% Hit any key to generate a three-dimensional surface for Rule Base 2.
pause

figure('name','Three-dimensional surface for Rule Base 2');
gensurf(a2,[1 2],1);

% Hit any key to load Rule Base 3: Mailing Evaluation.
pause

a3=readfis('Mailing.fis');

% Hit any key to display a fuzzy model of Mailing Evaluation as a block diagram.
pause

figure('name','Block diagram of a fuzzy model for Mailing Evaluation');
plotfis(a3);

% Hit any key to display fuzzy sets for the linguistic variable "Personal".
pause

figure('name','Personal, grading category (1-5)');
plotmf(a3,'input',1);

% Hit any key to display fuzzy sets for the linguistic variable "Financial".
pause

figure('name','Financial, %');
plotmf(a3,'input',2);

% Hit any key to display fuzzy sets for the linguistic variable "Social".
pause

figure('name','Social, grading category (0-4)');
plotmf(a3,'input',3);

% Hit any key to display fuzzy sets for the linguistic variable "Mailing".
pause

figure('name','Mailing, %');
plotmf(a3,'output',1);

% Hit any key to bring up the Rule Editor.
pause

ruleedit(a3);

% Hit any key to generate three-dimensional plots for Rule Base 3.
pause

figure('name','Three-dimensional surface for Rule Base 3');
gensurf(a3,[2 3],1);

% Hit any key to bring up the Rule Viewer.
pause

ruleview(a3);

% Hit any key to continue.
pause

% CASE STUDY
% ====================================================================================
% Suppose, it is required to assess a mortgage application for a house with the market 
% value of $450,000 in a fair location.  The applicant's assets are $200,000 and his 
% income is $56,000 per year.  The bank's current interest rate is 4.6%. The applicant 
% requested a credit of $350,000.
% ====================================================================================

% Hit any key to obtain results of the home evaluation.
%pause

personal=evalfis([1 2 3],a1)

% Hit any key to obtain results of the applicant evaluation.
%pause

%applicant=evalfis([200 56],a2)

% Hit any key to obtain results of the credit evaluation.
%pause

%credit=evalfis([56 4.6 applicant home],a3)*1000

echo off
disp('End of customer_profiling.m')