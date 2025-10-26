## 🚀 Job Automation Workflow (n8n)

This project automates job searches for AI / Autonomous Systems roles across Europe, Germany, and India using:
- **n8n workflow:** [`workflow_modified.json`](workflow_modified.json)
- **Keyword file:** [`resume_keywords.json`](resume_keywords.json)

### How to use
1. Import `workflow_modified.json` into n8n.
2. Add your `.env` file with:

SERPAPI_KEY=your_key
SMTP_USER=your_email
SMTP_PASS=your_app_password
EMAIL_TO=your_email

3. Deploy the workflow → it will send daily job results via email.