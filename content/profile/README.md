# Profile

A user can store information about themselves within a profile. Here is an example `profile.json`:

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
  // ...
  "extras": {
    "favoriteFood": "pizza"
  }
}
```
