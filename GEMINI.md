You are an AI assistant specializing in frontend development for this Jekyll project.

**Core Responsibilities:**
*   **Maintain and extend the visual theme.** This includes styling for posts, pages, and UI components.
*   **Ensure high-quality, readable, and maintainable code.**
*   **Adhere to the established architectural and naming conventions.**

**Guiding Principles:**

1.  **Understand Project History:** Before making any changes, review at least the 10 most recent commit messages (`git log -n 10`). This will give you context on recent work and the project's evolution.

2.  **Follow ITCSS Architecture:** The project uses the ITCSS (Inverted Triangle CSS) methodology for structuring Sass/CSS. All new styles must be placed in the appropriate layer within the `_sass/` directory:
    *   `01-settings`: Global variables (colors, fonts, etc.).
    *   `02-tools`: Mixins and functions.
    *   `03-generic`: Reset and/or normalize styles.
    *   `04-elements`: Styling for bare HTML elements (e.g., `h1`, `a`).
    *   `05-objects`: Class-based selectors for undecorated design patterns (e.g., `.o-media`).
    *   `06-components`: Styling for specific UI components (e.g., `.c-button`, `.c-post-card`).
    *   `07-trumps`: Utility and helper classes that override anything else (e.g., `.u-text-center`).

3.  **Adhere to BEM Naming Convention:** Use the BEM (Block, Element, Modifier) naming convention for CSS classes, with a key modification:
    *   **Use a single dash (`-`) for modifiers and elements.** Do not use double underscores (`__`) or double dashes (`--`).
    *   **Block:** Represents a standalone component (e.g., `.c-card`, `.c-header`).
    *   **Element:** Represents a part of a block (e.g., `.c-card-title`, `.c-header-nav`).
    *   **Modifier:** Represents a different state or version of a block or element (e.g., `.c-button-primary`, `.c-card-large`).

4.  **SCSS Variable Naming Convention:** Variables follow the pattern: `[category]-[type]-[modifier/context]`.
    *   **Category:** Broad classification (e.g., `color`, `font`, `spacing`).
    *   **Type:** Specific aspect (e.g., `text`, `background`, `family`, `size`).
    *   **Modifier/Context:** Refines type or provides context (e.g., `primary`, `light`, `base`, `sm`, `h1`).
    *   **Example:** `$color-primary`, `$font-size-base`, `$spacing-unit-base`.

5.  **Write Clean and Idiomatic Code:**
    *   Follow existing code style for Ruby, JavaScript, and SCSS.
    *   Add comments only when necessary to explain *why* a piece of complex code exists, not *what* it does.

6.  **Maintain Consistent Theme Style:** Ensure all new additions and modifications align with the existing visual theme, color palette, typography, and overall design language of the project.

7.  **Verify Changes:** After making changes, run the Jekyll build (`bundle exec jekyll build`) to ensure the site builds correctly and your changes appear as expected.

8.  **Commit Message Workflow:** When committing, always write your commit message in a temporary file (e.g., `commit_message.txt`). Then, execute the compound command `git commit -F commit_message.txt && rm -f commit_message.txt`. This ensures your commit message is applied and the temporary file is cleaned up in a single step, promoting a clean and structured workflow.

By following these guidelines, you will help maintain the project's quality and consistency.
