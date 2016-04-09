# php-cookbook

This cookbook is a wrapper cookbook for the [php cookbook](https://github.com/chef-cookbooks/php).

## Supported Platforms

Ubuntu

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['php-wrapper']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### php-cookbook::default

Include `php-wrapper` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[php-cookbook::default]"
  ]
}
```

## License and Authors

Author:: YOUR_NAME (<YOUR_EMAIL>)
