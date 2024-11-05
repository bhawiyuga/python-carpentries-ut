for file in *.md; do
  marp "$file" --html -o "${file%.md}.html"
done