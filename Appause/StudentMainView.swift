//
//  StudentMainView.swift
//  Appause
//  Created by Huy Tran on 4/16/24.



import SwiftUI

struct StudentMainView: View {
    // Binding state for transitions from view to view
    @Binding var showNextView: DisplayState
    @AppStorage("isUserLoggedIn") var isUserLoggedIn: Bool = false

    // Track dark mode preference with AppStorage
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    
    @State var mainButtonColor = Color.black
    @State private var btnColor: Color = Color.gray.opacity(0.25)
    @State private var cornerRadius: CGFloat = 6
    @State private var frameWidth: CGFloat = 300
    @State private var frameHeight: CGFloat = 20
    
    @State var firstButtonName = "Add Classes"
    @State var secondButtonName = "My Classes"
    @State var thirdButtonName = "All Classes"
    @State var fourthButtonName = "Settings"
    @State var fifthButtonName = "Submit Request"
    @State var sixthButtonName = "Register ClassID"
    @State var seventhButtonName = "Feedback"
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {}) {
                    Text("MAIN")
                        .foregroundColor(btnStyle.getPathFontColor())
                        .fontWeight(btnStyle.getFont())
                        .frame(width: btnStyle.getWidth(), height: btnStyle.getHeight(), alignment: btnStyle.getAlignment())
                }
                .padding()
                .background(btnStyle.getPathColor())
                .cornerRadius(btnStyle.getPathRadius())
                
                Spacer()
                
                // Add Classes Button
                NavigationLink(destination: StudentConnectCodeView().navigationBarHidden(true)) {
                    HStack {
                        Text(firstButtonName)
                            .padding(.leading, 25)
                            .foregroundColor(btnStyle.getBtnFontColor())
                            .frame(width: btnStyle.getWidth(), height: btnStyle.getHeight(), alignment: btnStyle.getAlignment())
                            .fontWeight(btnStyle.getFont())
                        Image(systemName: "plus")
                            .fontWeight(btnStyle.getFont())
                            .imageScale(.large)
                            .foregroundColor(btnStyle.getBtnFontColor())
                    }
                }
                .padding()
                .background(btnStyle.getBtnColor())
                .border(btnStyle.getBorderColor(), width: btnStyle.getBorderWidth())
                .cornerRadius(btnStyle.getBtnRadius())
                .padding(.bottom, 10)
                
                // My Classes Button
                NavigationLink(destination: ClassListView().navigationBarHidden(true)) {
                    HStack {
                        Text(secondButtonName)
                            .padding(.leading, 25)
                            .foregroundColor(btnStyle.getBtnFontColor())
                            .frame(width: btnStyle.getWidth(), height: btnStyle.getHeight(), alignment: btnStyle.getAlignment())
                            .fontWeight(btnStyle.getFont())
                        Image(systemName: "books.vertical")
                            .fontWeight(btnStyle.getFont())
                            .imageScale(.large)
                            .foregroundColor(btnStyle.getBtnFontColor())
                    }
                }
                .padding()
                .background(btnStyle.getBtnColor())
                .border(btnStyle.getBorderColor(), width: btnStyle.getBorderWidth())
                .cornerRadius(btnStyle.getBtnRadius())
                .padding(.bottom, 10)

                // All Classes Button
                NavigationLink(destination: TeacherManageClasses().navigationBarHidden(true))
                {
                    HStack {
                        Text(thirdButtonName)
                            .padding(.leading, 25)
                            .foregroundColor(btnStyle.getBtnFontColor())
                            .frame(width: btnStyle.getWidth(), height: btnStyle.getHeight(), alignment: btnStyle.getAlignment())
                            .fontWeight(btnStyle.getFont())
                        Image(systemName: "list.number.hi")
                            .fontWeight(btnStyle.getFont())
                            .imageScale(.large)
                            .foregroundColor(btnStyle.getBtnFontColor())
                    }
                }
                .padding()
                .background(btnStyle.getBtnColor())
                .border(btnStyle.getBorderColor(), width: btnStyle.getBorderWidth())
                .cornerRadius(btnStyle.getBtnRadius())
                .padding(.bottom, 10)

                
                
                
               
                
                // Register ClassID Button
//                NavigationLink(destination: registerClassView(showNextView: $showNextView).navigationBarHidden(true)) {
//                    HStack {
//                        Text(sixthButtonName)
//                            .padding(.leading, 25)
//                            .foregroundColor(btnStyle.getBtnFontColor())
//                            .frame(width: btnStyle.getWidth(), height: btnStyle.getHeight(), alignment: btnStyle.getAlignment())
//                            .fontWeight(btnStyle.getFont())
//                        Image(systemName: "highlighter")
//                            .fontWeight(btnStyle.getFont())
//                            .imageScale(.large)
//                            .foregroundColor(btnStyle.getBtnFontColor())
//                    }
//                }
//                .padding()
//                .background(btnStyle.getBtnColor())
//                .border(btnStyle.getBorderColor(), width: btnStyle.getBorderWidth())
//                .cornerRadius(btnStyle.getBtnRadius())
//                .padding(.bottom, 10)
                
                // Submitting Request Button
                Button(action: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        withAnimation {
                            showNextView = .UnblockRequest
                            print("Navigating to: \(showNextView)")
                        }
                    }
                }
                )
                {
                    HStack {
                        Text(fifthButtonName)
                            .padding(.leading, 25)
                            .foregroundColor(btnStyle.getBtnFontColor())
                            .frame(width: btnStyle.getWidth(), height: btnStyle.getHeight(), alignment: btnStyle.getAlignment())
                            .fontWeight(btnStyle.getFont())
                        Image(systemName: "hand.raised")
                            .fontWeight(btnStyle.getFont())
                            .imageScale(.large)
                            .foregroundColor(btnStyle.getBtnFontColor())
                    }
                }
                .padding()
                .background(btnStyle.getBtnColor())
                .border(btnStyle.getBorderColor(), width: btnStyle.getBorderWidth())
                .cornerRadius(btnStyle.getBtnRadius())
                .padding(.bottom, 10)
                
                // Feedback Button
                NavigationLink(destination: FeedbackFormView().navigationBarHidden(true)) {
                    HStack {
                        Text(seventhButtonName)
                            .padding(.leading, 25)
                            .foregroundColor(btnStyle.getBtnFontColor())
                            .frame(width: btnStyle.getWidth(), height: btnStyle.getHeight(), alignment: btnStyle.getAlignment())
                            .fontWeight(btnStyle.getFont())
                        Image(systemName: "wallet.pass")
                            .fontWeight(btnStyle.getFont())
                            .imageScale(.large)
                            .foregroundColor(btnStyle.getBtnFontColor())
                    }
                }
                .padding()
                .background(btnStyle.getBtnColor())
                .border(btnStyle.getBorderColor(), width: btnStyle.getBorderWidth())
                .cornerRadius(btnStyle.getBtnRadius())
                .padding(.bottom, 10)
                
                
                // Settings Button
                Button(action: {
                    withAnimation { showNextView = .studentSettings }
                }) {
                    HStack {
                        Text(fourthButtonName)
                            .padding(.leading, 25)
                            .foregroundColor(btnStyle.getBtnFontColor())
                            .frame(width: btnStyle.getWidth(), height: btnStyle.getHeight(), alignment: btnStyle.getAlignment())
                            .fontWeight(btnStyle.getFont())
                        Image(systemName: "gear")
                            .imageScale(.large)
                            .foregroundColor(btnStyle.getBtnFontColor())
                    }
                }
                .padding()
                .background(btnStyle.getBtnColor())
                .border(btnStyle.getBorderColor(), width: btnStyle.getBorderWidth())
                .cornerRadius(btnStyle.getBtnRadius())
                .padding(.bottom, 10)
                
                // Dark Mode Toggle
//                Toggle("Dark Mode", isOn: $isDarkMode)
//                    .padding()
                
                Spacer()
                
                // Logout Button
                Button(action: {
                    withAnimation {
                        isUserLoggedIn = false
                        showNextView = .logout
                    }
                }) {
                    Text("Logout")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                }
                .padding()
                .background(Color.red)
                .cornerRadius(200)
            }
            .padding()
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

struct StudentMainView_Previews: PreviewProvider {
    @State static private var showNextView: DisplayState = .mainStudent

    static var previews: some View {
        StudentMainView(showNextView: $showNextView)
    }
}
