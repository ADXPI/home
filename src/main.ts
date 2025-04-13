// Get the app container
const appElement = document.querySelector<HTMLDivElement>("#app");

if (appElement) {
  appElement.innerHTML = `
    <!-- Header -->
    <header>
      <div class="container header-container">
        <a href="#" class="logo">ADXPI</a>
        <nav>
          <ul>
            <li><a href="#" class="active">Home</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </nav>
      </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
      <div class="container">
        <div class="hero-content animate-fadeIn">
          <h1>Digital Solutions for the Modern World</h1>
          <p class="animate-fadeIn delay-1">ADXPI offers comprehensive digital services including web development, marketing, branding, software development, and much more.</p>
          <div class="hero-buttons animate-fadeIn delay-2">
            <a href="#services" class="btn">Our Services</a>
            <a href="#contact" class="btn btn-secondary">Get in Touch</a>
          </div>
        </div>
      </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="section services">
      <div class="container">
        <div class="text-center">
          <h2>Our Services</h2>
          <p>Comprehensive Digital Solutions for All Your Needs</p>
        </div>
        <div class="services-grid">
          <!-- Web Development -->
          <div class="service-card">
            <div class="service-icon">
              <i class="fas fa-code"></i>
            </div>
            <h3>Web Development</h3>
            <p>Professional website development for businesses of all sizes. From simple landing pages to complex web applications.</p>
          </div>

          <!-- Marketing -->
          <div class="service-card">
            <div class="service-icon">
              <i class="fas fa-bullhorn"></i>
            </div>
            <h3>Digital Marketing</h3>
            <p>Strategic digital marketing services to help you reach your audience, grow your brand, and increase conversions.</p>
          </div>

          <!-- Branding -->
          <div class="service-card">
            <div class="service-icon">
              <i class="fas fa-palette"></i>
            </div>
            <h3>Branding</h3>
            <p>Comprehensive branding solutions to help establish a strong identity for your business in the market.</p>
          </div>

          <!-- Music Distribution -->
          <div class="service-card">
            <div class="service-icon">
              <i class="fas fa-music"></i>
            </div>
            <h3>Music Distribution</h3>
            <p>Get your music on all major platforms with our professional music distribution services.</p>
          </div>

          <!-- Company Registration -->
          <div class="service-card">
            <div class="service-icon">
              <i class="fas fa-building"></i>
            </div>
            <h3>Company Registration</h3>
            <p>Streamlined business registration services to help you set up your company legally and efficiently.</p>
          </div>

          <!-- Tax Filing -->
          <div class="service-card">
            <div class="service-icon">
              <i class="fas fa-file-invoice-dollar"></i>
            </div>
            <h3>Tax Filing</h3>
            <p>Professional tax filing services to ensure compliance and minimize tax liabilities for your business.</p>
          </div>

          <!-- Software Development -->
          <div class="service-card">
            <div class="service-icon">
              <i class="fas fa-laptop-code"></i>
            </div>
            <h3>Software Development</h3>
            <p>Custom software development services tailored to your specific business requirements and objectives.</p>
          </div>

          <!-- Other Digital Services -->
          <div class="service-card">
            <div class="service-icon">
              <i class="fas fa-digital-tachograph"></i>
            </div>
            <h3>Other Digital Services</h3>
            <p>From app development to cloud solutions, we provide a wide range of digital services to meet your needs.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- About Section -->
    <section id="about" class="section about">
      <div class="container">
        <div class="about-grid">
          <div class="about-content">
            <h2>About ADXPI</h2>
            <p>ADXPI is a leading provider of digital solutions, committed to helping businesses thrive in the digital landscape. With our extensive experience and expertise, we deliver innovative and effective solutions tailored to your specific needs.</p>
            <p>Our team of skilled professionals combines technical knowledge with creative thinking to provide services that drive real results. We believe in building long-term relationships with our clients based on trust, transparency, and excellence.</p>
            <p>At ADXPI, we understand that every business is unique. That's why we work closely with you to understand your goals and challenges, and develop customized solutions that align with your vision and objectives.</p>
          </div>
          <div class="about-image">
            <img src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80" alt="ADXPI Team">
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="section contact">
      <div class="container">
        <div class="text-center">
          <h2>Get in Touch</h2>
          <p>Have a project in mind? Let's discuss how we can help you achieve your goals.</p>
        </div>
        <div class="contact-grid">
          <div class="contact-form">
            <form id="contactForm">
              <div class="form-group">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" required>
              </div>
              <div class="form-group">
                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" required>
              </div>
              <div class="form-group">
                <label for="subject">Subject</label>
                <input type="text" id="subject" name="subject" required>
              </div>
              <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" required></textarea>
              </div>
              <button type="submit" class="btn">Send Message</button>
            </form>
          </div>
          <div class="contact-info">
            <div class="contact-item">
              <span class="contact-icon"><i class="fas fa-map-marker-alt"></i></span>
              <div>
                <h4>Our Location</h4>
                <p>123 Business Avenue, Tech Park, Innovation City</p>
              </div>
            </div>
            <div class="contact-item">
              <span class="contact-icon"><i class="fas fa-phone"></i></span>
              <div>
                <h4>Phone Number</h4>
                <p>+91 98765 43210</p>
              </div>
            </div>
            <div class="contact-item">
              <span class="contact-icon"><i class="fas fa-envelope"></i></span>
              <div>
                <h4>Email Address</h4>
                <p>info@adxpi.com</p>
              </div>
            </div>
            <div class="contact-item">
              <span class="contact-icon"><i class="fas fa-clock"></i></span>
              <div>
                <h4>Working Hours</h4>
                <p>Monday - Friday: 9am - 6pm</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="footer-grid">
          <div>
            <div class="footer-logo">ADXPI</div>
            <p>Comprehensive digital solutions for all your business needs. From web development to tax filing, we've got you covered.</p>
            <div class="footer-social">
              <a href="#" class="social-icon"><i class="fab fa-facebook-f"></i></a>
              <a href="#" class="social-icon"><i class="fab fa-twitter"></i></a>
              <a href="#" class="social-icon"><i class="fab fa-instagram"></i></a>
              <a href="#" class="social-icon"><i class="fab fa-linkedin-in"></i></a>
            </div>
          </div>
          <div class="footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><a href="#services">Web Development</a></li>
              <li><a href="#services">Marketing</a></li>
              <li><a href="#services">Branding</a></li>
              <li><a href="#services">Music Distribution</a></li>
              <li><a href="#services">Company Registration</a></li>
            </ul>
          </div>
          <div class="footer-links">
            <h4>Quick Links</h4>
            <ul>
              <li><a href="#">Home</a></li>
              <li><a href="#services">Services</a></li>
              <li><a href="#about">About Us</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div>
          <div class="footer-links">
            <h4>Legal</h4>
            <ul>
              <li><a href="#">Privacy Policy</a></li>
              <li><a href="#">Terms of Service</a></li>
              <li><a href="#">Cookie Policy</a></li>
            </ul>
          </div>
        </div>
        <div class="copyright">
          <p>&copy; ${new Date().getFullYear()} ADXPI. All Rights Reserved.</p>
        </div>
      </div>
    </footer>
  `;

  // Form submission handling
  const contactForm = document.getElementById('contactForm') as HTMLFormElement;

  contactForm?.addEventListener('submit', (e) => {
    e.preventDefault();

    // Simulate form submission
    alert('Thank you for your message! We will get back to you soon.');
    contactForm.reset();
  });

  // Smooth scrolling for navigation links
  const navLinks = document.querySelectorAll('nav a');

  for (const link of navLinks) {
    link.addEventListener('click', (e) => {
      e.preventDefault();

      const targetId = link.getAttribute('href');

      if (targetId && targetId !== '#') {
        const targetElement = document.querySelector(targetId);

        if (targetElement) {
          window.scrollTo({
            top: targetElement.getBoundingClientRect().top + window.scrollY - 100,
            behavior: 'smooth'
          });

          // Update active link
          for (const navLink of navLinks) {
            navLink.classList.remove('active');
          }
          link.classList.add('active');
        }
      }
    });
  }

  // Scroll event handling for active navigation
  window.addEventListener('scroll', () => {
    const sections = document.querySelectorAll('section');
    const scrollPosition = window.scrollY + 200;

    for (const section of sections) {
      const sectionTop = section.offsetTop;
      const sectionHeight = section.offsetHeight;
      const sectionId = section.getAttribute('id');

      if (scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight && sectionId) {
        for (const navLink of navLinks) {
          navLink.classList.remove('active');
          if (navLink.getAttribute('href') === `#${sectionId}`) {
            navLink.classList.add('active');
          }
        }
      }
    }
  });
}
