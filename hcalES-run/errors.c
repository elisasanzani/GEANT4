// ROOT macro file for plotting  histograms
// 
// Can be run from ROOT session:
// root[0] .x plotHisto.C

{
    
 
  TFile f("ES.root");

  
  
    std::cout << "************************Egap************************" <<std::endl;

  TH1D* hist2 = (TH1D*)f.Get("Egap");
    hist2->Fit("gaus");
   /*
    std::cout << "************************Eabs************************" <<std::endl;
    TH1D* hist1 = (TH1D*)f.Get("Eabs");
    
    hist1->Fit("gaus");
    std::cout << "************************XCentroid************************" <<std::endl;

  TH1D* hist3 = (TH1D*)f.Get("XCentroid");
 
    hist3->Fit("gaus");
    std::cout << "************************YCentroid************************" <<std::endl;

  TH1D* hist4 = (TH1D*)f.Get("YCentroid");
    
    hist4->Fit("gaus");
    */
}

