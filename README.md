icanhazdevops Cookbook
======================
- This cookbook is for standing up web servers based on Apache2 and includes basic iptables rules and system packages.

Requirements
------------
- recipe[icanhazdevops]
- recipe[logrotate]

Attributes
----------

e.g.
#### icanhazdevops::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['icanhazdevops']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### icanhazdevops::default

e.g.
Just include `icanhazdevops` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[icanhazdevops]",
    "recipe[logrotate]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
