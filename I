<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Intrinsic Value Calculator</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      text-align: center;
      padding: 20px;
    }

    .calculator {
      background-color: white;
      border-radius: 8px;
      padding: 20px;
      box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
      width: 80%;
      max-width: 500px;
      margin: auto;
    }

    h1 {
      color: #4CAF50;
      font-size: 24px;
    }

    input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    button {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
    }

    button:hover {
      background-color: #45a049;
    }

    .result {
      font-weight: bold;
      font-size: 20px;
      color: #333;
      margin-top: 20px;
    }
  </style>
</head>
<body>

  <div class="calculator">
    <h1>Intrinsic Value Calculator</h1>
    <p>Enter the following values:</p>

    <label for="eps">EPS:</label>
    <input type="number" id="eps" placeholder="Enter EPS value">

    <label for="growth">Sales Growth (G):</label>
    <input type="number" id="growth" placeholder="Enter Sales Growth (%)">

    <label for="yield">AAA Bond Yield (Y):</label>
    <input type="number" id="yield" placeholder="Enter Bond Yield (%)">

    <button onclick="calculateIntrinsicValue()">Calculate</button>

    <p id="result" class="result"></p>
  </div>

  <script>
    function calculateIntrinsicValue() {
      // Get the input values
      const eps = parseFloat(document.getElementById("eps").value);
      const growth = parseFloat(document.getElementById("growth").value);
      const yieldValue = parseFloat(document.getElementById("yield").value);

      // Check if inputs are valid
      if (isNaN(eps) || isNaN(growth) || isNaN(yieldValue) || yieldValue === 0) {
        document.getElementById("result").textContent = "❌ Please enter valid numbers for all fields (Y cannot be zero).";
        return;
      }

      // Calculate intrinsic value (IS)
      const IS = eps * (8.5 + (2 * growth)) * 4.4 / yieldValue;

      // Display the result
      document.getElementById("result").textContent = `✅ Intrinsic Value: ${IS.toFixed(2)}`;
    }
  </script>

</body>
</html>
