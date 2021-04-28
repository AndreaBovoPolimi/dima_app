class Ingredient {
  int id;
  String original;
  String originalName;
  String name;
  int amount;
  String unit;
  String unitShort;
  String unitLong;
  List<String> possibleUnits;
  EstimatedCost estimatedCost;
  String consistency;
  String aisle;
  String image;
  List<Null> meta;
  Nutrition nutrition;
  List<Null> categoryPath;

  Ingredient(
      {this.id,
      this.original,
      this.originalName,
      this.name,
      this.amount,
      this.unit,
      this.unitShort,
      this.unitLong,
      this.possibleUnits,
      this.estimatedCost,
      this.consistency,
      this.aisle,
      this.image,
      this.meta,
      this.nutrition,
      this.categoryPath});

  Ingredient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    original = json['original'];
    originalName = json['originalName'];
    name = json['name'];
    amount = json['amount'];
    unit = json['unit'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
    possibleUnits = json['possibleUnits'].cast<String>();
    estimatedCost = json['estimatedCost'] != null
        ? new EstimatedCost.fromJson(json['estimatedCost'])
        : null;
    consistency = json['consistency'];
    aisle = json['aisle'];
    image = json['image'];
    if (json['meta'] != null) {
      meta = new List<Null>();
      json['meta'].forEach((v) {
        meta.add(new Null.fromJson(v));
      });
    }
    nutrition = json['nutrition'] != null
        ? new Nutrition.fromJson(json['nutrition'])
        : null;
    if (json['categoryPath'] != null) {
      categoryPath = new List<Null>();
      json['categoryPath'].forEach((v) {
        categoryPath.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['original'] = this.original;
    data['originalName'] = this.originalName;
    data['name'] = this.name;
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    data['unitShort'] = this.unitShort;
    data['unitLong'] = this.unitLong;
    data['possibleUnits'] = this.possibleUnits;
    if (this.estimatedCost != null) {
      data['estimatedCost'] = this.estimatedCost.toJson();
    }
    data['consistency'] = this.consistency;
    data['aisle'] = this.aisle;
    data['image'] = this.image;
    if (this.meta != null) {
      data['meta'] = this.meta.map((v) => v.toJson()).toList();
    }
    if (this.nutrition != null) {
      data['nutrition'] = this.nutrition.toJson();
    }
    if (this.categoryPath != null) {
      data['categoryPath'] = this.categoryPath.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EstimatedCost {
  double value;
  String unit;

  EstimatedCost({this.value, this.unit});

  EstimatedCost.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['unit'] = this.unit;
    return data;
  }
}

class Nutrition {
  List<Nutrients> nutrients;
  List<Properties> properties;
  List<Flavanoids> flavanoids;
  CaloricBreakdown caloricBreakdown;
  WeightPerServing weightPerServing;

  Nutrition(
      {this.nutrients,
      this.properties,
      this.flavanoids,
      this.caloricBreakdown,
      this.weightPerServing});

  Nutrition.fromJson(Map<String, dynamic> json) {
    if (json['nutrients'] != null) {
      nutrients = new List<Nutrients>();
      json['nutrients'].forEach((v) {
        nutrients.add(new Nutrients.fromJson(v));
      });
    }
    if (json['properties'] != null) {
      properties = new List<Properties>();
      json['properties'].forEach((v) {
        properties.add(new Properties.fromJson(v));
      });
    }
    if (json['flavanoids'] != null) {
      flavanoids = new List<Flavanoids>();
      json['flavanoids'].forEach((v) {
        flavanoids.add(new Flavanoids.fromJson(v));
      });
    }
    caloricBreakdown = json['caloricBreakdown'] != null
        ? new CaloricBreakdown.fromJson(json['caloricBreakdown'])
        : null;
    weightPerServing = json['weightPerServing'] != null
        ? new WeightPerServing.fromJson(json['weightPerServing'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nutrients != null) {
      data['nutrients'] = this.nutrients.map((v) => v.toJson()).toList();
    }
    if (this.properties != null) {
      data['properties'] = this.properties.map((v) => v.toJson()).toList();
    }
    if (this.flavanoids != null) {
      data['flavanoids'] = this.flavanoids.map((v) => v.toJson()).toList();
    }
    if (this.caloricBreakdown != null) {
      data['caloricBreakdown'] = this.caloricBreakdown.toJson();
    }
    if (this.weightPerServing != null) {
      data['weightPerServing'] = this.weightPerServing.toJson();
    }
    return data;
  }
}

class Nutrients {
  String title;
  String name;
  double amount;
  String unit;

  Nutrients({this.title, this.name, this.amount, this.unit});

  Nutrients.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    name = json['name'];
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['name'] = this.name;
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    return data;
  }
}

class Properties {
  String name;
  String title;
  int amount;
  String unit;

  Properties({this.name, this.title, this.amount, this.unit});

  Properties.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['title'] = this.title;
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    return data;
  }
}

class CaloricBreakdown {
  int percentProtein;
  int percentFat;
  int percentCarbs;

  CaloricBreakdown({this.percentProtein, this.percentFat, this.percentCarbs});

  CaloricBreakdown.fromJson(Map<String, dynamic> json) {
    percentProtein = json['percentProtein'];
    percentFat = json['percentFat'];
    percentCarbs = json['percentCarbs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['percentProtein'] = this.percentProtein;
    data['percentFat'] = this.percentFat;
    data['percentCarbs'] = this.percentCarbs;
    return data;
  }
}

class WeightPerServing {
  int amount;
  String unit;

  WeightPerServing({this.amount, this.unit});

  WeightPerServing.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    return data;
  }
}

class Ingredient {
  int id;
  String original;
  String originalName;
  String name;
  int amount;
  String unit;
  String unitShort;
  String unitLong;
  List<String> possibleUnits;
  EstimatedCost estimatedCost;
  String consistency;
  String aisle;
  String image;
  List<Null> meta;
  Nutrition nutrition;
  List<Null> categoryPath;

  Ingredient(
      {this.id,
      this.original,
      this.originalName,
      this.name,
      this.amount,
      this.unit,
      this.unitShort,
      this.unitLong,
      this.possibleUnits,
      this.estimatedCost,
      this.consistency,
      this.aisle,
      this.image,
      this.meta,
      this.nutrition,
      this.categoryPath});

  Ingredient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    original = json['original'];
    originalName = json['originalName'];
    name = json['name'];
    amount = json['amount'];
    unit = json['unit'];
    unitShort = json['unitShort'];
    unitLong = json['unitLong'];
    possibleUnits = json['possibleUnits'].cast<String>();
    estimatedCost = json['estimatedCost'] != null
        ? new EstimatedCost.fromJson(json['estimatedCost'])
        : null;
    consistency = json['consistency'];
    aisle = json['aisle'];
    image = json['image'];
    if (json['meta'] != null) {
      meta = new List<Null>();
      json['meta'].forEach((v) {
        meta.add(new Null.fromJson(v));
      });
    }
    nutrition = json['nutrition'] != null
        ? new Nutrition.fromJson(json['nutrition'])
        : null;
    if (json['categoryPath'] != null) {
      categoryPath = new List<Null>();
      json['categoryPath'].forEach((v) {
        categoryPath.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['original'] = this.original;
    data['originalName'] = this.originalName;
    data['name'] = this.name;
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    data['unitShort'] = this.unitShort;
    data['unitLong'] = this.unitLong;
    data['possibleUnits'] = this.possibleUnits;
    if (this.estimatedCost != null) {
      data['estimatedCost'] = this.estimatedCost.toJson();
    }
    data['consistency'] = this.consistency;
    data['aisle'] = this.aisle;
    data['image'] = this.image;
    if (this.meta != null) {
      data['meta'] = this.meta.map((v) => v.toJson()).toList();
    }
    if (this.nutrition != null) {
      data['nutrition'] = this.nutrition.toJson();
    }
    if (this.categoryPath != null) {
      data['categoryPath'] = this.categoryPath.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EstimatedCost {
  double value;
  String unit;

  EstimatedCost({this.value, this.unit});

  EstimatedCost.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['unit'] = this.unit;
    return data;
  }
}

class Nutrition {
  List<Nutrients> nutrients;
  List<Properties> properties;
  List<Flavanoids> flavanoids;
  CaloricBreakdown caloricBreakdown;
  WeightPerServing weightPerServing;

  Nutrition(
      {this.nutrients,
      this.properties,
      this.flavanoids,
      this.caloricBreakdown,
      this.weightPerServing});

  Nutrition.fromJson(Map<String, dynamic> json) {
    if (json['nutrients'] != null) {
      nutrients = new List<Nutrients>();
      json['nutrients'].forEach((v) {
        nutrients.add(new Nutrients.fromJson(v));
      });
    }
    if (json['properties'] != null) {
      properties = new List<Properties>();
      json['properties'].forEach((v) {
        properties.add(new Properties.fromJson(v));
      });
    }
    if (json['flavanoids'] != null) {
      flavanoids = new List<Flavanoids>();
      json['flavanoids'].forEach((v) {
        flavanoids.add(new Flavanoids.fromJson(v));
      });
    }
    caloricBreakdown = json['caloricBreakdown'] != null
        ? new CaloricBreakdown.fromJson(json['caloricBreakdown'])
        : null;
    weightPerServing = json['weightPerServing'] != null
        ? new WeightPerServing.fromJson(json['weightPerServing'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.nutrients != null) {
      data['nutrients'] = this.nutrients.map((v) => v.toJson()).toList();
    }
    if (this.properties != null) {
      data['properties'] = this.properties.map((v) => v.toJson()).toList();
    }
    if (this.flavanoids != null) {
      data['flavanoids'] = this.flavanoids.map((v) => v.toJson()).toList();
    }
    if (this.caloricBreakdown != null) {
      data['caloricBreakdown'] = this.caloricBreakdown.toJson();
    }
    if (this.weightPerServing != null) {
      data['weightPerServing'] = this.weightPerServing.toJson();
    }
    return data;
  }
}

class Nutrients {
  String title;
  String name;
  double amount;
  String unit;

  Nutrients({this.title, this.name, this.amount, this.unit});

  Nutrients.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    name = json['name'];
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['name'] = this.name;
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    return data;
  }
}

class Properties {
  String name;
  String title;
  int amount;
  String unit;

  Properties({this.name, this.title, this.amount, this.unit});

  Properties.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    title = json['title'];
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['title'] = this.title;
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    return data;
  }
}

class CaloricBreakdown {
  int percentProtein;
  int percentFat;
  int percentCarbs;

  CaloricBreakdown({this.percentProtein, this.percentFat, this.percentCarbs});

  CaloricBreakdown.fromJson(Map<String, dynamic> json) {
    percentProtein = json['percentProtein'];
    percentFat = json['percentFat'];
    percentCarbs = json['percentCarbs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['percentProtein'] = this.percentProtein;
    data['percentFat'] = this.percentFat;
    data['percentCarbs'] = this.percentCarbs;
    return data;
  }
}

class WeightPerServing {
  int amount;
  String unit;

  WeightPerServing({this.amount, this.unit});

  WeightPerServing.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['unit'] = this.unit;
    return data;
  }
}
