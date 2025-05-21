# Python als Vergleich
# Vielfache von 2 von 1 bis 10
doppelte = [x * 2 for x in range(1, 11)]

# Bedingung: Nur gerade Zahlen von 1 bis 20
gerade_zahlen = [x for x in range(1, 21) if x % 2 == 0]

# Kombination mehrerer Listen
kombinationen = [(x, y) for x in [1, 2] for y in ['a', 'b']]

# Mehreren Bedingungen
zahlen_ohne_drei = [x for x in range(1, 21) if x % 3 != 0 and x % 4 != 0]

# Mit einer Funktion
quadrate = [x ** 2 for x in range(1, 11)]

# Ein kleines Beispiel, das Pythagoräische Tripel erzeugt
pythagoreische_tripel = [
    (a, b, c)
    for c in range(1, 31)
    for b in range(1, 31)
    for a in range(1, 31)
    if a * a + b * b == c * c and a < b and b < c
]

def main():
    print("Doppelte:")
    print(doppelte)

    print("\nGerade Zahlen:")
    print(gerade_zahlen)

    print("\nKombinationen:")
    print(kombinationen)

    print("\nZahlen ohne 3 und 4:")
    print(zahlen_ohne_drei)

    print("\nQuadrate:")
    print(quadrate)

    print("\nPythagoreische Tripel:")
    print(pythagoreische_tripel)

if __name__ == "__main__":
    main()
