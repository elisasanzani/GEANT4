// ROOT macro file for plotting  histograms
// 
// Can be run from ROOT session:
// root[0] .x plotHisto.C

{
    gROOT->Reset();
    gROOT->SetStyle("Plain");
/*
  // Draw histos filled by Geant4 simulation 
  //
  // Open file filled by Geant4 simulation 
  TFile f("ES.root");

  // Create a canvas and divide it into 2x2 pads
  TCanvas* c1 = new TCanvas("c1", "", 20, 20, 1000, 1000);
  c1->Divide(2,2);
  TF1 *g1= new TF1("g1", "gaus",2000,10000);
  // Draw Energy histograms
  c1->cd(1);
  TH1D* hist1 = (TH1D*)f.Get("Eabs");
  hist1->Draw("HIST");
    hist1->Fit("g1","R");
    g1->Draw("SAME");
    
  TH1D* hist2 = (TH1D*)f.Get("Egap");
  c1->cd(2);
  hist2->Draw("HIST");
  
  //Draw Centroid Histograms
  c1->cd(3);
  TH1D* hist3 = (TH1D*)f.Get("XCentroid");
  hist3->Draw("HIST");
    
  c1->cd(4);
  TH1D* hist4 = (TH1D*)f.Get("YCentroid");
  hist4->Draw("HIST");
    */
  
//*************************************************************************
//      CALIBRATION CONSTANT

    std::cout << "*****************CALIBRATION CONSTANT*****************" << std::endl;

    TCanvas* c2 = new TCanvas("c2", "", 20, 20, 2000, 1000);
    c2->Divide(2,1);
    
    c2->cd(1);
    const int n_points= 6;
    double E0[n_points] = {1,2,4,6,8,10}; //Initial energy of particle beam in GeV
    
    double Egap[n_points] = {0.100473,0.184004,0.355032,0.538458,0.718421, 0.892649}; //Mean energy deposited in gap in GeV
    double sigmaEgap[n_points] = {0.0394872,0.0555496,0.076645,0.0896344,0.0980637, 0.115577}; //rms
    double errEgap[n_points]= {0.0126489,0.0169970,0.0271218,0.0284625,0.0329485,0.0355292};
    double errsigmaEgap[n_points]= {0.00972590,0.0137972,0.0238591,0.0240377,0.030273,0.0329758};

    
    TGraphErrors *plot=new TGraphErrors(n_points, E0,Egap,0,sigmaEgap);
    plot->SetTitle("E_{0} vs E_{gap}; E_{0} (Gev); E_{gap} (GeV)");
    plot->SetMarkerStyle(kOpenCircle);
    plot->SetMarkerColor(kBlue);
    plot->SetLineColor(kBlue);
    plot->SetFillColor(0);
    plot->GetXaxis()->SetRangeUser(0,10.2);
    plot->GetYaxis()->SetRangeUser(0,1.05);
    plot->Draw("APE");
    
    TF1 *func = new TF1("Linear Law","[0]*x",01.0,10.0);
    func->SetLineColor(kRed);
    func->SetLineStyle(2);
    plot->Fit(func, "R");
    
    std::cout << "The slope is: " <<func->GetParameter(0) <<" +- " << func->GetParError(0) <<std::endl;
    std::cout << "Ratio at 1 GeV: " <<E0[0]/Egap[0] <<std::endl;
    std::cout << "Ratio at 2 GeV: " <<E0[1]/Egap[1] <<std::endl;
    std::cout << "Ratio at 4 GeV: " <<E0[2]/Egap[2] <<std::endl;
    std::cout << "Ratio at 6 GeV: " <<E0[3]/Egap[3] <<std::endl;
    std::cout << "Ratio at 8 GeV: " <<E0[4]/Egap[4] <<std::endl;
    std::cout << "Ratio at 10 GeV: " <<E0[5]/Egap[5] <<std::endl;
    
    
    c2->cd(2);
    double ratio[n_points] = {E0[0]/Egap[0],E0[1]/Egap[1],E0[2]/Egap[2],E0[3]/Egap[3],E0[4]/Egap[4], E0[5]/Egap[5]};
    double errratio[n_points] = {sigmaEgap[0]/Egap[0]*ratio[0], sigmaEgap[1]/Egap[1]*ratio[1], sigmaEgap[2]/Egap[2]*ratio[2], sigmaEgap[3]/Egap[3]*ratio[3], sigmaEgap[4]/Egap[4]*ratio[4], sigmaEgap[5]/Egap[5]*ratio[5]};
    
    TGraphErrors *plot1=new TGraphErrors(n_points, E0,ratio,0,0);
    plot1->SetTitle("Calibration Constant; E_{0} (Gev); E_{gap}/E_{0}");
    plot1->SetMarkerStyle(kOpenCircle);
    plot1->SetMarkerColor(kBlue);
    plot1->SetLineColor(kBlue);
    plot1->SetFillColor(0);
    plot1->GetXaxis()->SetRangeUser(0,10.2);
    plot1->GetYaxis()->SetRangeUser(9.5,12);
    plot1->GetYaxis()->SetTitleOffset(1.3);
    plot1->Draw("APE");
    
    TF1 *func1 = new TF1("Linear Law","[1]+[0]*x",1.0,10.0);
    func1->SetLineColor(kRed);
    func1->SetLineStyle(2);
    plot1->Fit(func1, "R");
    
//*************************************************************************
//      ENERGY RESOLUTION
    
    std::cout << "*****************ENERGY RESOLUTION*****************" << std::endl;
    TCanvas* c3 = new TCanvas("c3", "", 20, 20, 500, 500);
    
    double const sigmaEE[n_points] = {sigmaEgap[0]/Egap[0], sigmaEgap[1]/Egap[1], sigmaEgap[2]/Egap[2], sigmaEgap[3]/Egap[3], sigmaEgap[4]/Egap[4], sigmaEgap[5]/Egap[5]};
    
    double errsigmaEE[n_points]={0,0,0,0,0,0};
    for (int i=0; i<=5; i++) {
    errsigmaEE[i]=(errsigmaEgap[i]/sigmaEgap[i]+errEgap[i]/Egap[i])*sigmaEE[i];
    };
 
    
    TGraphErrors *plot2=new TGraphErrors(n_points, E0,sigmaEE,0,errsigmaEE);
    plot2->SetTitle("Energy Resolution; E_{0} (Gev); E_{gap}/E_{0}");
    plot2->SetMarkerStyle(kOpenCircle);
    plot2->SetMarkerColor(kBlue);
    plot2->SetLineColor(kBlue);
    plot2->SetFillColor(0);
    //plot2->GetXaxis()->SetRangeUser(0,10.2);
    //plot2->GetYaxis()->SetRangeUser(9.5,12);
    plot2->GetYaxis()->SetTitleOffset(1.3);
    plot2->Draw("APE");
    
    TF1 *func2 = new TF1("Linear Law","[1]+[0]*x",1.0,10.0);
    func2->SetLineColor(kRed);
    func2->SetLineStyle(2);
    plot2->Fit(func2, "R");
    

}  
