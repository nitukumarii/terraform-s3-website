
# 🌐 Terraform S3 Static Website Hosting

This project provisions an **Amazon S3 bucket** using **Terraform** to host a static website with **public access**. It includes a portfolio page (`index.html`), an error page (`error.html`), and supports image upload (`profile.jpg`).

## 📁 Project Structure

. ├── index.html ├── error.html ├── profile.jpg ├── main.tf ├── variables.tf ├── outputs.tf └── README.md


## 🚀 What This Project Does

- Creates a secure, publicly accessible **S3 bucket**
- Uploads and configures static website files
- Enables **S3 static website hosting**
- Adds ACL and metadata like `Content-Type`
- (Optional) Uses `aws_s3_object` to upload assets like images

## ⚙️ Technologies Used

- [Terraform](https://www.terraform.io/)
- [AWS S3](https://aws.amazon.com/s3/)
- [Git](https://git-scm.com/)
- Static web technologies (HTML/CSS)

## 📌 Requirements

- AWS CLI configured (`aws configure`)
- Terraform installed (`terraform -v`)
- Git installed (`git --version`)

## 🛠️ How to Use

1. **Clone the Repository**

```bash
git clone https://github.com/nitukumarii/terraform-s3-website.git
cd terraform-s3-website

1.**Initialize Terraform**
terraform init
2.**Review the Plan**
terraform plan
3.**Apply the Configuration**
terraform apply

Visit the Website
Open the output static website URL in your browser.
![image](https://github.com/user-attachments/assets/f0c0cd6c-41ca-4839-b601-873034942ec0)


🔄 Cleanup
To remove the resources and avoid costs:
terraform destroy


Reach out to me for any doubt :)

