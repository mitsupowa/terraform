# Parameters to authenticate with Oracle Cloud Infrastructure
tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaaw7qkcglkhecp6bv3g2ww2tprsdwzkvwt65vuvtygo2657iddifjq"
user_ocid="ocid1.user.oc1..aaaaaaaawpkk6h3iifho4ymabgh3o7az6s7tfw4xfzlztnjncgiezitp7dba"
fingerprint="d7:7d:6c:2b:1e:c1:99:10:59:db:17:83:20:bd:a6:54"
private_key_path="/home/raul/.oci/oci_api_key.pem"

compartment_ocid="ocid1.tenancy.oc1..aaaaaaaaw7qkcglkhecp6bv3g2ww2tprsdwzkvwt65vuvtygo2657iddifjq"
# Leave empty if your private key does not have a password
private_key_password=""

# See https://docs.oracle.com/pls/topic/lookup?ctx=cloud&id=oci_general_regions
home_region="uk-london-1"
region="uk-london-1"

# A short identifier for the application, used as a prefix for naming the compartments and other resources
app_tag="prueba"

# The environment that you're creating resources for: test, dev, prod, or staging
environment="dev"

# Base CIDR for the VCN
vcn_cidr="10.0.0.0/16"
