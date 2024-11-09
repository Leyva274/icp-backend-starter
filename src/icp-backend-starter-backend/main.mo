 /*actor{
   public query func greet(name : Text) : async Text {
    return "nombre, " # name # "!";
     };
 type AirlineTicket = {
  name: Text;
  age: Nat;
  originCity: Text;
  destinationCity: Text;
  departureDate: Text;
  returnDate: Text;
  ticketID: Text;
};

public func fillAirlineTicketForm(name: Text, age: Nat, originCity: Text, destinationCity: Text, isRoundTrip: Bool) :
 AirlineTicket {
  let departureDate = generateRandomDate();
let returnDate = if (isRoundTrip) {
  generateRandomDate();
} else {
  departureDate;
};
  let ticketID = generateUniqueID();
  return {
    name = name;
    age = age;
    originCity = originCity;
    destinationCity = destinationCity;
    departureDate = departureDate;
    returnDate = returnDate;
    ticketID = ticketID;
  };
};

func generateRandomDate() : Text {
  // Lógica para generar fechas aleatorias
  // ...
  return "Fecha aleatoria generada";
};

func generateUniqueID() : Text {
  // Lógica para generar una ID única
  // ...
  return "ID única generada";
};

public func showPurchaseConfirmation(ticket: AirlineTicket) : Text {
  return "¡Su boleto ha sido comprado con éxito! Su ID de boleto es: " # ticket.ticketID;
};
  };*/
/*actor AirlineTicketActor {

  type AirlineTicket = {
    name: Text;
    age: Nat;
    originCity: Text;
    destinationCity: Text;
    departureDate: Text;
    returnDate: Text;
    ticketID: Text;
  };

  public func fillAirlineTicketForm(name: Text, age: Nat, originCity: Text, destinationCity: Text, isRoundTrip: Bool) = AirlineTicket {
    let departureDate = generateRandomDate();
    let returnDate = if (isRoundTrip) {
      generateRandomDate();
    } else {
      departureDate;
    };
    let ticketID = generateUniqueID();
    return {
      name = name;
      age = age;
      originCity = originCity;
      destinationCity = destinationCity;
      departureDate = departureDate;
      returnDate = returnDate;
      ticketID = ticketID;
    };
  };

  func generateRandomDate() : Text {
    // Lógica para generar fechas aleatorias
    // ...
    return "Fecha aleatoria generada";
  };

  func generateUniqueID() : Text {
    // Lógica para generar una ID única
    // ...
    return "ID única generada";
  };

  public func showPurchaseConfirmation(ticket: AirlineTicket) : Text {
    return "¡Su boleto ha sido comprado con éxito! Su ID de boleto es: " # ticket.ticketID;
  };
};*/


/*actor AirlineTicketActor {

  type AirlineTicket = {
    name: Text;
    age: Nat;
    originCity: Text;
    destinationCity: Text;
    departureDate: Text;
    returnDate: Text;
    ticketID: Text;
  };

  public func fillAirlineTicketForm(name: Text, age: Nat, originCity: Text, destinationCity: Text, isRoundTrip: Bool) : AirlineTicket {
    let departureDate = generateRandomDate();
    let returnDate = if (isRoundTrip) {
      generateRandomDateAfter(departureDate); // Generar una fecha después de la fecha de salida
    } else {
      "No aplica"; // Indicar que no hay fecha de retorno
    };
    let ticketID = generateUniqueID();
    return {
      name = name;
      age = age;
      originCity = originCity;
      destinationCity = destinationCity;
      departureDate = departureDate;
      returnDate = returnDate;
      ticketID = ticketID;
    };
  };

  func generateRandomDate() : Text {
    // Lógica para generar fechas aleatorias
    // ...
    return "Fecha aleatoria generada";
  };

  func generateRandomDateAfter(startDate: Text) : Text {
    // Lógica para generar una fecha aleatoria que sea posterior a startDate
    // ...
    return "Fecha aleatoria generada después de " # startDate;
  };

  func generateUniqueID() : Text {
    // Lógica para generar una ID única
    // ...
    return "ID única generada";
  };

  public func showPurchaseConfirmation(ticket: AirlineTicket) : Text {
    return "¡Su boleto ha sido comprado con éxito! Su ID de boleto es: " # ticket.ticketID;
  };
};*/

/*actor AirlineTicketActor {

  type AirlineTicket = {
    name: Text;
    age: Nat;
    originCity: Text;
    destinationCity: Text;
    departureDate: Text;
    returnDate: Text; // Keep as Text, but handle cases properly
    ticketID: Text;
  };

  public func fillAirlineTicketForm(name: Text, age: Nat, originCity: Text, destinationCity: Text, isRoundTrip: Bool) : AirlineTicket {
    let departureDate = generateRandomDate();
    let returnDate = if (isRoundTrip) {
      generateRandomDateAfter(departureDate); // Generate a date after the departure date
    } else {
      ""; // Use an empty string to indicate that there is no return date
    };
    let ticketID = generateUniqueID();
    return {
      name = name;
      age = age;
      originCity = originCity;
      destinationCity = destinationCity;
      departureDate = departureDate;
      returnDate = returnDate;
      ticketID = ticketID;
    };
  };

  func generateRandomDate() : Text {
    // Logic to generate random dates
    // ...
    return "Random date generated"; // Placeholder return value
  };

  func generateRandomDateAfter(startDate: Text) : Text {
    // Logic to generate a random date that is after startDate
    // ...
    return "Random date generated after " + startDate; // Corrected concatenation
  };

  func generateUniqueID() : Text {
    // Logic to generate a unique ID
    // ...
    return "Unique ID generated"; // Placeholder return value
  };

  public func showPurchaseConfirmation(ticket: AirlineTicket) : Text {
    return "Your ticket has been successfully purchased! Your ticket ID is: " + ticket.ticketID; // Corrected concatenation
  };
};*/

/*actor AirlineTicketActor {

  type AirlineTicket = {
    name: Text;
    age: Nat;
    originCity: Text;
    destinationCity: Text;
    departureDate: Text;
    returnDate: Text;
    ticketID: Text;
  };

  public func fillAirlineTicketForm(name: Text, age: Nat, originCity: Text, destinationCity: Text, departureDate: Text, returnDate: Text, ticketID: Text) = AirlineTicket  {
    return {
      name = name;
      age = age;
      originCity = originCity;
      destinationCity = destinationCity;
      departureDate = departureDate;
      returnDate = returnDate;
      ticketID = ticketID;
    };
  };

  public func showPurchaseConfirmation(ticket: AirlineTicket) : Text {
    return "¡Su boleto ha sido comprado con éxito! Su ID de boleto es: " # ticket.ticketID;
  };
};*/


actor AirlineticketActor {

  type Airlineticket = {
    name: Text;
    age: Nat;
    originCity: Text;
    destinationCity: Text;
    departureDate: Text;
    returnDate: Text;
    ticketID: Text;
  };

  public func fillAirlineTicketForm(name: Text, age: Nat, originCity: Text, destinationCity: Text, isRoundTrip: Bool) : async Airlineticket {
    let departureDate = generateRandomDate();
    let ticketID = generateUniqueID();
    return {
      name = name;
      age = age;
      originCity = originCity;
      destinationCity = destinationCity;
      departureDate = departureDate;
      returnDate = generateRandomDate();
      ticketID = ticketID;
    };
  };

  func generateRandomDate() : Text {
    // Lógica para generar fechas aleatorias
    // ...
    return "Fecha aleatoria generada";
  };

  func generateUniqueID() : Text {
    // Lógica para generar una ID única
    // ...
    return "ID única generada";
  };

  public func showPurchaseConfirmation(ticket: Airlineticket) : async Text {
    return "¡Su boleto ha sido comprado con éxito! Su ID de boleto es: " # ticket.ticketID;
  };
}; 