# ARCHE Ingest Template (OS: LINUX)

This is a template for ingesting data into ARCHE. It is based on the [ARCHE Deposition Process](https://arche.acdh.oeaw.ac.at/browser/deposition-process/).

## Usage for XML to RDF Transformation

1. Clone or Fork this repository
2. Add your data to the `/data` folder or use the `/scripts/sh/fetch_data.sh` file to download your data.
3. If you use the `/scripts/sh/fetch_data.sh` file, make sure to edit the script to download your data. Uncomment the Actions workflow step 'Fetch data' of the `.github/workflows/arche-XXXX.yml` file to run the script.
4. Edit the `/scripts/xsl/arche.xsl` file to transform your data into ARCHE's RDF format.
5. Create a `arche_constants.rdf` file in the `/data/meta` folder (Find an example in the `/data-EXAMPLE/meta` folder).
6. (Optional) Use the `/scripts/sh/attr_denorm.sh` file to denormalize your TEI/XML data. [Documentation](https://github.com/acdh-oeaw/acdh-tei-pyutils). If you use the `/scripts/sh/attr_denorm.sh` file, make sure to edit the script to denormalize your data. Uncomment the Actions workflow step 'Denormalize data' of the `.github/workflows/arche-XXXX.yml` file to run the script.
7. Create a Python virtual environment run `python -m venv env` and activate it with `source env/bin/activate`. 
7. Test your transformation with the `/scripts/ant/build.sh` file to locally build ARCHE's RDF metadata.
8. Edit the `.github/workflows/arche-XXXX.yml` file to deploy your data to ARCHE.
9. Commit and push your changes to GitHub.
10. Set up GitHub Action Secrets for:
    - `ARCHE_LOGIN`: Your ARCHE username
    - `ARCHE_PASSWORD`: Your ARCHE password
    - `REDMINE_TOKEN`: REDMINE Ticket ID
11. Dispatch the GitHub Action to deploy your data to ARCHE.

## Folder Structure

* `/data`: Data folder (must be manually created or fetched with `/scripts/sh/fetch_data.sh`)
  * `/meta`: Metadata folder
  * `/indexes`: TEI/XML indexes folder
  * `/editions`: TEI/XML edition folder
* `/data-EXAMPLE`: Example data folder (same as `/data` folder)
* `/scripts`: Scripts folder
  * `/sh`: Shell scripts folder
  * `/xsl`: XSLT scripts folder
  * `/ant`: Ant scripts folder
* `/arche`: Output folder with XSL Transformation to ARCHE's RDF metadata
* `/.github/workflows`: GitHub Actions folder