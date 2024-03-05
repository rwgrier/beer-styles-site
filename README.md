# Beer Style Guidelines website

[![Netlify Status](https://api.netlify.com/api/v1/badges/349a438c-a190-417e-a1ac-814afce6d70b/deploy-status)](https://app.netlify.com/sites/confident-hugle-b64c83/deploys)

This is the repo for the [Beer Style Guidelines](https://www.beerstyleguidelines.app) website. 

## Individual Guide HTML Generation

### Prerequisite

- Have [Hoedown](https://github.com/hoedown/hoedown) installed (I installed via [Homebrew](https://brew.sh))

### Steps

Here are the steps I take to generate new HTML files. I will usually copy in new markdown files prior to generating new HTML.

- `cd` into the target directory
- `rm *.html` (delete old HTML files)
- `./convert.sh` (generate new HTML files)



