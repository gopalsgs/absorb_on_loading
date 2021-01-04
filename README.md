# absorb_on_loading

A Package used to ignore the pointer while a button is engaged and also shows a loading indicator on the button while it is engaged.

## How to use

```
AbsorbOnLoading(
  builder: (BuildContext context, AbsorbController absorbController,
      Widget child) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(),
        SizedBox(height: 16),
        TextField(),
        SizedBox(height: 16),
        LoadingButton(
          absorbController,
          onPressed: () async {
            await Future.delayed(Duration(seconds: 5));
          },
          child: Text('Update'),
        )
      ],
    );
  },
 )
```
