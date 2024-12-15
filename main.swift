import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to Dotmini X One")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("Innovating the future with cutting-edge software solutions.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                NavigationLink(destination: ProductsView()) {
                    Text("Our Products")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                NavigationLink(destination: NewsroomView()) {
                    Text("Newsroom")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                NavigationLink(destination: AboutView()) {
                    Text("About Us")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                NavigationLink(destination: ContactView()) {
                    Text("Contact Us")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                NavigationLink(destination: AboutDeveloperView()) {
                    Text("About Developer")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationBarTitle("Dotmini X One", displayMode: .inline)
        }
    }
}

struct NewsroomView: View {
    let articles = [
        ("Create ML Training", "https://developer.apple.com/machine-learning/images/screen-create-ml-training-medium_2x.jpg", "Exploring the power of Apple's Create ML."),
        ("M4 Pro and M4 Max", "https://www.apple.com/newsroom/images/2024/10/apple-introduces-m4-pro-and-m4-max/article/Apple-M4-chip-series-hero_big.jpg.medium.jpg", "Apple's latest M4 chip series."),
        ("M4 CPU Performance", "https://www.apple.com/newsroom/images/2024/10/apple-introduces-m4-pro-and-m4-max/article/Apple-M4-chip-CPU-performance_big.jpg.medium.jpg", "Discover M4 chip's incredible CPU performance."),
        ("Swift Student Challenge", "https://www.apple.com/newsroom/images/2024/10/apples-swift-student-challenge-to-open-in-february-2025/article/Apple-Swift-Student-Challenge-logo_quick-read-16x9.jpg.medium.jpg", "Encouraging young developers through Swift."),
        ("Usher's Road to Halftime", "https://www.apple.com/newsroom/images/2024/02/ushers-road-to-halftime-on-apple-music-launches-today/article/Apple-Music-Super-Bowl-LVIII-Halftime-Show-USHER_big.jpg.medium.jpg", "Usher's journey to the Super Bowl Halftime Show.")
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Newsroom")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                ForEach(articles, id: \.0) { article in
                    VStack(alignment: .leading, spacing: 10) {
                        AsyncImage(url: URL(string: article.1)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 200)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                        
                        Text(article.0)
                            .font(.headline)
                        
                        Text(article.2)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        
                        Divider()
                    }
                    .padding(.horizontal)
                }
            }
        }
        .navigationBarTitle("Newsroom", displayMode: .inline)
    }
}


struct AboutDeveloperView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("About Developer")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/64796016?v=4")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView()
                }
                .padding()
                
                Text("Tirawat Nantamas")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Email: dev@dotmini.in.th")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text("""
                Tirawat Nantamas is a professional software developer and UX/UI designer. 
                Skilled in Python, Go, Rust, and SwiftUI. Expert in frameworks like Firebase, 
                TensorFlow, and Vala with a strong focus on creating responsive applications.
                """)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                
                Spacer()
            }
        }
        .navigationBarTitle("About Developer", displayMode: .inline)
    }
}

// Other views
struct ProductsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Our Products")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("""
                - Dotmini App
                - Cloud X Solutions
                - AI Innovations
                """)
                .font(.body)
                .padding(.horizontal)
                
                Spacer()
            }
        }
        .navigationBarTitle("Products", displayMode: .inline)
    }
}

struct AboutView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("About Us")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("We are a team of innovators creating impactful software solutions for businesses and individuals.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
        }
        .navigationBarTitle("About Us", displayMode: .inline)
    }
}

struct ContactView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Contact Us")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("""
            Email: dev@dotmini.in.th
            Phone: 0642230671
            Website: www.dotmini.in.th
            """)
            .font(.body)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationBarTitle("Contact Us", displayMode: .inline)
    }
}



