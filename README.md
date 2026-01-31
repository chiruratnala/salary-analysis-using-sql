# Data Science Salary Analysis (2020–2023)

## 📌 Project Overview
This project performs a comprehensive analysis of the global Data Science job market from 2020 to 2023. Using SQL, the analysis identifies key drivers of compensation, including experience levels, job roles, company sizes, and geographic locations.

**Goal**: Provide actionable insights for job seekers and organizations to understand market dynamics and salary trends.

## 🧪 Analysis Modules

### 1. Overall Salary Statistics
- Computed average, minimum, and maximum salary in USD for all records.
- Insight: Salaries span a wide range, from entry-level roles to highly specialized or senior positions, showing strong variability across the market.[file:1]  

### 2. Salary vs Work Year
- Grouped salaries by work year to observe temporal trends.  
- Insight: Data science salaries increased significantly over time, with the strongest growth after 2021 as demand for data expertise accelerated.[file:1]  

### 3. Salary vs Experience Level
- Aggregated salaries by experience level (e.g., Entry, Mid, Senior, Executive).  
- Insight: Salary rises sharply with experience, and pay variability becomes much larger at senior and executive levels due to specialization and leadership responsibilities.[file:1]  

### 4. Remote Ratio vs Salary
- Compared salaries across remote ratios (on-site, hybrid, fully remote).  
- Insight: Fully remote and fully on-site roles generally pay more than hybrid roles and show a wider salary range, where top earners are more common.[file:1]  

### 5. Employment Type vs Salary
- Analyzed salary distribution by employment type (full-time, part-time, etc.).
- Insight: Full-time positions offer the highest and most stable salaries, while part-time roles pay the least and display the largest variation.[file:1]  

### 6. Company Size vs Salary
- Grouped salaries by company size (small, medium, large).
- Insight: Medium and large companies pay higher salaries than small firms, with medium-sized companies often providing the best balance overall.[file:1]  

### 7. Job Roles: Demand and Pay

#### Top Job Roles by Number of Jobs
- Counted number of records per job title to estimate demand.  
- Insight: Data Engineer and Data Scientist roles dominate in job count, while research-focused and niche positions have much lower demand.[file:1]  

#### Top 10 Highest Paying Job Roles
- Ranked job titles by average salary.  
- Insight: Leadership and specialized architecture roles earn the highest salaries but appear far less frequently in the market.[file:1]  

### 8. Company Location vs Salary & Demand

#### Salary by Company Location (Top 10 Countries)
- Calculated average salaries for the top hiring countries.  
- Insight: Some countries offer very high salaries despite fewer roles, indicating higher pay to attract scarce, specialized talent.[file:1]  

#### Top 10 Countries by Job Count
- Ranked countries by total number of jobs.  
- Insight: The United States dominates job availability, while other countries have significantly fewer openings.[file:1]  

### 9. Employee Residence vs Salary & Demand

#### Top 10 Employee Residences by Median Salary
- Computed median salary by employee residence.  
- Insight: Certain countries pay very high salaries to data professionals despite having fewer workers, suggesting premium pay for rare skills.[file:1]  

#### Top 10 Employee Residences by Job Count
- Counted jobs by employee residence.  
- Insight: The United States has the highest concentration of data science workers, while other countries have much smaller workforces.[file:1]  

### 10. Multidimensional Analyses

#### Company Location vs Remote Ratio vs Salary
- Cross-tabbed location, remote ratio, and salary.  
- Insight: Salaries differ more by country than by work mode; high-paying countries like the United States and Canada offer strong salaries across all work types, while lower-paying countries show larger gaps between remote, hybrid, and on-site roles.[file:1]  

#### Experience vs Remote Ratio vs Salary
- Analyzed salary by both experience level and remote ratio.  
- Insight: Salary grows strongly with experience, and at every experience level on-site roles generally pay more than remote and hybrid positions, especially at senior and executive levels.[file:1]  

#### Company Size vs Experience vs Salary
- Combined company size and experience level in salary analysis.
- Insight: Across all experience levels, medium-sized companies tend to pay the most, with salary gaps widening at senior and executive stages while entry-level pay is similar across sizes.[file:1]  

#### Company Size vs Remote Ratio vs Salary
- Examined salary by company size and work mode.
- Insight: Medium-sized companies pay the highest salaries for both remote and on-site work; small companies consistently offer lower pay regardless of work mode, and large companies sit in between.[file:1]  

### 11. Demand vs Pay by Job Role
- Compared number of openings per title against average salary.  
- Insight: The highest-paying jobs are usually specialized leadership roles with fewer openings, whereas roles with many opportunities tend to offer moderate pay, proving that high demand does not always mean high salary.[file:1]  

## 🛠️ Tools & Technologies
- **Database**: MySQL
- **Analysis Tool**: MySQL Workbench (Result Grid analysis)
- **Documentation**: Markdown

## 🧠 Final Conclusion
The data science market rewards **specialization and experience** over simple job volume. While the US remains the hub for opportunity, top-tier compensation is concentrated in **senior, specialized roles** within medium-to-large companies that favor **remote or on-site arrangements** over hybrid models.

