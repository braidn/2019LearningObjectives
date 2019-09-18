type url = {
  path: list(string),
  hash: string,
  search: string,
};

[@react.component]
let make = () => {
  let url = ReasonReactRouter.useUrl();
  let page =
    switch (url.path) {
    | ["product", id] => <Product id />
    | ["products"] => <AllProducts />
    | ["shop"]
    | ["shop", "index"] => <Shop />
    | [] => <Root />
    | _ => <Root />
    };

  <div> page </div>;
};
