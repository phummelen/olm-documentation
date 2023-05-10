# Open Litter Map Documentation
OLM is a supportive tool for litter pickers. Make a **photo**, **tag** it and **upload** it to the OLM website.
It will show on the map, normally within 24 hours.

## Contents
The documentation is part of the bigger picture, so support litter pickers to *start* and *work* with the OLM tools.
Documentation is provided as is, feel free to reach out to the team to contribute. In any way that's within your possibilities.

## Contribute
If you are a user of OLM and missing some documentatioen, do not hesitate and reach out!<br />
We'd like to add your contributions as they are valuable for you, your companion litter pickers and us as team @OLM.

---

## About the folderstructure
There are two main folders: documentation and deploy.

### Documentation
Here is the real documentation, in different languages. Feel free to add a language, be aware to add in on all necessary locations. Or ask someone to help with it.

### Deploy
We are runnning the documentation within a container. Where the documentation is build using the mkdocs method.<br />
So creating the image, there is the *build/dockerfile* for.<br />
Where the *config/nginx.conf* is used within the runtime container.<br />
Running your version of the container is possible, therefore the *run* folder is there.