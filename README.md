# 🐱 Hypothesis Testing with Cats Dataset & Meditation Study

This report presents statistical hypothesis testing using R for two different datasets:
1. The **`cats` dataset** from the `MASS` library.
2. A **meditation and sleep quality dataset** involving student participants.

---

## 📊 Part 1: Cats Dataset – Body Weight Analysis

### 🔍 Objective:
Analyze whether there is a statistically significant difference in the **body weight** of male and female cats.

### 🧪 Normality Testing:

- **Male Cats:**
  - **Shapiro-Wilk Test p-value:** 0.119
  - ✅ The body weight follows a normal distribution.
  
- **Female Cats:**
  - **Shapiro-Wilk Test p-value:** 0.0003754
  - ❌ The body weight does **not** follow a normal distribution.

### 🔎 Two-Sample Hypothesis Test:

- **Test Used:** Welch Two Sample *t*-test
- **Null Hypothesis (H₀):** No significant difference in average body weight between male and female cats.
- **Alternative Hypothesis (H₁):** A significant difference exists in average body weights.
- **p-value:** Very low (<< 0.05)
- **95% CI:** (0.418, 0.663)
- **Conclusion:** ✅ Male cats weigh significantly more than female cats.

---

## 🧘‍♂️ Part 2: Meditation and Sleep Score Study

### 🧪 Dataset Details:
Sleep scores for 10 students were measured **before** and **after** a meditation workshop.

### 🧪 F-Test for Variance Equality:

- **p-value:** 0.2379
- ✅ No significant difference in variances — suitable for paired *t*-test.

### 🧪 Paired *t*-Test (95% Confidence Level):

- **Null Hypothesis (H₀):** No significant difference in mean sleep scores before and after meditation.
- **p-value:** 0.08322
- ❌ Fail to reject H₀ → No significant difference at **95% confidence**.
- **95% CI:** (-1.34, 0.10)

### 🧪 Paired *t*-Test (90% Confidence Level):

- **p-value:** 0.08322 (still)
- ✅ Reject H₀ at **90% confidence** level.
- **90% CI:** (-1.20, -0.04)
- ✔️ Suggests a **significant improvement in sleep scores** due to meditation.

---

## ✅ Conclusion

- Male cats weigh significantly more than female cats based on the Welch *t*-test.
- Meditation improves sleep scores, but only at a **90% confidence level**, not 95%.
- Confidence intervals play a crucial role in interpreting statistical significance.

---

## 📚 Citations

- R Documentation. (2023). *An Introduction to R*. [CRAN Manual](https://cran.r-project.org/doc/manuals/r-release/R-intro.html#Related-software-and-documentation)
- Byju's. (2023). *Null Hypothesis*. [Byju's Math](https://byjus.com/maths/null-hypothesis/)

## 🧠 Author  
**Mohammed Saif Wasay**  
*Data Analytics Graduate – Northeastern University*  
*Machine Learning Enthusiast | Passionate about turning data into insights*

🔗 [Connect with me on LinkedIn](https://www.linkedin.com/in/mohammed-saif-wasay-4b3b64199/)
