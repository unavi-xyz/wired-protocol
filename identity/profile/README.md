# Profile

Users can create a profile to share information about themselves. Here is an example of a profile:

```json
{
  "name": "Kayh",
  "bio": "I love anime!",
  "image": "./profile-picture.png",
  "background": "./profile-background.png",
  "links": [
    {
      "name": "Twitter",
      "url": "https://twitter.com/kayh_online"
    },
    {
      "name": "GitHub",
      "url": "https://github.com/kayhhh"
    }
  ]
}
```

## Extras

An `extras` field can be added to the object, which can contain any additional information related to the profile. This field is intended to make the protocol extensible, as anyone can add application-specific data to the json.

```json
{
  ...
  "extras": {
    "favoriteFood": "pizza"
  }
}
```
