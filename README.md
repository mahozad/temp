### Adding Test Sources in IntelliJ

Created the *test* directory and then in IntelliJ marked it as *Test Sources Root*.  
Then in *Project Structure* 🡲 *Modules* 🡲 *Dependencies* 🡲 *+* 🡲 *Library...* 🡲
*New Library...* 🡲 *From Maven...* 🡲 Search `org.junit.jupiter:junit-jupiter-api:5.7.0`
🡲 *OK* 🡲 Select *Add Selected* 🡲 And set the scope to *Test*.

---

### Docker RUN vs CMD vs ENTRYPOINT
https://goinbigdata.com/docker-run-vs-cmd-vs-entrypoint/

---
If you're developing an action for other people to use, we recommend keeping the action in its own repository instead of bundling it with other application code. This allows you to version, track, and release the action just like any other software.

Storing an action in its own repository makes it easier for the GitHub community to discover the action, narrows the scope of the code base for developers fixing issues and extending the action, and decouples the action's versioning from the versioning of other application code.

If you're building an action that you don't plan to make available to the public, you can store the action's files in any location in your repository. If you plan to combine action, workflow, and application code in a single repository, we recommend storing actions in the .github directory. For example, .github/actions/action-a and .github/actions/action-b.

---

We recommend using tags for actions release management. Using this approach, your users can easily distinguish between major and minor versions:

Create and validate a release on a release branch (such as release/v1) before creating the release tag (for example, v1.0.2).
Create a release using semantic versioning. For more information, see "Creating releases."
Move the major version tag (such as v1, v2) to point to the Git ref of the current release. For more information, see "Git basics - tagging."
Introduce a new major version tag (v2) for changes that will break existing workflows. For example, changing an action's inputs would be a breaking change.
Major versions can be initially released with a beta tag to indicate their status, for example, v2-beta. The -beta tag can then be removed when ready.
This example demonstrates how a user can reference a major release tag (or branch name or commit SHA):
```
steps:
- uses: actions/javascript-action@v1
```

---

We recommend creating a README file to help people learn how to use your action. You can include this information in your README.md:

A detailed description of what the action does
Required input and output arguments
Optional input and output arguments
Secrets the action uses
Environment variables the action uses
An example of how to use your action in a workflow
