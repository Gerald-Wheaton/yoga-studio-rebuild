# Yoga Studio Website Rebuild Project

## Project Overview

**Objective**: Complete rebuild and renovation of a local yoga studio's website to improve user experience, increase class bookings, and better represent the studio's brand and community.

**Target Audience**:

- Current yoga practitioners (ages 25-55)
- Newcomers interested in yoga
- Local community members seeking wellness activities

**Key Goals**:

- Modernize design and improve mobile responsiveness
- Streamline class booking and scheduling
- Showcase instructors and class offerings
- Build community engagement
- Improve SEO and local discoverability

---

# Homepage Specification

## 1. Global & Layout

- **Tech Stack**

  - Next.js + TypeScript + Tailwind CSS

- **Container & Grid**

  - 12-column flex/grid system with 24 px gutters.
  - Centered content up to 1,200 px wide on desktop; full-width on mobile.
  - Global vertical rhythm: 64 px between major sections; 32 px within.

- **Breakpoints**

  - Mobile: ≤ 640 px
  - Tablet: 641–1024 px
  - Desktop: > 1024 px

- **Typography & Spacing**

  - Headline: `text-4xl` (desktop), `text-2xl` (mobile).
  - Body: `text-base` (desktop), `text-sm` (mobile).
  - Buttons: `py-3 px-6`, `rounded-2xl`.

- **Theme Tokens**

  - **Primary**: `#8e88cc`
  - **Secondary**: `#626262`
  - Accent Dark: `#1E1E1E`
  - Accent Light: `#FAFAFA`
  - Font family: Montserrat (headings), Roboto (body)

---

## 2. Navigation & Header

- **Structure & Content**

  - Logo (left), nav links (`About`, `Classes`, `Events`, `Pricing`, `Teacher Trainings 2025`), CTA buttons (`Schedule`, `Log In`) (right).
  - “Schedule”: filled primary button; “Log In”: outlined.

- **Behavior**

  - Desktop: horizontal menu; hover transforms link color to primary.
  - Tablet/Mobile: hamburger icon → slide-in panel from right.
  - Sticky after scroll ≥ 100 px: background transitions from transparent to solid light.
  - Accessibility: `aria-labels` on controls; visible focus styles.

- **Responsive**

  - Mobile: collapse links; logo height shrinks to 32 px.
  - Tablet: show up to 4 links; overflow under “More” dropdown.

---

## 3. Hero Section

- **Layout & Content**

  - Minimum height: 80 vh background carousel.
  - Slides: high-contrast yoga imagery + dark gradient overlay for legibility.
  - Centered text (max-width 600 px): headline, subheadline, primary CTA (“Book Your First Class”), secondary CTA (“View Schedule”).

- **Behavior**

  - Auto-rotate every 6 s; pause on hover/focus.
  - Desktop: arrow nav + pagination dots.
  - Mobile: swipe-enabled; dots only.

- **Accessibility**

  - Images: descriptive `alt` text.
  - Controls: keyboard-navigable.

---

## 4. Featured Classes Widget

- **Purpose**

  - Showcase today’s or popular upcoming classes.

- **Layout & Components**

  - Desktop: horizontal scroll list of cards.
  - Mobile: vertical stack.

- **Card Elements**

  - Class name, time, instructor avatar + name, spots-left badge.
  - “Book Now” button.

- **Filters & Controls**

  - Day-of-week pills (Mon–Sun), default “All”.
  - Desktop: “Instructor” dropdown + “Type” multi-select.
  - Mobile: filter icon → bottom sheet with same controls.

- **Behavior**

  - Filters trigger client-side API fetch; show shimmer loader.
  - Cards animate (fade + upward motion) on load.

---

## 5. Upcoming Events & Offers

- **Layout**

  - Masonry grid: 1 col (mobile), 2 cols (tablet), 4 cols (desktop).

- **Card Details**

  - Event image, title overlay bottom, date/time badge, “Learn More” link.

- **Interactions**

  - Hover: elevate card (`shadow-lg`), darken title background.
  - Click navigates to event detail page.

- **Pagination**

  - “View More” button adds next 8 items inline.

---

## 6. Social Proof & Community CTA

- **Purpose**

  - Build trust and community engagement.

- **Layout**

  - Three columns (stacked mobile):

  1. ★★★★★ reviews + logos (Google, Yelp)
  2. Instagram feed preview (latest 4 posts)
  3. Email signup (“Join Our Community”).

- **Behavior**

  - Lazy-load Instagram images.
  - Email form: validate format; inline success message.

---

## 7. Footer

- **Content**

  - Left: logo + tagline.
  - Middle: nav links + `Blog`, `Contact`.
  - Right: social icons (Facebook, Instagram, YouTube).
  - Bottom line: © 2025 Studio Name | Terms & Privacy.

- **Responsive**

  - Mobile: accordion sections for nav + social links.

---

## 8. Performance & SEO

- **SEO**

  - Meta title/description, Open Graph tags.
  - Schema.org: `Organization`, `Event` JSON‑LD.

- **Performance**

  - Serve images as WebP with `srcset`.
  - Lazy-load offscreen content.
  - Inline critical CSS for hero.
  - Defer non-critical JS.

- **Analytics**

  - Integrate Google Analytics or Plausible.
  - Track CTA clicks + form submissions.

---

## 9. Coding Standards

- **File Naming**

  - Kebab-case: `class-card.tsx`, `hero-section.tsx`.

- **Code Formatting**

  - Indentation: 4 spaces.
  - Line length: ≤ 80 characters.
  - Braces: opening on same line.

- **Naming Conventions**

  - Variables: snake_case (`user_name`).
  - Functions: camelCase (`calculateSum`).
  - Classes: PascalCase (`UserAccount`).

- **Error Handling**

  - In async/try: `try { ... } catch (error) { ... }`.
  - In React effects: wrap fetches in try/catch.

- **Code Reusability**

  - Extract repeated logic into utilities.
  - Place shared code in `/lib` or `/utils`.

---

### Next Steps for Agents

1. Scaffold layout & theme in Tailwind config.
2. Build React/TS components per section.
3. Wire up responsiveness at defined breakpoints.
4. Configure ESLint/Prettier to enforce coding standards.
5. Write unit, integration, and accessibility tests.
