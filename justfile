DATE_VALUE:=`date +%Y-%m-%d`

serve:
  zola serve --drafts

build:
  zola build

blog name:
  touch content/blog/{{DATE_VALUE}}-{{name}}.md
  echo "+++" > content/blog/{{DATE_VALUE}}-{{name}}.md
  cat post-frontmatter.toml >> content/blog/{{DATE_VALUE}}-{{name}}.md
  echo "+++" >> content/blog/{{DATE_VALUE}}-{{name}}.md
  sed -i '' 's/\"DATE_VALUE\"/{{DATE_VALUE}}/g' content/blog/{{DATE_VALUE}}-{{name}}.md
