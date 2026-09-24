<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Md Siyam Sheikh Kayesh | STR Assistant Portfolio</title>
    
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        brand: {
                            dark: '#070A0F',
                            surface: 'rgba(15, 23, 42, 0.65)',
                            border: 'rgba(255, 255, 255, 0.08)',
                            gold: '#D4AF37',
                            goldLight: '#F3E5AB',
                            accent: '#38BDF8',
                            glow: '#0EA5E9'
                        }
                    },
                    fontFamily: {
                        sans: ['Plus Jakarta Sans', 'sans-serif']
                    }
                }
            }
        }
    </script>
    
    <!-- Google Fonts & FontAwesome CDN -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <style>
        body {
            background-color: #070A0F;
            background-image: 
                radial-gradient(at 0% 0%, rgba(56, 189, 248, 0.05) 0px, transparent 50%),
                radial-gradient(at 100% 100%, rgba(212, 175, 55, 0.04) 0px, transparent 50%);
            background-attachment: fixed;
        }

        .glass-panel {
            background: rgba(15, 23, 42, 0.6);
            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);
            border: 1px solid rgba(255, 255, 255, 0.08);
        }

        .glass-panel-gold {
            background: rgba(20, 24, 33, 0.7);
            backdrop-filter: blur(16px);
            border: 1px solid rgba(212, 175, 55, 0.2);
        }

        .gold-gradient-text {
            background: linear-gradient(135deg, #FFF 0%, #F3E5AB 50%, #D4AF37 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .blue-gradient-text {
            background: linear-gradient(135deg, #FFFFFF 0%, #7DD3FC 50%, #38BDF8 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* Admin Active Styling Indicator */
        body.admin-mode [contenteditable="true"] {
            outline: 1px dashed #38BDF8 !important;
            outline-offset: 4px;
            cursor: text;
        }
        body.admin-mode [contenteditable="true"]:hover {
            background: rgba(56, 189, 248, 0.08);
            border-radius: 4px;
        }
    </style>
</head>
<body class="text-slate-200 font-sans antialiased selection:bg-brand-accent selection:text-black">

    <!-- Sticky Glass Navigation -->
    <nav class="fixed top-0 w-full glass-panel z-40 border-b border-brand-border">
        <div class="max-w-7xl mx-auto px-6 h-20 flex items-center justify-between">
            <span class="font-extrabold text-xl tracking-wider gold-gradient-text" id="nav-brand">M. KAYESH</span>
            <div class="hidden md:flex space-x-8 text-sm font-medium text-slate-300">
                <a href="#about" class="hover:text-brand-accent transition-colors">About</a>
                <a href="#showcase" class="hover:text-brand-accent transition-colors">Demos</a>
                <a href="#capabilities" class="hover:text-brand-accent transition-colors">Capabilities</a>
                <a href="#contact" class="hover:text-brand-accent transition-colors">Contact</a>
            </div>
            <a href="#contact" class="hidden sm:inline-flex px-5 py-2.5 rounded-full text-xs font-bold tracking-wider uppercase border border-brand-gold/40 text-brand-goldLight hover:bg-brand-gold/10 transition-all">
                Direct Inquiry
            </a>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="min-h-screen pt-32 pb-20 flex items-center justify-center relative px-6 overflow-hidden">
        <div class="max-w-6xl mx-auto grid lg:grid-cols-12 gap-12 items-center relative z-10">
            
            <div class="lg:col-span-7 space-y-8 text-center lg:text-left">
                <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full border border-brand-accent/30 bg-brand-accent/5 text-brand-accent text-xs font-semibold tracking-widest uppercase">
                    <span class="w-2 h-2 rounded-full bg-brand-accent animate-pulse"></span>
                    <span id="hero-badge" data-key="identity.badge"></span>
                </div>
                
                <h1 class="text-4xl sm:text-6xl font-extrabold tracking-tight text-white leading-none">
                    <span id="hero-name" data-key="identity.name" class="block"></span>
                    <span id="hero-title" data-key="identity.title" class="text-2xl sm:text-4xl block mt-3 blue-gradient-text font-bold"></span>
                </h1>
                
                <p id="hero-tagline" data-key="identity.tagline" class="text-lg text-slate-400 max-w-2xl leading-relaxed"></p>
                
                <div class="pt-4 flex flex-wrap gap-4 justify-center lg:justify-start">
                    <a id="hero-cta" href="#showcase" class="px-8 py-4 bg-gradient-to-r from-sky-500 to-blue-600 hover:from-sky-400 hover:to-blue-500 text-white font-bold rounded-xl shadow-lg shadow-sky-500/20 transition-all flex items-center gap-3">
                        <span data-key="identity.ctaText"></span>
                        <i class="fa-solid fa-arrow-right text-sm"></i>
                    </a>
                    <a href="#contact" class="px-8 py-4 glass-panel hover:bg-white/5 text-slate-200 font-semibold rounded-xl transition-all border border-brand-border">
                        Contact Executive
                    </a>
                </div>
            </div>

            <!-- Profile Frame -->
            <div class="lg:col-span-5 flex flex-col items-center justify-center">
                <div class="relative w-72 h-72 sm:w-96 sm:h-96 rounded-3xl glass-panel-gold p-3 shadow-2xl relative">
                    <!-- Subtle underlying glow -->
                    <div class="absolute -inset-1 bg-brand-glow/10 rounded-3xl blur-2xl z-0"></div>
                    
                    <div class="w-full h-full rounded-2xl overflow-hidden relative group z-10 border border-brand-border/50">
                        <img id="hero-photo" class="w-full h-full object-cover" alt="Md Siyam Sheikh Kayesh">
                        
                        <!-- Admin Upload Button Overlay -->
                        <div id="upload-overlay" class="hidden absolute inset-0 bg-black/75 backdrop-blur-sm flex-col items-center justify-center gap-2 transition-all cursor-pointer">
                            <i class="fa-solid fa-camera text-2xl text-brand-accent"></i>
                            <span class="text-xs font-semibold text-white">Change Photo</span>
                            <input type="file" id="photo-file-input" accept="image/*" class="hidden">
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="py-24 border-t border-brand-border/40">
        <div class="max-w-5xl mx-auto px-6">
            <div class="glass-panel p-8 sm:p-12 rounded-3xl relative overflow-hidden">
                <div class="absolute -right-10 -bottom-10 w-40 h-40 bg-brand-accent/5 rounded-full blur-3xl"></div>
                <h2 class="text-xs font-bold tracking-widest text-brand-gold uppercase mb-3">Professional Dossier</h2>
                <h3 id="about-heading" data-key="about.heading" class="text-3xl font-bold text-white mb-6"></h3>
                <div class="space-y-4 text-slate-300 leading-relaxed text-base sm:text-lg">
                    <p id="about-bio1" data-key="about.bio1"></p>
                    <p id="about-bio2" data-key="about.bio2" class="text-slate-400 text-base"></p>
                </div>
            </div>
        </div>
    </section>

    <!-- Work Showcase (Demos) -->
    <section id="showcase" class="py-24 border-t border-brand-border/40">
        <div class="max-w-7xl mx-auto px-6">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <h2 class="text-xs font-bold tracking-widest text-brand-accent uppercase">Portfolio</h2>
                <h3 class="text-3xl sm:text-4xl font-extrabold text-white">Operational Excellence & Systems</h3>
                <p class="text-slate-400">High-impact automation and hospitality workflows developed for STR properties.</p>
            </div>

            <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8" id="projects-grid">
                <!-- Dynamically populated -->
            </div>
        </div>
    </section>

    <!-- Capabilities Section -->
    <section id="capabilities" class="py-24 border-t border-brand-border/40">
        <div class="max-w-7xl mx-auto px-6">
            <div class="text-center max-w-3xl mx-auto mb-16 space-y-3">
                <h2 class="text-xs font-bold tracking-widest text-brand-gold uppercase">Expertise</h2>
                <h3 class="text-3xl sm:text-4xl font-extrabold text-white">Core Competencies</h3>
                <p class="text-slate-400">End-to-end support engineered for host scale and flawless guest experiences.</p>
            </div>

            <div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-6" id="capabilities-grid">
                <!-- Dynamically populated -->
            </div>
        </div>
    </section>

    <!-- Footer / Contact -->
    <footer id="contact" class="py-20 border-t border-brand-border glass-panel">
        <div class="max-w-7xl mx-auto px-6 text-center space-y-10">
            <div class="max-w-2xl mx-auto space-y-4">
                <h3 class="text-3xl font-extrabold text-white">Initiate Collaboration</h3>
                <p class="text-slate-400">Ready to optimize host workflows or elevate guest experiences?</p>
                <div class="pt-2">
                    <a id="contact-email" href="" class="inline-block text-xl sm:text-2xl font-bold gold-gradient-text hover:opacity-80 transition-opacity"></a>
                </div>
            </div>

            <!-- Social Links -->
            <div class="flex justify-center items-center gap-6" id="social-links">
                <!-- Dynamically populated -->
            </div>

            <div class="pt-8 border-t border-brand-border/60 text-xs text-slate-500 flex flex-col sm:flex-row justify-between items-center gap-4">
                <p id="footer-copy" data-key="contact.copyright"></p>
                <p class="text-slate-600">Short-Term Rental Assistant (STR Specialist)</p>
            </div>
        </div>
    </footer>

    <!-- Floating Live Editor Controls -->
    <div class="fixed bottom-6 right-6 z-50 flex flex-col items-end gap-3">
        <!-- Admin Action Buttons (Hidden by default) -->
        <div id="admin-tools" class="hidden flex-col gap-2">
            <button id="btn-save-code" class="px-4 py-2.5 bg-brand-gold hover:bg-yellow-500 text-black font-bold text-xs rounded-xl shadow-xl transition-all flex items-center gap-2">
                <i class="fa-solid fa-code"></i> Generate Save Code
            </button>
        </div>

        <!-- Toggle Button -->
        <button id="btn-toggle-admin" class="px-5 py-3 glass-panel-gold text-brand-goldLight font-semibold text-xs tracking-wider uppercase rounded-full shadow-2xl flex items-center gap-2 hover:bg-brand-gold/20 transition-all border border-brand-gold/40">
            <i class="fa-solid fa-sliders"></i>
            <span id="admin-status-text">Edit Mode: OFF</span>
        </button>
    </div>

    <!-- Modal for Generated Code -->
    <div id="code-modal" class="fixed inset-0 bg-black/80 backdrop-blur-md z-50 hidden flex items-center justify-center p-6">
        <div class="glass-panel-gold max-w-3xl w-full rounded-2xl p-6 sm:p-8 space-y-4 relative">
            <div class="flex justify-between items-center">
                <h3 class="text-lg font-bold text-white">Updated `portfolioData` Object</h3>
                <button id="btn-close-modal" class="text-slate-400 hover:text-white"><i class="fa-solid fa-xmark text-xl"></i></button>
            </div>
            <p class="text-xs text-slate-400">Copy the object below and overwrite the `portfolioData` object inside your HTML file script tag to permanently keep your changes.</p>
            <textarea id="modal-textarea" class="w-full h-80 bg-slate-950/80 text-emerald-400 font-mono text-xs p-4 rounded-xl border border-slate-800 focus:outline-none focus:border-brand-gold" readonly></textarea>
            <div class="flex justify-end gap-3">
                <button id="btn-copy-code" class="px-5 py-2.5 bg-brand-accent text-black font-bold text-xs rounded-xl hover:bg-sky-400 transition-all">
                    Copy to Clipboard
                </button>
            </div>
        </div>
    </div>

    <!-- Single Source of Truth JavaScript Object -->
    <script>
        let portfolioData = {
            identity: {
                name: "Md Siyam Sheikh Kayesh",
                title: "STR Operations & Remote Management Specialist",
                badge: "Experienced STR Assistant",
                tagline: "Bridging seamless operational efficiency with 5-star hospitality workflows. I help Short-Term Rental hosts manage properties with precision.",
                photoUrl: "https://r.jina.ai/image/https://i.ibb.co/L5r64bX/image-0.png",
                ctaText: "Explore Work Demos"
            },
            about: {
                heading: "Operational Backbone for STR Properties Worldwide",
                bio1: "With extensive experience assisting Short-Term Rental (STR) hosts, I focus on stabilizing operations, maximizing property yield, and ensuring flawless guest experiences across Airbnb, VRBO, and booking.com platforms.",
                bio2: "Specializing in integrated PMS management (Guesty, Hostaway), rapid guest communications, automated turnover logistics, and dynamic pricing strategies."
            },
            projects: [
                {
                    title: "24/7 AI-Assisted Guest Messaging",
                    description: "Workflow optimization reducing average response time to under 5 minutes using AI prompt-tuning for complex guest inquiries.",
                    type: "image",
                    mediaUrl: "https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&w=800&q=80",
                    demoUrl: "https://example.com",
                    githubUrl: "https://github.com"
                },
                {
                    title: "PMS Sync & Channel Management",
                    description: "End-to-end setup of Hostaway integration with automated smart lock provisioning and unified inbox management.",
                    type: "image",
                    mediaUrl: "https://images.unsplash.com/photo-1581578731548-c64695cc6952?auto=format&fit=crop&w=800&q=80",
                    demoUrl: "https://example.com",
                    githubUrl: "https://github.com"
                },
                {
                    title: "Automated Turnover Dispatch",
                    description: "Calendar trigger system linking check-outs with immediate cleaner alerts, supply checklists, and maintenance logs.",
                    type: "video",
                    mediaUrl: "https://assets.mixkit.co/videos/preview/mixkit-working-overtime-in-the-office-381-large.mp4",
                    demoUrl: "https://example.com",
                    githubUrl: "https://github.com"
                }
            ],
            capabilities: [
                { icon: "fa-comments", title: "Guest Communication", desc: "Rapid response times for pre-booking, check-in, and emergency queries." },
                { icon: "fa-chart-line", title: "Yield Management", desc: "Dynamic pricing setup and local market occupancy monitoring." },
                { icon: "fa-broom", title: "Turnover Logistics", desc: "Scheduling cleaner dispatches, inspections, and maintenance tracking." },
                { icon: "fa-key", title: "Smart Access", desc: "Remote lock provisioning, unique code generation, and security sync." }
            ],
            contact: {
                email: "mdsiyamsheikhkayesh567@gmail.com",
                socials: [
                    { name: "LinkedIn", icon: "fa-brands fa-linkedin", url: "https://linkedin.com" },
                    { name: "WhatsApp", icon: "fa-brands fa-whatsapp", url: "https://whatsapp.com" },
                    { name: "Instagram", icon: "fa-brands fa-instagram", url: "https://instagram.com" }
                ],
                copyright: "© 2026 Md Siyam Sheikh Kayesh. All Rights Reserved."
            }
        };

        // Render Function
        function renderPortfolio() {
            // Identity
            document.getElementById('nav-brand').textContent = "M. KAYESH";
            document.getElementById('hero-badge').textContent = portfolioData.identity.badge;
            document.getElementById('hero-name').textContent = portfolioData.identity.name;
            document.getElementById('hero-title').textContent = portfolioData.identity.title;
            document.getElementById('hero-tagline').textContent = portfolioData.identity.tagline;
            document.getElementById('hero-photo').src = portfolioData.identity.photoUrl;
            document.querySelector('[data-key="identity.ctaText"]').textContent = portfolioData.identity.ctaText;

            // About
            document.getElementById('about-heading').textContent = portfolioData.about.heading;
            document.getElementById('about-bio1').textContent = portfolioData.about.bio1;
            document.getElementById('about-bio2').textContent = portfolioData.about.bio2;

            // Projects Grid
            const projectsContainer = document.getElementById('projects-grid');
            projectsContainer.innerHTML = '';
            portfolioData.projects.forEach((project, index) => {
                const card = document.createElement('div');
                card.className = 'glass-panel rounded-2xl overflow-hidden flex flex-col border border-brand-border hover:border-brand-accent/40 transition-all group';
                
                let mediaMarkup = '';
                if (project.type === 'video') {
                    mediaMarkup = `<video src="${project.mediaUrl}" controls class="w-full h-full object-cover"></video>`;
                } else {
                    mediaMarkup = `<img src="${project.mediaUrl}" alt="${project.title}" class="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500">`;
                }

                card.innerHTML = `
                    <div class="h-52 overflow-hidden relative bg-slate-950 border-b border-brand-border/50">
                        ${mediaMarkup}
                    </div>
                    <div class="p-6 flex-1 flex flex-col justify-between space-y-4">
                        <div class="space-y-2">
                            <h4 class="text-xl font-bold text-white" data-proj-index="${index}" data-proj-field="title">${project.title}</h4>
                            <p class="text-slate-400 text-sm leading-relaxed" data-proj-index="${index}" data-proj-field="description">${project.description}</p>
                        </div>
                        <div class="flex items-center gap-4 text-xs font-semibold pt-4 border-t border-brand-border/60">
                            <a href="${project.demoUrl}" target="_blank" class="text-brand-accent hover:underline flex items-center gap-1">Live Demo <i class="fa-solid fa-arrow-up-right-from-square text-[10px]"></i></a>
                            <a href="${project.githubUrl}" target="_blank" class="text-slate-400 hover:text-white flex items-center gap-1">Repository</a>
                        </div>
                    </div>
                `;
                projectsContainer.appendChild(card);
            });

            // Capabilities Grid
            const capabilitiesContainer = document.getElementById('capabilities-grid');
            capabilitiesContainer.innerHTML = '';
            portfolioData.capabilities.forEach((cap, index) => {
                const box = document.createElement('div');
                box.className = 'glass-panel p-6 rounded-2xl border border-brand-border space-y-3 hover:border-brand-gold/40 transition-all';
                box.innerHTML = `
                    <div class="w-12 h-12 rounded-xl bg-brand-gold/10 border border-brand-gold/20 flex items-center justify-center text-brand-goldLight text-xl">
                        <i class="fa-solid ${cap.icon}"></i>
                    </div>
                    <h4 class="text-lg font-bold text-white" data-cap-index="${index}" data-cap-field="title">${cap.title}</h4>
                    <p class="text-slate-400 text-sm leading-relaxed" data-cap-index="${index}" data-cap-field="desc">${cap.desc}</p>
                `;
                capabilitiesContainer.appendChild(box);
            });

            // Contact & Footer
            const emailElem = document.getElementById('contact-email');
            emailElem.textContent = portfolioData.contact.email;
            emailElem.href = `mailto:${portfolioData.contact.email}`;

            const socialsContainer = document.getElementById('social-links');
            socialsContainer.innerHTML = '';
            portfolioData.contact.socials.forEach(social => {
                const link = document.createElement('a');
                link.href = social.url;
                link.target = "_blank";
                link.className = "w-10 h-10 rounded-full glass-panel flex items-center justify-center text-slate-300 hover:text-brand-accent hover:border-brand-accent transition-all";
                link.innerHTML = `<i class="${social.icon}"></i>`;
                socialsContainer.appendChild(link);
            });

            document.getElementById('footer-copy').textContent = portfolioData.contact.copyright;
        }

        // --- Live Editor Logic ---
        let isAdminMode = false;

        const btnToggleAdmin = document.getElementById('btn-toggle-admin');
        const adminStatusText = document.getElementById('admin-status-text');
        const adminTools = document.getElementById('admin-tools');
        const uploadOverlay = document.getElementById('upload-overlay');
        const photoFileInput = document.getElementById('photo-file-input');
        const heroPhoto = document.getElementById('hero-photo');

        btnToggleAdmin.addEventListener('click', () => {
            isAdminMode = !isAdminMode;
            document.body.classList.toggle('admin-mode', isAdminMode);

            if (isAdminMode) {
                adminStatusText.textContent = "Edit Mode: ON";
                btnToggleAdmin.classList.add('bg-brand-gold', 'text-black');
                adminTools.classList.remove('hidden');
                adminTools.classList.add('flex');
                uploadOverlay.classList.remove('hidden');
                uploadOverlay.classList.add('flex');
                enableContentEditing();
            } else {
                adminStatusText.textContent = "Edit Mode: OFF";
                btnToggleAdmin.classList.remove('bg-brand-gold', 'text-black');
                adminTools.classList.add('hidden');
                adminTools.classList.remove('flex');
                uploadOverlay.classList.add('hidden');
                uploadOverlay.classList.remove('flex');
                disableContentEditing();
            }
        });

        function enableContentEditing() {
            document.querySelectorAll('[data-key], [data-proj-field], [data-cap-field]').forEach(elem => {
                elem.contentEditable = "true";
                elem.addEventListener('input', updateDataObjectFromDOM);
            });
        }

        function disableContentEditing() {
            document.querySelectorAll('[contenteditable="true"]').forEach(elem => {
                elem.contentEditable = "false";
            });
        }

        // Sync DOM changes back into `portfolioData` object
        function updateDataObjectFromDOM(e) {
            const elem = e.target;
            const key = elem.getAttribute('data-key');
            const projIndex = elem.getAttribute('data-proj-index');
            const projField = elem.getAttribute('data-proj-field');
            const capIndex = elem.getAttribute('data-cap-index');
            const capField = elem.getAttribute('data-cap-field');

            if (key) {
                const keys = key.split('.');
                if (keys.length === 2) {
                    portfolioData[keys[0]][keys[1]] = elem.textContent;
                }
            } else if (projIndex !== null && projField) {
                portfolioData.projects[projIndex][projField] = elem.textContent;
            } else if (capIndex !== null && capField) {
                portfolioData.capabilities[capIndex][capField] = elem.textContent;
            }
        }

        // Image Preview Upload Handler
        uploadOverlay.addEventListener('click', () => photoFileInput.click());
        photoFileInput.addEventListener('change', (e) => {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(event) {
                    const result = event.target.result;
                    heroPhoto.src = result;
                    // Note: This only previews, it doesn't save permanently unless hosted
                    portfolioData.identity.photoUrl = result;
                };
                reader.readAsDataURL(file);
            }
        });

        // Save Code Modal Logic
        const btnSaveCode = document.getElementById('btn-save-code');
        const codeModal = document.getElementById('code-modal');
        const btnCloseModal = document.getElementById('btn-close-modal');
        const modalTextarea = document.getElementById('modal-textarea');
        const btnCopyCode = document.getElementById('btn-copy-code');

        btnSaveCode.addEventListener('click', () => {
            const codeString = `let portfolioData = ${JSON.stringify(portfolioData, null, 4)};`;
            modalTextarea.value = codeString;
            codeModal.classList.remove('hidden');
        });

        btnCloseModal.addEventListener('click', () => codeModal.classList.add('hidden'));

        btnCopyCode.addEventListener('click', () => {
            modalTextarea.select();
            navigator.clipboard.writeText(modalTextarea.value);
            btnCopyCode.textContent = "Copied!";
            setTimeout(() => { btnCopyCode.textContent = "Copy to Clipboard"; }, 2000);
        });

        // Initial Initialization
        document.addEventListener('DOMContentLoaded', renderPortfolio);
    </script>
</body>
</html>
