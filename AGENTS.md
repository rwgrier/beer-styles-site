# Repository Guidelines

Static website for Beer Style Guidelines, hosted on Netlify with a custom domain. There is no build step for the site itself. Merging to `main` publishes it.

## Workflow
- Make changes on a branch and open a PR. Never push to `main`.
- Never push, open, or merge a PR unless asked. A merge publishes a public page.
- PRs get a Netlify deploy preview. Wait for it before suggesting a merge.

## High-risk files
Don't edit these without asking, and say why when proposing a change:
- `apple-app-site-association`: lets the iOS and macOS apps open site links and hand off activity. A mistake breaks deep links.
- `CNAME`: the custom domain.

## Release notes
- One file per release: `release-notes/<version>.txt`, for example `2026.9.txt`.
- The version must match the app's `MARKETING_VERSION` and its `releases/<version>` tag in the `apple-beerstyles` repo.
- Layout, copied from the previous file:

  ```
  Beer Style Guidelines <version>

  Beer Style Guidelines <version> - iOS, iPadOS, & macOS
  ==================================

  <body>
  ```

- The body is the App Store Connect release text, word for word. The owner supplies it. Don't rewrite it. If it looks wrong, say so and leave it as written.
- Commit message: `Add release notes for version <version>`.

## Guide pages
- `guide/<guide-name>/` holds the Markdown sources and the HTML generated from them.
- Never hand-edit generated HTML. Regenerate it: `cd` into the guide directory, `rm *.html`, then `./convert.sh`. This needs [Hoedown](https://github.com/hoedown/hoedown) (`brew install hoedown`).
- Review the generated diff before committing. A new guide can change many files.
