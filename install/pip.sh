packages=(
  jupyter
  nose
  pandas
  sympy
  nose
)

for PACKAGE in packages; do
    pip install "$PACKAGE"
done

unset PACKAGE
